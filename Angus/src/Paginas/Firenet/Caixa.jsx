import React, { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor.jsx';
import BarraOpcoes from '../../Componentes/BarraOpcoes.jsx';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ClientesLoc from '../../Componentes/Localizadores/ClientesLoc';
import ContasLoc from '../../Componentes/Localizadores/ContasLoc';
import ColunaCentral from '../../Componentes/ColunaCentral';
import FornecedoresLoc from '../../Componentes/Localizadores/FornecedoresLoc';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import VendedoresLoc from '../../Componentes/Localizadores/VendedoresLoc';
import { selectEntradaSaida, selectTipoDocto } from '../../Combox';
import { primeiroDiaMesPassado, ultimoDiaMesSeguinte, formatarDataFb, formatarDataStr, formatarMoeda, tratarCatch, formatarDataStr2 } from '../../Funcoes';
import { useLocalizar, CLIENTES, CONTAS, FORNECEDORES, VENDEDORES } from '../../Hooks/useLocalizar';

const mapaClientes     = { CAI_CLIENTE: 'CLI_CODIGO', CAI_CLIENTENOME: 'CLI_NOME' };
const mapaContas       = { CAI_CONTA: 'CON_CODIGO', CON_NOME: 'CON_NOME' };
const mapaFornecedores = { CAI_FORNECEDOR: 'FOR_CODIGO', CAI_FORNECEDORNOME: 'FOR_NOME' };
const mapaVendedores   = { CAI_VENDEDOR: 'VEN_CODIGO', VEN_NOME: 'VEN_NOME' };

function Caixa() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/caixa', 'Caixa listar', logout);
    const [ pesquisa, setPesquisa ] = useState({
        datainicial: formatarDataFb(primeiroDiaMesPassado()),
        datafinal: formatarDataFb(ultimoDiaMesSeguinte()),
        CAI_CLIENTE: '',
        CAI_CLIENTENOME: '',
        CAI_CODIGO: '',
        CAI_CONTA: 'TODAS',
        CAI_NUMDOCTO: '',
        CAI_VALOR: '',
    });
    const vazio = {
        CAI_CLIENTE: '',
        CAI_CLIENTENOME: '',
        CAI_CODIGO: '',
        CAI_CONTA: '',
        CAI_DATA: '01/01/1900',
        CAI_DESCRICAO: '',
        CAI_DTATUALIZACAO: '01/01/1900',
        CAI_DTCADASTRO: '01/01/1900',
        CAI_ENTRADASAIDA: 'E',
        CAI_FORNECEDOR: '',
        CAI_FORNECEDORNOME: '',
        CAI_NUMCHEQUE: '',
        CAI_NUMDOCTO: '',
        CAI_ORIGEM: 'FLUXO DE CAIXA',
        CAI_SALDOANTERIOR: '',
        CAI_SALDOPOSTERIOR: '',
        CAI_TIPODOCTO: '',
        CAI_USUARIO: '',
        CAI_VALOR: '',
        CAI_VENDEDOR: '',
        CON_NOME: '',
        VEN_NOME: ''
    };
    
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        // editar,
        // excluir,
        inserir,
        operacao, 
        registro: caixa,
        salvar,
        setOperacao,
        setRegistro: setCaixa,
        visualizar,
    } = useTabela('firenet/caixa', vazio, 'CAI_CODIGO', 'CAI_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    // const hExcluir   = () => excluir(caixa, () => listar(pesquisa, true));
    // const hEditar    = () => editar(caixa.CAI_CODIGO);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    const [ selectContas, setSelectContas ] = useState([]);
    const [ showClientesLoc, setShowClientesLoc ] = useState(false);
    const [ showContasLoc, setShowContasLoc ] = useState(false);
    const [ showFornecedoresLoc, setShowFornecedoresLoc ] = useState(false);
    const [ showVendedoresLoc, setShowVendedoresLoc ] = useState(false);
    
    useEffect(() => {
        listar(pesquisa, true);
        getContas();
    },[]);

    function reset() {
        const pesquisaVazia = { 
            datainicial: formatarDataFb(primeiroDiaMesPassado()),
            datafinal: formatarDataFb(ultimoDiaMesSeguinte()),
            CAI_CLIENTE: '',
            CAI_CLIENTENOME: '',
            CAI_CODIGO: '',
            CAI_CONTA: 'TODAS',
            CAI_NUMDOCTO: '',
            CAI_VALOR: '',
        }
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    async function getContas() {
        const formData = new FormData();
        formData.set('op','combo');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('todos',true);
        try {
            const response = await Api.post('firenet/contas',formData);
            if (response.data.erro==='S') throw response;
            setSelectContas(response.data.msg);
        } catch (error) {
            tratarCatch('Caixa getContas',error,logout);
        }
    }

    const onRowSelect = (event) => {
        visualizar(event.CON_CODIGO);
    };

    const bodyTransacao = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.CAI_ENTRADASAIDA==='E'}>
                    <span className="badge bg-success">ENTRADA</span>
                </PettIf>
                <PettIf condicional={rowData.CAI_ENTRADASAIDA==='S'}>
                    <span className="badge bg-danger">SAÍDA</span>
                </PettIf>                
            </React.Fragment>
        );
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Fluxo de Caixa" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}           condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}           condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao}  condicional={operacao==="inserir"}/>
            <AtualizadoPor usuario={caixa.CAI_USUARIO} data={caixa.CAI_DTATUALIZACAO} hora={caixa.CAI_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="CAI_CODIGO" value={caixa.CAI_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="CAI_DTCADASTRO" value={formatarDataStr(caixa.CAI_DTCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA ATUALIZAÇÃO" name="CAI_DTATUALIZACAO" value={formatarDataStr(caixa.CAI_DTATUALIZACAO)} readOnly disabled/>
                        <PettFieldDate size="col-lg-2 col-md-3 col-sm-6" label="DATA" name="CAI_DATA" value={caixa.CAI_DATA} set={setCaixa} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="TIPO DOCTO" name="CAI_TIPODOCTO" value={caixa.CAI_TIPODOCTO} set={setCaixa} options={selectTipoDocto} optionLabel="CODE" readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="NÚM DOCTO." name="CAI_NUMDOCTO" value={caixa.CAI_NUMDOCTO} set={setCaixa} length={20} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                    <div className="row mb-3 g-1">
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="CAI_DESCRICAO" value={caixa.CAI_DESCRICAO} set={setCaixa} length={120} readOnly={disableFields} disabled={disableFields}/>
                        
                        <PettFieldLoc size="col-lg-1 col-md-1 col-sm-12" label="VENDEDOR" name="CAI_VENDEDOR" value={caixa.CAI_VENDEDOR} set={setCaixa} onClick={() => setShowVendedoresLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, setCaixa, mapaVendedores)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-5 col-md-5 col-sm-12" label="VENDEDOR" name="VEN_NOME" value={caixa.VEN_NOME} set={setCaixa} readOnly disabled/>
                        
                        <PettFieldLoc size="col-lg-1 col-md-1 col-sm-12" label="CONTA" name="CAI_CONTA" value={caixa.CAI_CONTA} set={setCaixa} onClick={() => setShowContasLoc(true)} onBlur={(e) => localizar(CONTAS, e.target.value, setCaixa, mapaContas)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-5 col-md-5 col-sm-12" label="CONTA" name="CON_NOME" value={caixa.CON_NOME} set={setCaixa} readOnly disabled/>
                        
                        <PettFieldLoc size="col-lg-1 col-md-1 col-sm-12" label="CLIENTE" name="CAI_CLIENTE" value={caixa.CAI_CLIENTE} set={setCaixa} onClick={() => setShowClientesLoc(true)} onBlur={(e) => localizar(CLIENTES, e.target.value, setCaixa, mapaClientes)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-5 col-md-5 col-sm-12" label="CLIENTE" name="CAI_CLIENTENOME" value={caixa.CAI_CLIENTENOME} set={setCaixa} readOnly disabled/>
                        
                        <PettFieldLoc size="col-lg-1 col-md-1 col-sm-12" label="FORNECEDOR" name="CAI_FORNECEDOR" value={caixa.CAI_FORNECEDOR} set={setCaixa} onClick={() => setShowFornecedoresLoc(true)} onBlur={(e) => localizar(FORNECEDORES, e.target.value, setCaixa, mapaFornecedores)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-5 col-md-5 col-sm-12" label="FORNECEDOR" name="CAI_FORNECEDORNOME" value={caixa.CAI_FORNECEDORNOME} set={setCaixa} readOnly disabled/>
                        
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="TRANSACAO" name="CAI_ENTRADASAIDA" value={caixa.CAI_ENTRADASAIDA} set={setCaixa} options={selectEntradaSaida} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR" name="CAI_VALOR" value={caixa.CAI_VALOR} set={setCaixa} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="SALDO ANTERIOR" name="CAI_SALDOANTERIOR" value={caixa.CAI_SALDOANTERIOR} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="SALDO POSTERIOR" name="CAI_SALDOPOSTERIOR" value={caixa.CAI_SALDOPOSTERIOR} readOnly disabled/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="ORIGEM" name="CAI_ORIGEM" value={caixa.CAI_ORIGEM} readOnly disabled/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldDate size="col-lg-2 col-md-2 col-sm-6" label="DATA INICIAL" name="datainicial" value={pesquisa.datainicial} set={setPesquisa}/>
                    <PettFieldDate size="col-lg-2 col-md-2 col-sm-6" label="DATA FINAL" name="datafinal" value={pesquisa.datafinal} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CÓDIGO" name="CAI_CODIGO" value={pesquisa.CAI_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="NUM. DOCTO." name="CAI_NUMDOCTO" value={pesquisa.CAI_NUMDOCTO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CÓD. CLIENTE" name="CAI_CLIENTE" value={pesquisa.CAI_CLIENTE} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CLIENTE" name="CAI_CLIENTENOME" value={pesquisa.CAI_CLIENTENOME} set={setPesquisa}/>
                    <PettFieldDrop size="col-lg-3 col-md-3 col-sm-12" label="CONTA" name="CAI_CONTA" value={pesquisa.CAI_CONTA} set={setPesquisa} options={selectContas} optionValue="VALUE" optionLabel="LABEL"/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="VALOR" name="CAI_VALOR" value={pesquisa.CAI_VALOR} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="CAI_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="CAI_TIPODOCTO" header="Tipo Docto."></PettColumn>
                    <PettColumn field="CAI_NUMDOCTO" header="Num. Docto."></PettColumn>
                    <PettColumn field="CAI_DATA" header="Data" body={(rowData) => formatarDataStr2(rowData,'CAI_DATA')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="CAI_VALOR" header="Valor" body={(rowData) => formatarMoeda(rowData,'CAI_VALOR')} sortable align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="CAI_SALDOANTERIOR" header="Saldo Anterior" body={(rowData) => formatarMoeda(rowData,'CAI_SALDOANTERIOR')} sortable align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="CAI_SALDOPOSTERIOR" header="Saldo Posterior" body={(rowData) => formatarMoeda(rowData,'CAI_SALDOPOSTERIOR')} sortable align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="CAI_ENTRADASAIDA" header="E/S" body={bodyTransacao} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="CAI_DESCRICAO" header="Descrição"></PettColumn>
                    <PettColumn field="CAI_CONTA" header="Conta" align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="CAI_CLIENTE" header="Cliente" sortable align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="CAI_CLIENTENOME" header="Nome Cliente" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro}/>
            </ColunaCentral>
        </PettIf>
        <Rodape />
        <ClientesLoc showModal={showClientesLoc} onCloseModal={(data) => { selecionar(data, setCaixa, mapaClientes); setShowClientesLoc(false); }}/>
        <ContasLoc showModal={showContasLoc} onCloseModal={(data) => { selecionar(data, setCaixa, mapaContas); setShowContasLoc(false); }}/>
        <VendedoresLoc showModal={showVendedoresLoc} onCloseModal={(data) => { selecionar(data, setCaixa, mapaVendedores); setShowVendedoresLoc(false); }}/>
        <FornecedoresLoc showModal={showFornecedoresLoc} onCloseModal={(data) => { selecionar(data, setCaixa, mapaFornecedores); setShowFornecedoresLoc(false); }}/>
    </>
}

export default Caixa;