# Gera 02_dicionario.md e 03_relacionamentos.md a partir do metadata extraído pelo IBExpert.
# Uso:  powershell -ExecutionPolicy Bypass -File ferramentas\gerar_contexto.ps1 -Dir C:\Runtime\Firenet\IAsmin
# Rodar de novo sempre que o banco mudar (extraia o DDL_Banco.sql atualizado antes).
param($Dir = (Split-Path $PSScriptRoot -Parent))
$lines = Get-Content (Join-Path $Dir 'DDL_Banco.sql') -Encoding Default
$text  = $lines -join "`n"

# Colunas que NUNCA vão para a IA (senhas, tokens, chaves, licenças).
# Manter esta lista igual a COLUNAS_BLOQUEADAS em Firenet\Units\IasminValidadorSQL.pas.
$bloqueadas = @(
  'CLI_PASSWORD','USU_PASSWORD','SER_SENHAONLINE','EMC_SENHA','EMP_NOSSOSITESENHA','EMP_SUPERSENHA',
  'CON_CLIENTID','CON_CLIENTSECRET','CON_KEYUSER',
  'PAR_APIBRASILDEVICETOKEN','PAR_APIBRASILSENHA','PAR_LICENCADLL','PAR_LICENCADLLCTE','PAR_LICENCADLLMDFE',
  'PAR_PROXYPASSWORD','PAR_SENHACERTIFICADO','PAR_SERIALCERTIFICADO','PAR_ZAPSENHA',
  'ZIN_CLIENTTOKEN','ZIN_INSTANCIATOKEN','ZIN_WEBHOOKTOKEN'
)
# Tabelas sem acesso para o usuário IA_LEITURA (sql\criar_usuario_leitura.sql).
# Manter igual a TABELAS_BLOQUEADAS em Firenet\Units\IasminValidadorSQL.pas.
$tabelasExcluidas = @('PARAMETROS','EMPRESA','EMAILSCONTAS','ZAPINSTANCIAS','USUARIOS','ACESSOS','SQLS','IASMIN','IASMINLOGS')

# --- Domínios
$dom = @{}
foreach ($m in [regex]::Matches($text, '(?s)CREATE DOMAIN (\w+) AS\s*\n(.*?);')) {
  $def = ($m.Groups[2].Value -replace '\s+', ' ').Trim()
  $nn  = $def -match 'NOT NULL'
  $tipo = ($def -replace '\s*NOT NULL', '').Trim()
  $tipo = $tipo -replace 'BLOB SUB_TYPE TEXT.*', 'BLOB TEXT' -replace 'BLOB SUB_TYPE BINARY.*', 'BLOB BINARY'
  $dom[$m.Groups[1].Value] = @{ Tipo = $tipo; NN = $nn }
}

# --- Tabelas
$tabs = [ordered]@{}
foreach ($m in [regex]::Matches($text, '(?s)CREATE TABLE (\w+) \((.*?)\n\);')) {
  $cols = @()
  foreach ($c in ($m.Groups[2].Value -split "`n")) {
    if ($c -match '^\s+(\w+)\s+(\w+)(.*?),?\s*$') {
      $nome = $Matches[1]; $dn = $Matches[2]; $resto = $Matches[3]
      if ($bloqueadas -contains $nome) { continue }
      $d = $dom[$dn]
      $tipo = if ($d) { $d.Tipo } else { $dn }
      # Domínio DN_MONEY = valor em dinheiro (R$). DN_VALOR (mesmo tipo) = quantidade, percentual, alíquota etc.
      if ($dn -eq 'DN_MONEY') { $tipo += ' [R$]' }
      $nn = ($d -and $d.NN) -or ($resto -match 'NOT NULL')
      $cols += [pscustomobject]@{ Nome = $nome; Tipo = $tipo; NN = $nn }
    }
  }
  if ($tabelasExcluidas -notcontains $m.Groups[1].Value) { $tabs[$m.Groups[1].Value] = $cols }
}

# --- PK, FK, índices únicos, comentários
$pk = @{}
foreach ($m in [regex]::Matches($text, 'ALTER TABLE (\w+) ADD CONSTRAINT \w+ PRIMARY KEY \(([^)]+)\)')) {
  $pk[$m.Groups[1].Value] = ($m.Groups[2].Value -split ',\s*')
}
$fks = @()
foreach ($m in [regex]::Matches($text, 'ALTER TABLE (\w+) ADD CONSTRAINT \w+ FOREIGN KEY \(([^)]+)\) REFERENCES (\w+) \(([^)]+)\)([^;]*);')) {
  $fks += [pscustomobject]@{ Tab = $m.Groups[1].Value; Col = $m.Groups[2].Value; RefTab = $m.Groups[3].Value; RefCol = $m.Groups[4].Value
                             Cascade = $m.Groups[5].Value -match 'ON DELETE CASCADE'; SetNull = $m.Groups[5].Value -match 'ON DELETE SET NULL' }
}
$fks = @($fks | Where-Object { $tabs.Contains($_.Tab) -and $tabs.Contains($_.RefTab) })
$fkIdx = @{}; foreach ($f in $fks) { $fkIdx["$($f.Tab).$($f.Col)"] = $f }
$uniq = @{}
foreach ($m in [regex]::Matches($text, 'CREATE UNIQUE (?:DESCENDING )?INDEX \w+ ON (\w+) \(([^)]+)\)')) {
  $cs = $m.Groups[2].Value -split ',\s*'
  if ($cs.Count -eq 1) { $uniq["$($m.Groups[1].Value).$($cs[0])"] = 'UNIQUE' }
  else { foreach ($c in $cs) { $uniq["$($m.Groups[1].Value).$c"] = "UNIQUE(" + ($cs -join ',') + ")" } }
}
$tcom = @{}; foreach ($m in [regex]::Matches($text, "(?s)COMMENT ON TABLE (\w+) IS\s*\n'(.*?)';")) { $tcom[$m.Groups[1].Value] = ($m.Groups[2].Value -replace '\s+', ' ') }
$ccom = @{}; foreach ($m in [regex]::Matches($text, "(?s)COMMENT ON COLUMN (\w+\.\w+) IS\s*\n'(.*?)';")) { $ccom[$m.Groups[1].Value] = ($m.Groups[2].Value -replace '\s+', ' ').ToLower() }

$enc = New-Object System.Text.UTF8Encoding $false

# ================= 02_dicionario.md =================
$sb = New-Object System.Text.StringBuilder
function L($s) { [void]$sb.AppendLine($s) }
$nCols = ($tabs.Values | % { $_.Count } | Measure-Object -Sum).Sum
L '# Dicionário de dados — banco Firebird'
L ''
L "Contexto para IA. Todas as tabelas ($($tabs.Count)) e colunas ($nCols) do banco Firebird (dialeto 3, charset WIN1252), extraídas do metadata (``DDL_Banco.sql``). Use somente nomes de tabelas e colunas que aparecem aqui. Relacionamentos detalhados em ``03_relacionamentos.md``."
L ''
L '## Como ler'
L ''
L '- Formato: `COLUNA TIPO [R$] [NOT NULL] [PK] [UNIQUE] [→ TABELA.COLUNA] [— comentário]`.'
L '- `[R$]` = valor em dinheiro; `PK` = chave primária; `→` = chave estrangeira; `UNIQUE` = índice único.'
L '- Toda coluna tem o prefixo de 3 letras da tabela (ex.: `CLIENTES` → `CLI_`). A chave primária quase sempre é `<PREFIXO>_CODIGO` (INTEGER).'
L '- Colunas INTEGER com nome de entidade (ex.: `VED_CLIENTE`) guardam o código dessa entidade, mesmo quando não há `→` declarado.'
L ''
L '## Convenções e tipos'
L ''
L '- `NUMERIC(18,8) [R$]`: valor em dinheiro (preço, custo, total, saldo, valor de parcela, comissão em reais etc.). Apresente com `ROUND(..., 2)` e liste no campo `moeda` da resposta.'
L '- `NUMERIC(18,8)` sem `[R$]`: quantidade, alíquota, percentual (guardado como número, ex.: 18 = 18%), fator ou índice. Nunca é dinheiro; não liste no campo `moeda`. `NUMERIC(10,3)`: pesos.'
L '- `VARCHAR(1)`: flag/situação (ex.: `_STATUS`, `S`/`N`, `E`/`S` em `_ENTRADASAIDA`).'
L '- `BLOB TEXT`: texto longo (observações, memos). `BLOB BINARY`: imagem/arquivo, não usar em filtros.'
L '- Data e hora ficam em colunas separadas (`DATE` + `TIME`). Atenção: algumas colunas de data/hora são `VARCHAR` (ex.: `VARCHAR(30)`, `VARCHAR(8)`) e guardam texto, não datas.'
L '- Auditoria, presente em quase todas as tabelas: `_DTCADASTRO`/`_HRCADASTRO` (inclusão), `_DTATUALIZACAO`/`_HRATUALIZACAO` (última alteração), `_USUARIO` (login de quem gravou, VARCHAR(20)).'
L '- Colunas de senha, token, chave de API e licença foram omitidas de propósito e são bloqueadas pelo sistema. Nunca as use nem tente adivinhar seus nomes.'
L '- Códigos novos vêm de generators `GEN_<TABELA>` (ex.: `GEN_ID(GEN_CLIENTES, 1)`).'
L '- SQL Firebird: `SELECT FIRST n SKIP m` (ou `ROWS`) em vez de `LIMIT`; datas literais `''2026-01-31''`; concatenação com `||`; `CURRENT_DATE`, `EXTRACT(YEAR FROM ...)`; sem `ILIKE` (use `UPPER(...) LIKE` ou `CONTAINING`).'
L ''
L "## Tabelas ($($tabs.Count))"
L ''
L (($tabs.Keys) -join ', ')
foreach ($t in $tabs.Keys) {
  $cols = $tabs[$t]
  $pref = ($cols[0].Nome -split '_')[0]
  L ''
  $h = "### $t (``$($pref)_``)"
  if ($tcom[$t]) { $h += " — $($tcom[$t])" }
  L $h
  if (-not $pk[$t]) { L ''; L '_Sem chave primária declarada._' }
  elseif ($pk[$t].Count -gt 1) { L ''; L "PK composta: $($pk[$t] -join ', ')" }
  L ''
  foreach ($c in $cols) {
    $k = "$t.$($c.Nome)"
    $s = "- $($c.Nome) $($c.Tipo)"
    if ($c.NN) { $s += ' NOT NULL' }
    if ($pk[$t] -and $pk[$t].Count -eq 1 -and $pk[$t][0] -eq $c.Nome) { $s += ' PK' }
    if ($uniq[$k]) { $s += " $($uniq[$k])" }
    if ($fkIdx[$k]) { $s += " → $($fkIdx[$k].RefTab).$($fkIdx[$k].RefCol)" }
    if ($ccom[$k]) { $s += " — $($ccom[$k])" }
    L $s
  }
}
[IO.File]::WriteAllText((Join-Path $Dir '02_dicionario.md'), $sb.ToString(), $enc)

# ================= 03_relacionamentos.md =================
$sb = New-Object System.Text.StringBuilder
L '# Relacionamentos (chaves estrangeiras) — banco Firebird'
L ''
L 'Contexto para IA. Ligações entre tabelas para montar JOINs, extraídas do metadata (`DDL_Banco.sql`). Tipos e demais colunas em `02_dicionario.md`.'
L ''
L '## Como ler'
L ''
L '- `COLUNA → TABELA_REF.COLUNA_REF`: o valor de `COLUNA` é o código de um registro em `TABELA_REF`.'
L '- JOIN correspondente: `... FROM VENDAS V JOIN CLIENTES C ON C.CLI_CODIGO = V.VED_CLIENTE`.'
L '- `[cascade]`: apagar o registro referenciado apaga também os registros desta tabela (ON DELETE CASCADE). `[set null]`: a coluna vira NULL. Sem marca: o banco impede apagar o referenciado enquanto houver vínculo.'
L '- Quando a coluna aceita NULL, use `LEFT JOIN` para não perder registros sem vínculo.'
L '- Colunas que não aparecem aqui não têm chave estrangeira declarada, mesmo que o nome sugira (ex.: `_USUARIO` é VARCHAR com o login, não código).'
L ''
L "## Por tabela de origem ($($fks.Count) relacionamentos)"
foreach ($g in ($fks | Sort-Object Tab, Col | Group-Object Tab)) {
  L ''
  L "### $($g.Name)"
  L ''
  foreach ($x in $g.Group) {
    $s = "- $($x.Col) → $($x.RefTab).$($x.RefCol)"
    if ($x.Cascade) { $s += ' [cascade]' } elseif ($x.SetNull) { $s += ' [set null]' }
    L $s
  }
}
L ''
L '## Tabelas mais referenciadas'
L ''
L 'Quem aponta para cada tabela (útil para achar "todos os registros ligados a X").'
foreach ($g in ($fks | Group-Object RefTab | Sort-Object Count -Descending | Where-Object Count -ge 3)) {
  L ''
  L "### $($g.Name) ($($g.Count))"
  L ''
  L (($g.Group | Sort-Object Tab, Col | % { "$($_.Tab).$($_.Col)" }) -join ', ')
}
[IO.File]::WriteAllText((Join-Path $Dir '03_relacionamentos.md'), $sb.ToString(), $enc)

"tabelas=$($tabs.Count) colunas=$nCols dominios=$($dom.Count) pks=$($pk.Count) fks=$($fks.Count) unique=$($uniq.Count) comentarios=$($ccom.Count)+$($tcom.Count)"
"sem PK: " + (($tabs.Keys | ? { -not $pk[$_] }) -join ', ')
"PK composta: " + (($pk.Keys | ? { $pk[$_].Count -gt 1 }) -join ', ')
"dominio desconhecido: " + (($tabs.Values | % { $_ } | ? { $_.Tipo -like 'DN_*' } | % Nome) -join ', ')
"tipos: " + (($tabs.Values | % { $_ } | Group-Object Tipo | Sort Count -Desc | % { "$($_.Name)=$($_.Count)" }) -join '; ')
