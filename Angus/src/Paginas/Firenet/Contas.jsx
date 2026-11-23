import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import BancosLoc from '../../Componentes/Localizadores/BancosLoc';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { selectAtivoInativo, selectEspecieDoc, selectLayoutCnab, selectSimNao, selectTipoChave, selectTipoCobranca }from '../../Combox'; 
import { formatarDataStr, formatarDataStr2, formatarMoeda, getFoneMask } from '../../Funcoes';
import { useLocalizar, BANCOS } from '../../Hooks/useLocalizar';

const mapaBancos = { CON_BANCO: 'BAN_CODIGO', BAN_NOME: 'BAN_NOME' };

function Contas() {
    const { logout } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/contas', 'Contas listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ CON_CODIGO: '', CON_NOME: '' });
    const vazio = {
        CON_AGENCIA: '',
        CON_AGENCIADIGITO: '',
        CON_ATUALIZAR: '',
        CON_BAIXACODIGO: '',
        CON_BANCO: '',
        CON_CARTEIRA: '',
        CON_CARTEIRACOD: '',
        CON_CEDENTE: '',
        CON_CEDENTEDIGITO: '',
        CON_CEDENTENOME: '',
        CON_CHAVEPIX: '',
        CON_CHAVEPIXTIPO: 'NENHUMA',
        CON_CLIENTID: '',
        CON_CLIENTSECRET: '',
        CON_CNPJ: '',
        CON_CODIGO: '',
        CON_CONTA: '',
        CON_CONTADIGITO: '',
        CON_CONTATO: '',
        CON_CONVENIO: '',
        CON_DIASBAIXA: '',
        CON_DIASPROTESTO: '',
        CON_DTATUALIZACAO: '',
        CON_DTCADASTRO: '',
        CON_ESPECIE: '',
        CON_ESPECIEDOC: '03 - DMI - DUPLICATA MERCANTIL P/ INDICACAO',
        CON_FONE1: '(00) 00000-0000',
        CON_FONE2: '(00) 00000-0000',
        CON_INSTRUCAO1: '',
        CON_INSTRUCAO2: '',
        CON_INSTRUCAO3: '',
        CON_INSTRUCAO4: '',
        CON_INSTRUCAO5: '',
        CON_KEYUSER: '',
        CON_LAYOUT: 'CNAB240',
        CON_LOCALPAGTO: '',
        CON_MODALIDADE: '',
        CON_MORACODIGO: '',
        CON_MORAJUROS: '',
        CON_MULTA: '',
        CON_NOME: '',
        CON_NOSSONUMDIGITOS: '',
        CON_NOSSONUMFORMATAR: 'N',
        CON_PROTESTOCODIGO: '',
        CON_SALDO: '0',
        CON_STATUS: 'A',
        CON_TIPOCOBRANCA: 'NENHUM',
        CON_USUARIO: '',
        CON_VALORBOLETO: '0',
    };
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: conta,
        salvar,
        setOperacao,
        setRegistro: setConta,
        visualizar,
    } = useTabela('firenet/contas', vazio, 'CON_CODIGO', 'CON_NOME');

    const [ showBancosLoc, setShowBancosLoc ] = useState(false);

    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(conta, () => listar(pesquisa, true));
    const hEditar    = () => editar(conta);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { CON_CODIGO: '', CON_NOME: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.CON_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Contas" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={conta.CON_USUARIO} data={conta.CON_DTATUALIZACAO} hora={conta.CON_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregando}/>
                <PettIf condicional={!carregando}>
                    <div className="row g-1 mb-3">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="CON_CODIGO" value={conta.CON_CODIGO} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="CON_DTCADASTRO" value={formatarDataStr(conta.CON_DTCADASTRO)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="STATUS" name="CON_STATUS" value={conta.CON_STATUS} set={setConta} readOnly={disableFields} disabled={disableFields} options={selectAtivoInativo}/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="SALDO" name="CON_SALDO" value={conta.CON_SALDO} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="NOME" name="CON_NOME" value={conta.CON_NOME} set={setConta} readOnly={disableFields} disabled={disableFields} length="50"/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="BANCO" name="CON_BANCO" value={conta.CON_BANCO} set={setConta} onClick={() => setShowBancosLoc(true)} onBlur={(e) => localizar(BANCOS, e.target.value, setConta, mapaBancos)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME BANCO" name="BAN_NOME" value={conta.BAN_NOME} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="AGENCIA" name="CON_AGENCIA" value={conta.CON_AGENCIA} set={setConta} readOnly={disableFields} disabled={disableFields} length="10"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="AGENCIA DÍGITO" name="CON_AGENCIADIGITO" value={conta.CON_AGENCIADIGITO ?? ''} set={setConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CONTA" name="CON_CONTA" value={conta.CON_CONTA} set={setConta} readOnly={disableFields} disabled={disableFields} length="15"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CONTA DÍGITO" name="CON_CONTADIGITO" value={conta.CON_CONTADIGITO ?? ''} set={setConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="CNPJ BANCO" name="CON_CNPJ" value={conta.CON_CNPJ} set={setConta} readOnly={disableFields} disabled={disableFields} mask="99.999.999/9999-99"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CONTATO" name="CON_CONTATO" value={conta.CON_CONTATO} set={setConta} readOnly={disableFields} disabled={disableFields} length="80"/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="FONE 01" name="CON_FONE1" value={conta.CON_FONE1} set={setConta} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(conta.CON_FONE1)}/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="FONE 02" name="CON_FONE2" value={conta.CON_FONE2} set={setConta} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(conta.CON_FONE2)}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-12" label="CONVÊNIO" name="CON_CONVENIO" value={conta.CON_CONVENIO} set={setConta} readOnly={disableFields} disabled={disableFields} length="20"/>
                    </div>

                    <strong>Configurações Boleto</strong>
                    <div className="row mb-3 g-1 mt-1">
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="NOME CEDENTE" name="CON_CEDENTENOME" value={conta.CON_CEDENTENOME} set={setConta} readOnly={disableFields} disabled={disableFields} length="80"/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="LOCAL PAGTO" name="CON_LOCALPAGTO" value={conta.CON_LOCALPAGTO} set={setConta} readOnly={disableFields} disabled={disableFields} length="120" upper={false}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="INSTRUÇÃO 1" name="CON_INSTRUCAO1" value={conta.CON_INSTRUCAO1} set={setConta} readOnly={disableFields} disabled={disableFields} length="100" upper={false}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="INSTRUÇÃO 2" name="CON_INSTRUCAO2" value={conta.CON_INSTRUCAO2} set={setConta} readOnly={disableFields} disabled={disableFields} length="100" upper={false}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="INSTRUÇÃO 3" name="CON_INSTRUCAO3" value={conta.CON_INSTRUCAO3} set={setConta} readOnly={disableFields} disabled={disableFields} length="100" upper={false}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="INSTRUÇÃO 4" name="CON_INSTRUCAO4" value={conta.CON_INSTRUCAO4} set={setConta} readOnly={disableFields} disabled={disableFields} length="100" upper={false}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="INSTRUÇÃO 5" name="CON_INSTRUCAO5" value={conta.CON_INSTRUCAO5} set={setConta} readOnly={disableFields} disabled={disableFields} length="100" upper={false}/>
                        <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="ESPÉCIE DOC." name="CON_ESPECIEDOC" value={conta.CON_ESPECIEDOC} set={setConta} readOnly={disableFields} disabled={disableFields} options={selectEspecieDoc}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CARTEIRA" name="CON_CARTEIRA" value={conta.CON_CARTEIRA} set={setConta} readOnly={disableFields} disabled={disableFields} length="10"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO CARTEIRA" name="CON_CARTEIRACOD" value={conta.CON_CARTEIRACOD ?? ''} set={setConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="TIPO COBRANÇA" name="CON_TIPOCOBRANCA" value={conta.CON_TIPOCOBRANCA} set={setConta} readOnly={disableFields} disabled={disableFields} options={selectTipoCobranca}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ESPÉCIE" name="CON_ESPECIE" value={conta.CON_ESPECIE} set={setConta} readOnly={disableFields} disabled={disableFields} length="5"/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="% MULTA" name="CON_MULTA" value={conta.CON_MULTA} set={setConta} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="% JUROS" name="CON_MORAJUROS" value={conta.CON_MORAJUROS} set={setConta} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO MORA" name="CON_MORACODIGO" value={conta.CON_MORACODIGO} set={setConta} readOnly={disableFields} disabled={disableFields} length="5"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MODALIDADE" name="CON_MODALIDADE" value={conta.CON_MODALIDADE ?? ''} set={setConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO PROTESTO" name="CON_PROTESTOCODIGO" value={conta.CON_PROTESTOCODIGO ?? ''} set={setConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DIAS PROTESTO" name="CON_DIASPROTESTO" value={conta.CON_DIASPROTESTO ?? ''} set={setConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO BAIXA/DEV." name="CON_BAIXACODIGO" value={conta.CON_BAIXACODIGO ?? ''} set={setConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DIAS PARA BAIXA/DEV." name="CON_DIASBAIXA" value={conta.CON_DIASBAIXA ?? ''} set={setConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO CEDENTE" name="CON_CEDENTE" value={conta.CON_CEDENTE} set={setConta} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CEDENTE DÍGITO" name="CON_CEDENTEDIGITO" value={conta.CON_CEDENTEDIGITO ?? ''} set={setConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DÍGITOS NOSSO NUM." name="CON_NOSSONUMDIGITOS" value={conta.CON_NOSSONUMDIGITOS ?? ''} set={setConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="FORMATAR NOSSO NUM." name="CON_NOSSONUMFORMATAR" value={conta.CON_NOSSONUMFORMATAR} set={setConta} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR BOLETO" name="CON_VALORBOLETO" value={conta.CON_VALORBOLETO} set={setConta} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="LAYOUT CNAB" name="CON_LAYOUT" value={conta.CON_LAYOUT} set={setConta} readOnly={disableFields} disabled={disableFields} options={selectLayoutCnab}/>
                    </div>

                    <strong>Configurações PIX</strong>
                    <div className="row mb-5 g-1 mt-1">
                        <PettFieldDrop size="col-lg-3 col-md-4 col-sm-6" label="TIPO CHAVE" name="CON_CHAVEPIXTIPO" value={conta.CON_CHAVEPIXTIPO} set={setConta} readOnly={disableFields} disabled={disableFields} options={selectTipoChave}/>
                        <PettFieldText size="col-lg-3 col-md-4 col-sm-6" label="CHAVE PIX" name="CON_CHAVEPIX" value={conta.CON_CHAVEPIX} set={setConta} readOnly={disableFields} disabled={disableFields} length={50}/>
                        <PettFieldText size="col-lg-3 col-md-4 col-sm-6" label="CLIENT ID" name="CON_CLIENTID" value={conta.CON_CLIENTID} set={setConta} readOnly={disableFields} disabled={disableFields} length={300}/>
                        <PettFieldText size="col-lg-3 col-md-4 col-sm-6" label="CLIENT SECRET" name="CON_CLIENTSECRET" value={conta.CON_CLIENTSECRET} set={setConta} readOnly={disableFields} disabled={disableFields} length={300}/>
                        <PettFieldText size="col-lg-3 col-md-4 col-sm-6" label="KEY USER" name="CON_KEYUSER" value={conta.CON_KEYUSER} set={setConta} readOnly={disableFields} disabled={disableFields} length={300}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="CON_CODIGO" value={pesquisa.CON_CODIGO} set={setPesquisa} />
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO" name="CON_NOME" value={pesquisa.CON_NOME} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="CON_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="CON_NOME" header="Nome" sortable ></PettColumn>
                    <PettColumn field="CON_AGENCIA" header="Agência" sortable align="right" alignHeader="right" ></PettColumn>
                    <PettColumn field="CON_CONTA" header="Conta" sortable align="right" alignHeader="right" ></PettColumn>
                    <PettColumn field="CON_SALDO" header="Saldo" body={(rowData) => formatarMoeda(rowData,'CON_SALDO')} sortable align="right" alignHeader="right" ></PettColumn>
                    <PettColumn field="CON_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'CON_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="CON_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'CON_DTATUALIZACAO')} sortable align="center" alignHeader="center" ></PettColumn>
                    <PettColumn field="CON_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
        <BancosLoc showModal={showBancosLoc} onCloseModal={(data) => { selecionar(data, setConta, mapaBancos); setShowBancosLoc(false); }}/>
    </>
}

export default Contas;