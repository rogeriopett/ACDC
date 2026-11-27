//Atualizacoes:
//2026.11.23 - Opcoes da reforma tributaria: selectGovernamental, selectGovernamentalOp, selectNotaCredito e selectNotaDebito.
export const selectSimNao = [
    { value: "S", label: "SIM" },
    { value: "N", label: "NÃO" }
];

export const selectAtivoInativo = [
    { value: "A", label: "ATIVO" },
    { value: "I", label: "INATIVO" }
];

export const selectAliquotaPor = [
    { value: "E", label: "ESTADO" },
    { value: "P", label: "PRODUTO" }
];

export const selectDiaVencimento = [
    { value: "0", label: "0" },
    { value: "1", label: "1" },
    { value: "2", label: "2" },
    { value: "3", label: "3" },
    { value: "4", label: "4" },
    { value: "5", label: "5" },
    { value: "6", label: "6" },
    { value: "7", label: "7" },
    { value: "8", label: "8" },
    { value: "9", label: "9" },
    { value: "10", label: "10" },
    { value: "11", label: "11" },
    { value: "12", label: "12" },
    { value: "13", label: "13" },
    { value: "14", label: "14" },
    { value: "15", label: "15" },
    { value: "16", label: "16" },
    { value: "17", label: "17" },
    { value: "18", label: "18" },
    { value: "19", label: "19" },
    { value: "20", label: "20" },
    { value: "21", label: "21" },
    { value: "22", label: "22" },
    { value: "23", label: "23" },
    { value: "24", label: "24" },
    { value: "25", label: "25" },
    { value: "26", label: "26" },
    { value: "27", label: "27" },
    { value: "28", label: "28" },
]

export const selectDesoneracao = [
    { value: "00 - NENHUM", label: "00 - NENHUM" },
    { value: "01 - TAXI", label: "01 - TAXI" },
    { value: "02 - DEFICIENTE FISICO", label: "02 - DEFICIENTE FISICO" },
    { value: "03 - PRODUTOR AGROPECUARIO", label: "03 - PRODUTOR AGROPECUARIO" },
    { value: "04 - FROTISTA/LOCADORA", label: "04 - FROTISTA/LOCADORA" },
    { value: "05 - DIPLOMATICO/CONSULAR", label: "05 - DIPLOMATICO/CONSULAR" },
    { value: "06 - UTILITARIOS E MOTOCICLETAS DA AMAZONIA OCIDENTAL E AREAS DE LIVRE COMERCIO", label: "06 - UTILITARIOS E MOTOCICLETAS DA AMAZONIA OCIDENTAL E AREAS DE LIVRE COMERCIO" },
    { value: "07 - SUFRAMA", label: "07 - SUFRAMA" },
    { value: "08 - VENDA A ORGAOS PUBLICOS", label: "08 - VENDA A ORGAOS PUBLICOS" },
    { value: "09 - OUTROS", label: "09 - OUTROS" },
    { value: "10 - DEFICIENTE CONDUTOR", label: "10 - DEFICIENTE CONDUTOR" },
    { value: "11 - DEFICIENTE NAO CONDUTOR", label: "11 - DEFICIENTE NAO CONDUTOR" },
    { value: "12 - ORGAO DE FOMENTO E DESENVOLVIMENTO AGROPECUARIO", label: "12 - ORGAO DE FOMENTO E DESENVOLVIMENTO AGROPECUARIO" },
    { value: "16 - OLIMPIADAS RIO 2016", label: "16 - OLIMPIADAS RIO 2016" },
    { value: "90 - SOLICITACAO DO FISCO", label: "90 - SOLICITACAO DO FISCO" },
];

export const selectEntradaSaida = [
    { value: "E", label: "ENTRADA" },
    { value: "S", label: "SAIDA" }, 
];

export const selectEnquadramento = [
    { value: "SIMPLES NACIONAL", label: "SIMPLES NACIONAL" },
    { value: "LUCRO PRESUMIDO", label: "LUCRO PRESUMIDO" },
    { value: "LUCRO REAL", label: "LUCRO REAL" },
];

export const selectEnquadramentoNum = [
    { value: "1 - SIMPLES NACIONAL", label: "1 - SIMPLES NACIONAL" },
    { value: "2 - LUCRO PRESUMIDO", label: "2 - LUCRO PRESUMIDO" },
    { value: "3 - LUCRO REAL", label: "3 - LUCRO REAL" },
];

export const selectEnquadramentoIss = [
    { value: "1 - MICROEMPRESA MUNICIPAL", label: "1 - MICROEMPRESA MUNICIPAL" },
    { value: "2 - ESTIMATIVA", label: "2 - ESTIMATIVA" },
    { value: "3 - SOCIEDADE DE PROFISSIONAIS", label: "3 - SOCIEDADE DE PROFISSIONAIS" },
    { value: "4 - COOPERATIVA", label: "4 - COOPERATIVA" },
    { value: "5 - MICROEMPRESARIO INDIVIDUAL", label: "5 - MICROEMPRESARIO INDIVIDUAL" },
    { value: "6 - MICROEMPRESARIO E EMPRESA DE PEQUENO PORTE", label: "6 - MICROEMPRESARIO E EMPRESA DE PEQUENO PORTE" },
];

export const selectEspecieDoc = [
    { value: '01 - CH - CHEQUE', label: '01 - CH - CHEQUE' },
    { value: '02 - DM - DUPLICATA MERCANTIL', label: '02 - DM - DUPLICATA MERCANTIL' },
    { value: '03 - DMI - DUPLICATA MERCANTIL P/ INDICACAO', label: '03 - DMI - DUPLICATA MERCANTIL P/ INDICACAO' },
    { value: '04 - DS - DUPLICATA DE SERVICO', label: '04 - DS - DUPLICATA DE SERVICO' },
    { value: '05 - DSI - DUPLICATA DE SERVICO P/ INDICACAO', label: '05 - DSI - DUPLICATA DE SERVICO P/ INDICACAO' },
    { value: '06 - DR - DUPLICATA RURAL', label: '06 - DR - DUPLICATA RURAL' },
    { value: '07 - LC - LETRA DE CAMBIO', label: '07 - LC - LETRA DE CAMBIO' },
    { value: '08 - NCC - NOTA DE CREDITO COMERCIAL', label: '08 - NCC - NOTA DE CREDITO COMERCIAL' },
    { value: '09 - NCE - NOTA DE CREDITO A EXPORTACAO', label: '09 - NCE - NOTA DE CREDITO A EXPORTACAO' },
    { value: '10 - NCI - NOTA DE CREDITO INDUSTRIAL', label: '10 - NCI - NOTA DE CREDITO INDUSTRIAL' },
    { value: '11 - NCR - NOTA DE CREDITO RURAL', label: '11 - NCR - NOTA DE CREDITO RURAL' },
    { value: '12 - NP - NOTA PROMISSORIA', label: '12 - NP - NOTA PROMISSORIA' },
    { value: '13 - NPR - NOTA PROMISSORIA RURAL', label: '13 - NPR - NOTA PROMISSORIA RURAL' },
    { value: '14 - TM - TRIPLICATA MERCANTIL', label: '14 - TM - TRIPLICATA MERCANTIL' },
    { value: '15 - TS - TRIPLICATA DE SERVICO', label: '15 - TS - TRIPLICATA DE SERVICO' },
    { value: '16 - NS - NOTA DE SEGURO', label: '16 - NS - NOTA DE SEGURO' },
    { value: '17 - RC - RECIBO', label: '17 - RC - RECIBO' },
    { value: '18 - FAT - FATURA', label: '18 - FAT - FATURA' },
    { value: '19 - ND - NOTA DE DEBITO', label: '19 - ND - NOTA DE DEBITO' },
    { value: '20 - AP - APOLICE DE SEGURO', label: '20 - AP - APOLICE DE SEGURO' },
    { value: '21 - ME - MENSALIDADE ESCOLAR', label: '21 - ME - MENSALIDADE ESCOLAR' },
    { value: '22 - PC - PARCELA DE CONSORCIO', label: '22 - PC - PARCELA DE CONSORCIO' },
    { value: '23 - NF - NOTA FISCAL', label: '23 - NF - NOTA FISCAL' },
    { value: '24 - DD - DOCUMENTO DE DIVIDA', label: '24 - DD - DOCUMENTO DE DIVIDA' },
    { value: '25 - XX - CEDULA DE PRODUTO RURAL', label: '25 - XX - CEDULA DE PRODUTO RURAL' },
    { value: '26 - XX - WARRANT', label: '26 - XX - WARRANT' },
    { value: '27 - XX - DIVIDA ATIVA DE ESTADO', label: '27 - XX - DIVIDA ATIVA DE ESTADO' },
    { value: '28 - XX - DIVIDA ATIVA DE MUNICIPIO', label: '28 - XX - DIVIDA ATIVA DE MUNICIPIO' },
    { value: '29 - XX - DIVIDA ATIVA DA UNIAO', label: '29 - XX - DIVIDA ATIVA DA UNIAO' },
    { value: '30 - XX - ENCARGOS CONDOMINIAIS', label: '30 - XX - ENCARGOS CONDOMINIAIS' },
    { value: '31 - CC - CARTAO DE CREDITO', label: '31 - CC - CARTAO DE CREDITO' },
    { value: '99 - XX - OUTROS', label: '99 - XX - OUTROS' }
];

export const selectEstadoCivil = [
    { value: "CASADO", label: "CASADO" },
    { value: "DIVORCIADO", label: "DIVORCIADO" },
    { value: "SEPARADO", label: "SEPARADO" },
    { value: "SOLTEIRO", label: "SOLTEIRO" },
    { value: "NAO TEM", label: "NAO TEM" },
];

export const selectFrete = [
    { value: "0 - EMITENTE", label: "0 - EMITENTE" },
    { value: "1 - DEST/REM", label: "1 - DEST/REM" },
    { value: "2 - TERCEIROS", label: "2 - TERCEIROS" },
    { value: "9 - SEM FRETE", label: "9 - SEM FRETE" },
];

export const selectFormaPagamento = [
    { value: "BOLETO", label: "BOLETO" },
    { value: "FATURA", label: "FATURA" },
    { value: "DINHEIRO", label: "DINHEIRO" },
    { value: "CHEQUE", label: "CHEQUE" },
    { value: "CHEQUE-PRE", label: "CHEQUE-PRE" },
    { value: "CARTAO CREDITO", label: "CARTAO CREDITO" },
    { value: "CARTAO DEBITO", label: "CARTAO DEBITO" },
    { value: "DEPOSITO", label: "DEPOSITO" },
    { value: "PIX", label: "PIX" },
    { value: "PONTOS", label: "PONTOS" },
    { value: "PROMISSORIA", label: "PROMISSORIA" },
];

// Reforma tributária: tipo de ente governamental (mesmas opções do Firenet).
export const selectGovernamental = [
    { value: "0 - NENHUM", label: "0 - NENHUM" },
    { value: "1 - UNIAO", label: "1 - UNIAO" },
    { value: "2 - ESTADO", label: "2 - ESTADO" },
    { value: "3 - DISTRITO FEDERAL", label: "3 - DISTRITO FEDERAL" },
    { value: "4 - MUNICIPIO", label: "4 - MUNICIPIO" },
];

// Reforma tributária: tipo de operação com ente governamental (mesmas opções do Firenet).
export const selectGovernamentalOp = [
    { value: "0 - NENHUM", label: "0 - NENHUM" },
    { value: "1 - FORNECIMENTO", label: "1 - FORNECIMENTO" },
    { value: "2 - RECEBIMENTO DE PAGAMENTO", label: "2 - RECEBIMENTO DE PAGAMENTO" },
];

export const selectIndicadorIss = [
    { value: "1 - EXIGIVEL", label: "1 - EXIGIVEL" },
    { value: "2 - NAO INCIDENCIA", label: "2 - NAO INCIDENCIA" },
    { value: "3 - ISENCAO", label: "3 - ISENCAO" },
    { value: "4 - EXPORTACAO", label: "4 - EXPORTACAO" },
    { value: "5 - IMUNIDADE", label: "5 - IMUNIDADE" },
    { value: "6 - EXIGIBILIDADE SUSPENSA POR DECISAO JUDICIAL", label: "6 - EXIGIBILIDADE SUSPENSA POR DECISAO JUDICIAL" },
    { value: "7 - EXIGIBILIDADE SUSPENSA POR PROCESSO ADM.", label: "7 - EXIGIBILIDADE SUSPENSA POR PROCESSO ADM." },
];

export const selectIntermedio = [
    { value: "1 - IMPORTACAO POR CONTA PROPRIA", label: "1 - IMPORTACAO POR CONTA PROPRIA" },
    { value: "2 - IMPORTACAO POR CONTA A ORDEM", label: "2 - IMPORTACAO POR CONTA A ORDEM" },
    { value: "3 - IMPORTACAO POR ENCOMENDA", label: "3 - IMPORTACAO POR ENCOMENDA" },
];

export const selectOrigem = [
    { value: "0 - NACIONAL", label: "0 - NACIONAL" },
    { value: "1 - ESTRANGEIRA - IMPORTACAO DIRETA", label: "1 - ESTRANGEIRA - IMPORTACAO DIRETA" },
    { value: "2 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO", label: "2 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO" },
    { value: "3 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO SUPERIOR A 40% E INFERIOR OU IGUAL A 70%", label: "3 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO SUPERIOR A 40% E INFERIOR OU IGUAL A 70%" },
    { value: "4 - NACIONAL - EM CONFORMIDADE COM PROCESSOS PRODUTIVOS BASICOS", label: "4 - NACIONAL - EM CONFORMIDADE COM PROCESSOS PRODUTIVOS BASICOS" },
    { value: "5 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO INFERIOR OU IGUAL A 40%", label: "5 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO INFERIOR OU IGUAL A 40%" },
    { value: "6 - ESTRANGEIRA - IMPORTACAO DIRETA SEM SIMILAR NACIONAL CONSTANTE EM LISTA DA CAMEX E GAS NATURAL", label: "6 - ESTRANGEIRA - IMPORTACAO DIRETA SEM SIMILAR NACIONAL CONSTANTE EM LISTA DA CAMEX E GAS NATURAL" },
    { value: "7 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO SEM SIMILAR NACIONAL CONSTANTE EM LISTA DA CAMEX E GAS NATURAL", label: "7 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO SEM SIMILAR NACIONAL CONSTANTE EM LISTA DA CAMEX E GAS NATURAL" },
    { value: "8 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO SUPERIOR A 70%", label: "8 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO SUPERIOR A 70%" },
];

export const selectLayoutCnab = [
    { value: "CNAB 240", label: "CNAB 240" },
    { value: "CNAB 400", label: "CNAB 400" },
];

export const selectMeioPagamento = [
    { value: "01 - DINHEIRO", label: "01 - DINHEIRO" },
    { value: "02 - CHEQUE", label: "02 - CHEQUE" },
    { value: "03 - CARTAO DE CREDITO", label: "03 - CARTAO DE CREDITO" },
    { value: "04 - CARTAO DE DEBITO", label: "04 - CARTAO DE DEBITO" },
    { value: "05 - CARTAO LOJA", label: "05 - CARTAO LOJA" },
    { value: "10 - VALE ALIMENTACAO", label: "10 - VALE ALIMENTACAO" },
    { value: "11 - VALE REFEICAO", label: "11 - VALE REFEICAO" },
    { value: "12 - VALE PRESENTE", label: "12 - VALE PRESENTE" },
    { value: "13 - VALE COMBUSTIVEL", label: "13 - VALE COMBUSTIVEL" },
    { value: "15 - BOLETO BANCARIO", label: "15 - BOLETO BANCARIO" },
    { value: "16 - DEPOSITO BANCARIO", label: "16 - DEPOSITO BANCARIO" },
    { value: "17 - PAGAMENTO INSTANTANEO (PIX)", label: "17 - PAGAMENTO INSTANTANEO (PIX)" },
    { value: "18 - TRANSFERENCIA BANCARIA, CARTEIRA DIGITAL", label: "18 - TRANSFERENCIA BANCARIA, CARTEIRA DIGITAL" },
    { value: "19 - PROG. FIDELIDADE, CASHBACK, CREDITO VIRTUAL", label: "19 - PROG. FIDELIDADE, CASHBACK, CREDITO VIRTUAL" },
    { value: "90 - SEM PAGAMENTO", label: "90 - SEM PAGAMENTO" },
    { value: "99 - OUTROS", label: "99 - OUTROS" },
];

export const selectModalidade = [
    { value: "0 - MARGEM VALOR AGREGADO (%)", label: "0 - MARGEM VALOR AGREGADO (%)" },
    { value: "1 - PAUTA (VALOR)", label: "1 - PAUTA (VALOR)" },
    { value: "2 - PRECO TABELADO MAXIMO (VALOR)", label: "2 - PRECO TABELADO MAXIMO (VALOR)" },
    { value: "3 - VALOR DA OPERACAO", label: "3 - VALOR DA OPERACAO" },
];

// Reforma tributária: tipo da nota de crédito (mesmas opções do Firenet).
export const selectNotaCredito = [
    { value: "00 - NENHUM", label: "00 - NENHUM" },
];

// Reforma tributária: tipo da nota de débito (mesmas opções do Firenet).
export const selectNotaDebito = [
    { value: "00 - NENHUM", label: "00 - NENHUM" },
    { value: "01 - TRANSFERENCIA DE CREDITOS PARA COOPERATIVAS", label: "01 - TRANSFERENCIA DE CREDITOS PARA COOPERATIVAS" },
    { value: "02 - ANULACAO DE CREDITO POR SAIDAS IMUNES/ISENTAS", label: "02 - ANULACAO DE CREDITO POR SAIDAS IMUNES/ISENTAS" },
    { value: "03 - DEBITOS DE NOTAS FISCAIS NAO PROCESSADAS NA APURACAO", label: "03 - DEBITOS DE NOTAS FISCAIS NAO PROCESSADAS NA APURACAO" },
    { value: "04 - MULTA E JUROS", label: "04 - MULTA E JUROS" },
    { value: "05 - TRANSFERENCIA DE CREDITO NA SUCESSAO", label: "05 - TRANSFERENCIA DE CREDITO NA SUCESSAO" },
    { value: "06 - PAGAMENTO ANTECIPADO", label: "06 - PAGAMENTO ANTECIPADO" },
    { value: "07 - PERDA EM ESTOQUE", label: "07 - PERDA EM ESTOQUE" },
    { value: "08 - DESENQUADRAMENTO DO SIMPLES NACIONAL", label: "08 - DESENQUADRAMENTO DO SIMPLES NACIONAL" },
];

export const selectModalidadeST = [
    { value: "0 - PRECO TABELADO OU MAXIMO SUGERIDO", label: "0 - PRECO TABELADO OU MAXIMO SUGERIDO" },
    { value: "1 - LISTA NEGATIVA (VALOR)", label: "1 - LISTA NEGATIVA (VALOR)" },
    { value: "2 - LISTA POSITIVA (VALOR)", label: "2 - LISTA POSITIVA (VALOR)" },
    { value: "3 - LISTA NEUTRA (VALOR)", label: "3 - LISTA NEUTRA (VALOR)" },
    { value: "4 - MARGEM VALOR AGREGADO (%)", label: "4 - MARGEM VALOR AGREGADO (%)" },
    { value: "5 - PAUTA (VALOR)", label: "5 - PAUTA (VALOR)" },
    { value: "6 - VALOR DA OPERACAO", label: "6 - VALOR DA OPERACAO" },
];

export const selectPessoa = [
    { value: "F", label: "FISICA" },
    { value: "J", label: "JURIDICA" }
];

export const selectProdutoServico = [
    { value: "P", label: "PRODUTO" },
    { value: "S", label: "SERVIÇO" }
];

export const selectPropriaTerceiros = [
    { value: "P", label: "PRÓPRIA" },
    { value: "T", label: "TERCEIROS" }
];

export const selectStatusEmpresas = [
    { value: "A", label: "ATIVA" }, 
    { value: "I", label: "INATIVA" },
    { value: "N", label: "NOVA" },
];

export const selectStatusVendas = [
    { value: "T", label: "TODOS" },
    { value: "A", label: "ABERTOS" }, 
    { value: "C", label: "CANCELADOS" },
    { value: "F", label: "FINALIZADOS" },
    { value: "I", label: "INUTILIZADOS" },
];

export const selectStatusUsuarios = [
    { value: "A", label: "ATIVO" }, 
    { value: "C", label: "CONFIRMAR" },
    { value: "I", label: "INATIVO" },
];

export const selectTarget = [
    {value: "_self", label: "Abrir na mesma janela" },
    {value: "_blank", label: "Abrir em nova janela" }
];  

export const selectTipoAtendimento = [
    { value: "0 - NAO SE APLICA", label: "0 - NAO SE APLICA" },
    { value: "1 - OPERACAO PRESENCIAL", label: "1 - OPERACAO PRESENCIAL" },
    { value: "2 - OPERACAO NAO PRESENCIAL, PELA INTERNET", label: "2 - OPERACAO NAO PRESENCIAL, PELA INTERNET" },
    { value: "3 - OPERACAO NAO PRESENCIAL, TELEATENDIMENTO", label: "3 - OPERACAO NAO PRESENCIAL, TELEATENDIMENTO" },
    { value: "4 - NFC-E EM OPERACAO COM ENTREGA EM DOMICILIO", label: "4 - NFC-E EM OPERACAO COM ENTREGA EM DOMICILIO" },
    { value: "5 - OPERACAO PRESENCIAL FORA DO ESTABELECIMENTO", label: "5 - OPERACAO PRESENCIAL FORA DO ESTABELECIMENTO" },
    { value: "9 - OPERACAO NAO PRESENCIAL, OUTROS", label: "9 - OPERACAO NAO PRESENCIAL, OUTROS" },
];

export const selectTipoChave = [
    { value: "NENHUMA", label: "NENHUMA" },
    { value: "ALEATORIA", label: "ALEATORIA" },
    { value: "CELULAR", label: "CELULAR" },
    { value: "CNPJ", label: "CNPJ" },
    { value: "CPF", label: "CPF" },
    { value: "EMAIL", label: "EMAIL" },
];

export const selectTipoCobranca = [
    { value: 'NENHUM', label: 'NENHUM' },
    { value: 'SICOB', label: 'SICOB' },
    { value: 'SIGCB', label: 'SIGCB' },
];

export const selectTipoConsumidor = [
    { value: "0 - NORMAL", label: "0 - NORMAL" },
    { value: "1 - CONSUMIDOR FINAL", label: "1 - CONSUMIDOR FINAL" },
];

export const selectTipoDocto = [
    { value: "APLICACAO", label: "APLICACAO" }, 
    { value: "BOLETO", label: "BOLETO" }, 
    { value: "CHEQUE", label: "CHEQUE" }, 
    { value: "CHEQUE-PRE", label: "CHEQUE-PRE" }, 
    { value: "CONTA", label: "CONTA" }, 
    { value: "CARTAO DEBITO", label: "CARTAO DEBITO" }, 
    { value: "CARTAO CREDITO", label: "CARTAO CREDITO" }, 
    { value: "CUPOM FISCAL", label: "CUPOM FISCAL" },
    { value: "DEPOSITO", label: "DEPOSITO" },
    { value: "DINHEIRO", label: "DINHEIRO" },
    { value: "DUPLICATA", label: "DUPLICATA" },
    { value: "FATURA", label: "FATURA" },
    { value: "JUROS", label: "JUROS" },
    { value: "MULTA", label: "MULTA" },
    { value: "PIX", label: "PIX" },
    { value: "PONTOS", label: "PONTOS" },
    { value: "PROMISSORIA", label: "PROMISSORIA" },
    { value: "PROMISSORIA", label: "PROMISSORIA" },
    { value: "RECIBO", label: "RECIBO" },
    { value: "RESGATE APLICACAO", label: "RESGATE APLICACAO" },
    { value: "RESGATE POUPANCA", label: "RESGATE POUPANCA" },
    { value: "SALARIO", label: "SALARIO" },
    { value: "TARIFA", label: "TARIFA" },
    { value: "TITULO", label: "TITULO" },
    { value: "TRANSFERENCIA", label: "TRANSFERENCIA" },
    { value: "VALE", label: "VALE" },
    { value: "OUTROS", label: "OUTROS" },
];

export const selectTipoItem = [
    { value: "00 - MERCADORIA PARA REVENDA", label: "00 - MERCADORIA PARA REVENDA" },
    { value: "01 - MATERIA-PRIMA", label: "01 - MATERIA-PRIMA" },
    { value: "02 - EMBALAGEM", label: "02 - EMBALAGEM" },
    { value: "03 - PRODUTO EM PROCESSO", label: "03 - PRODUTO EM PROCESSO" },
    { value: "04 - PRODUTO ACABADO", label: "04 - PRODUTO ACABADO" },
    { value: "05 - SUBPRODUTO", label: "05 - SUBPRODUTO" },
    { value: "06 - PRODUTO INTERMEDIARIO", label: "06 - PRODUTO INTERMEDIARIO" },
    { value: "07 - MATERIAL DE USO E CONSUMO", label: "07 - MATERIAL DE USO E CONSUMO" },
    { value: "08 - ATIVO IMOBILIZADO", label: "08 - ATIVO IMOBILIZADO" },
    { value: "09 - SERVICOS", label: "09 - SERVICOS" },
    { value: "10 - OUTROS INSUMOS", label: "10 - OUTROS INSUMOS" },
    { value: "99 - OUTROS", label: "99 - OUTROS" },
];

export const selectTipoOperacao = [
    { value: "1 - OPERACAO INTERNA", label: "1 - OPERACAO INTERNA" },
    { value: "2 - OPERACAO INTERESTADUAL", label: "2 - OPERACAO INTERESTADUAL" },
    { value: "3 - OPERACAO COM EXTERIOR", label: "3 - OPERACAO COM EXTERIOR" },
];

export const selectViaTransporte = [
    { value: "01 - MARITIMA", label: "01 - MARITIMA" },
    { value: "02 - FLUVIAL", label: "02 - FLUVIAL" },
    { value: "03 - LACUSTRE", label: "03 - LACUSTRE" },
    { value: "04 - AEREA", label: "04 - AEREA" },
    { value: "05 - POSTAL", label: "05 - POSTAL" },
    { value: "06 - FERROVIARIA", label: "06 - FERROVIARIA" },
    { value: "07 - RODOVIARIA", label: "07 - RODOVIARIA" },
    { value: "08 - CONDUTO/REDE TRANSMISSAO", label: "08 - CONDUTO/REDE TRANSMISSAO" },
    { value: "09 - MEIOS PROPRIOS", label: "09 - MEIOS PROPRIOS" },
    { value: "10 - ENTRADA/SAIDA FICTA", label: "10 - ENTRADA/SAIDA FICTA" },
    { value: "11 - COURIER", label: "11 - COURIER" },
    { value: "12 - HANDCARRY", label: "12 - HANDCARRY" },
    { value: "13 - POR REBOQUE", label: "13 - POR REBOQUE" },
];
