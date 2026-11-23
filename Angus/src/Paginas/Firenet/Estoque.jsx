import React, { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor.jsx';
import BarraOpcoes from '../../Componentes/BarraOpcoes.jsx';
import BarraSuperior from '../../Componentes/BarraSuperior';
import AlmoxarifadosLoc from '../../Componentes/Localizadores/AlmoxarifadosLoc';
import ClientesLoc from '../../Componentes/Localizadores/ClientesLoc';
import ColunaCentral from '../../Componentes/ColunaCentral';
import FornecedoresLoc from '../../Componentes/Localizadores/FornecedoresLoc';
import Loading from '../../Componentes/Loading';
import ProdutosLoc from '../../Componentes/Localizadores/ProdutosLoc';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import VendedoresLoc from '../../Componentes/Localizadores/VendedoresLoc';
import { selectEntradaSaida, selectTipoDocto } from '../../Combox';
import { primeiroDiaMesPassado, ultimoDiaMesSeguinte, formatarDataFb, formatarDataStr, formatarDataStr2, hoje } from '../../Funcoes';
import { useLocalizar, ALMOXARIFADOS, CLIENTES, FORNECEDORES, PRODUTOS, VENDEDORES } from '../../Hooks/useLocalizar';

const mapaAlmoxarifados = { EST_ALMOXARIFADO: 'ALM_CODIGO', ALM_DESCRICAO: 'ALM_DESCRICAO' };
const mapaClientes      = { EST_CLIENTE: 'CLI_CODIGO', CLI_NOME: 'CLI_NOME' };
const mapaFornecedores  = { EST_FORNECEDOR: 'FOR_CODIGO', FOR_NOME: 'FOR_NOME' };
const mapaProdutos      = { EST_PRODUTO: 'PRO_CODIGO', PRO_NOME: 'PRO_NOME' };
const mapaVendedores    = { EST_VENDEDOR: 'VEN_CODIGO', VEN_NOME: 'VEN_NOME' };

function Estoque() {
    const { logout } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/estoque', 'Estoque listar', logout);
    const [ pesquisa, setPesquisa ] = useState({
        datainicial: formatarDataFb(primeiroDiaMesPassado()),
        datafinal: formatarDataFb(ultimoDiaMesSeguinte()),
        EST_PRODUTO: '',
        EST_CODIGO: '',
        EST_NUMDOCTO: '',
        PRO_NOME: '',
    });
    
    const formatarDadosFB = (dados) => {
        return {
            ...dados,
            EST_DATA: formatarDataFb(estoque.EST_DATA), //Converte data de DD/MM/AAAA para AAAA-MM-DD
        };
    };

    const vazio = {
        EST_ALMOXARIFADO: '',
        EST_CLIENTE: '',
        EST_CODIGO: '',
        EST_CONVERSAO: '',
        EST_DATA: hoje,
        EST_DESCRICAO: '',
        EST_DTATUALIZACAO: '',
        EST_DTCADASTRO: '',
        EST_ESTOQUEANTERIOR: '',
        EST_ESTOQUEPOSTERIOR: '',
        EST_FORNECEDOR: '',
        EST_NUMDOCTO: '',
        EST_OBSERVACOES: '',
        EST_PRODUTO: '',
        EST_PRODUTOREAL: '',
        EST_QUANTIDADE: '0',
        EST_QUANTIDADEREAL: '0',
        EST_TIPODOCTO: 'OUTROS',
        EST_TRANSACAO: 'E',
        EST_USUARIO: '',
        EST_VALORUNIT: '',
        EST_VENDEDOR: '',
        ALM_DESCRICAO: '',
        CLI_NOME: '',
        FOR_NOME: '',
        PRO_NOME: '',
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
        registro: estoque,
        salvar,
        setOperacao,
        setRegistro: setEstoque,
        visualizar,
    } = useTabela('firenet/estoque', vazio, 'EST_CODIGO', 'EST_DESCRICAO', formatarDadosFB);
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    // const hExcluir   = () => excluir(estoque, () => listar(pesquisa, true));
    // const hEditar    = () => editar(estoque);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { 
            datainicial: formatarDataFb(primeiroDiaMesPassado()),
            datafinal: formatarDataFb(ultimoDiaMesSeguinte()),
            EST_PRODUTO: '',
            EST_CODIGO: '',
            EST_NUMDOCTO: '',
            PRO_NOME: '',
        };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    
    const [ showAlmoxarifadosLoc, setShowAlmoxarifadosLoc ] = useState(false);
    const [ showClientesLoc, setShowClientesLoc ] = useState(false);
    const [ showProdutosLoc, setShowProdutosLoc ] = useState(false);
    const [ showFornecedoresLoc, setShowFornecedoresLoc ] = useState(false);
    const [ showVendedoresLoc, setShowVendedoresLoc ] = useState(false);
    
    const onRowSelect = (event) => {
        visualizar(event.EST_CODIGO);
    };
  
    const bodyTransacao = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.EST_TRANSACAO==='E'}>
                    <span className="badge bg-warning text-dark">ENTRADA</span>
                </PettIf>
                <PettIf condicional={rowData.EST_TRANSACAO==='S'}>
                    <span className="badge bg-primary">SAÍDA</span>
                </PettIf>                
            </React.Fragment>
        );
    }
    
    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Movimentação do Estoque" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <AtualizadoPor usuario={estoque.EST_USUARIO} data={estoque.EST_DTATUALIZACAO} hora={estoque.EST_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3 mb-5">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6" label="CÓDIGO" name="EST_CODIGO" value={estoque.EST_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6" label="DATA CADASTRO" name="EST_DTCADASTRO" value={formatarDataStr(estoque.EST_DTCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6" label="DATA ATUALIZAÇÃO" name="EST_DTATUALIZACAO" value={formatarDataStr(estoque.EST_DTATUALIZACAO)} readOnly disabled/>
                        <PettFieldDate size="col-lg-2 col-md-4 col-sm-6" label="DATA" name="EST_DATA" value={estoque.EST_DATA} set={setEstoque} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-lg-2 col-md-4 col-sm-6" label="TIPO DOCUMENTO" name="EST_TIPODOCTO" value={estoque.EST_TIPODOCTO} set={setEstoque} options={selectTipoDocto} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6" label="NÚM. DOCUMENTO" name="EST_NUMDOCTO" value={estoque.EST_NUMDOCTO} set={setEstoque} length={20} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="EST_DESCRICAO" value={estoque.EST_DESCRICAO} set={setEstoque} length={120} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="ALMOXARIFADO" name="EST_ALMOXARIFADO" value={estoque.EST_ALMOXARIFADO} set={setEstoque} onClick={() => setShowAlmoxarifadosLoc(true)} onBlur={(e) => localizar(ALMOXARIFADOS, e.target.value, setEstoque, mapaAlmoxarifados)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO ALMOXARIFADO" name="ALM_DESCRICAO" value={estoque.ALM_DESCRICAO} readOnly disabled/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="VENDEDOR" name="EST_VENDEDOR" value={estoque.EST_VENDEDOR} set={setEstoque} onClick={() => setShowVendedoresLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, setEstoque, mapaVendedores)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME VENDEDOR" name="VEN_NOME" value={estoque.VEN_NOME} readOnly disabled/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CLIENTE" name="EST_CLIENTE" value={estoque.EST_CLIENTE} set={setEstoque} onClick={() => setShowClientesLoc(true)} onBlur={(e) => localizar(CLIENTES, e.target.value, setEstoque, mapaClientes)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME CLIENTE" name="CLI_NOME" value={estoque.CLI_NOME} readOnly disabled/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="FORNECEDOR" name="EST_FORNECEDOR" value={estoque.EST_FORNECEDOR} set={setEstoque} onClick={() => setShowFornecedoresLoc(true)} onBlur={(e) => localizar(FORNECEDORES, e.target.value, setEstoque, mapaFornecedores)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME FORNECEDOR" name="FOR_NOME" value={estoque.FOR_NOME} readOnly disabled/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="PRODUTO" name="EST_PRODUTO" value={estoque.EST_PRODUTO} set={setEstoque} onClick={() => setShowProdutosLoc(true)} onBlur={(e) => localizar(PRODUTOS, e.target.value, setEstoque, mapaProdutos)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME PRODUTO" name="PRO_NOME" value={estoque.PRO_NOME} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PRODUTO REAL" name="EST_PRODUTOREAL" value={String(estoque.EST_PRODUTOREAL)} set={setEstoque} readOnly disabled/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="CONVERSÃO" name="EST_CONVERSAO" value={estoque.EST_CONVERSAO} set={setEstoque} readOnly disabled minDigits={3} maxDigits={3}/>
                    </div>
                    <div className="row mb-3 g-1">
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="TRANSACAO" name="EST_TRANSACAO" value={estoque.EST_TRANSACAO} set={setEstoque} options={selectEntradaSaida} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="QUANTIDADE" name="EST_QUANTIDADE" value={estoque.EST_QUANTIDADE} set={setEstoque} readOnly={disableFields} disabled={disableFields} minDigits={3} maxDigits={3}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="QUANTIDADE REAL" name="EST_QUANTIDADEREAL" value={estoque.EST_QUANTIDADEREAL} set={setEstoque} readOnly disabled minDigits={3} maxDigits={3}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="SALDO ANTERIOR" name="EST_ESTOQUEANTERIOR" value={estoque.EST_ESTOQUEANTERIOR} readOnly disabled minDigits={3} maxDigits={3}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="SALDO POSTERIOR" name="EST_ESTOQUEPOSTERIOR" value={estoque.EST_ESTOQUEPOSTERIOR} readOnly disabled minDigits={3} maxDigits={3}/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR UNITÁRIO" name="EST_VALORUNIT" value={estoque.EST_VALORUNIT} set={setEstoque} readOnly disabled/>
                        <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="OBSERVAÇÕES" name="EST_OBSERVACOES" value={estoque.EST_OBSERVACOES} set={setEstoque} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldDate size="col-lg-2 col-md-4 col-sm-6" label="DATA INICIAL" name="datainicial" value={pesquisa.datainicial} set={setPesquisa}/>
                    <PettFieldDate size="col-lg-2 col-md-4 col-sm-6" label="DATA FINAL" name="datafinal" value={pesquisa.datafinal} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-4 col-sm-6" label="CÓDIGO" name="EST_CODIGO" value={pesquisa.EST_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldText size="col-lg-2 col-md-4 col-sm-6" label="NUM. DOCTO." name="EST_NUMDOCTO" value={pesquisa.EST_NUMDOCTO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-4 col-sm-6" label="PRODUTO" name="EST_PRODUTO" value={pesquisa.EST_PRODUTO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-4 col-sm-6" label="NOME PRODUTO" name="PRO_NOME" value={pesquisa.PRO_NOME} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="EST_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="EST_TIPODOCTO" header="Tipo Docto."></PettColumn>
                    <PettColumn field="EST_NUMDOCTO" header="Num. Docto."></PettColumn>
                    <PettColumn field="EST_DATA" header="Data" body={(rowData) => formatarDataStr2(rowData,'EST_DATA')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="EST_TRANSACAO" header="E/S" body={bodyTransacao} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="EST_QUANTIDADE" header="Quantidade" align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="EST_ESTOQUEANTERIOR" header="Anterior" align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="EST_ESTOQUEPOSTERIOR" header="Posterior" align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="EST_PRODUTO" header="Produto" sortable align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="PRO_NOME" header="Nome Produto" sortable ></PettColumn>
                    <PettColumn field="EST_DESCRICAO" header="Descrição"></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
        <AlmoxarifadosLoc showModal={showAlmoxarifadosLoc} onCloseModal={(data) => { selecionar(data, setEstoque, mapaAlmoxarifados); setShowAlmoxarifadosLoc(false); }}/>
        <ClientesLoc showModal={showClientesLoc} onCloseModal={(data) => { selecionar(data, setEstoque, mapaClientes); setShowClientesLoc(false); }}/>
        <FornecedoresLoc showModal={showFornecedoresLoc} onCloseModal={(data) => { selecionar(data, setEstoque, mapaFornecedores); setShowFornecedoresLoc(false); }}/>
        <ProdutosLoc showModal={showProdutosLoc} onCloseModal={(data) => { selecionar(data, setEstoque, mapaProdutos); setShowProdutosLoc(false); }}/>
        <VendedoresLoc showModal={showVendedoresLoc} onCloseModal={(data) => { selecionar(data, setEstoque, mapaVendedores); setShowVendedoresLoc(false); }}/>
    </>
}

export default Estoque;