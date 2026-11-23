import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import CondicoesItens from './CondicoesItens';
import ContasLoc from '../../Componentes/Localizadores/ContasLoc';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { selectAtivoInativo, selectFormaPagamento, selectMeioPagamento, selectSimNao } from '../../Combox';
import { formatarAtivoInativo, formatarDataStr, formatarDataStr2 } from '../../Funcoes';
import { useLocalizar, CONTAS } from '../../Hooks/useLocalizar';

const mapaContas = { CPG_CONTA: 'CON_CODIGO', CON_NOME: 'CON_NOME' };

function Condicoes() {
    const { logout } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/condicoes', 'Condicoes listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ CPG_CODIGO: '', CPG_DESCRICAO: '' });
    const vazio = {
        CPG_BAIXARPRIMEIRAPARC: 'S',
        CPG_CODIGO: '0',
        CPG_CONTA: '',
        CPG_CUPOM: 'N',
        CPG_DESCRICAO: '',
        CPG_DESCRICAOCUPOM: '',
        CPG_DTATUALIZACAO: '',
        CPG_DTCADASTRO: '',
        CPG_FORMAPAGTO: 'DINHEIRO',
        CPG_MEIOPAGAMENTO: '01 - DINHEIRO',
        CPG_MENSAL: 'S',
        CPG_MOBILE: 'N',
        CPG_PARCELASIGUAIS: 'S',
        CPG_STATUS: 'A',
        CPG_TIPOINTEGRACAO: '2 - PAGAMENTO NAO INTEGRADO',
        CPG_TOTALPARCELAS: '0',
        CPG_TOTALPORCENTAGEM: '0',
        CPG_USUARIO: '',
    };
    
    const getCondicoesItens = (dadosCompletos) => {
        // Se a API trouxe os itens dentro da condicao:
        if (dadosCompletos.ITENS) {
            setCondicaoItens(dadosCompletos.ITENS);
        }
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
        registro: condicao,
        salvar,
        setOperacao,
        setRegistro: setCondicao,
        visualizar,
    } = useTabela('firenet/condicoes', vazio, 'CPG_CODIGO', 'CPG_DESCRICAO', null, getCondicoesItens);
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hInserir   = () => { setCondicaoItens([]); inserir(); } 
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(condicao, () => listar(pesquisa, true));
    const hEditar    = () => editar(condicao);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    const [ operacaoItem, setOperacaoItem ] = useState('inserir');
    const [ condicaoItem, setCondicaoItem ] = useState({
        CPI_CODIGO: '',
        CPI_CONDICAO: '',
        CPI_DIAS: '',
        CPI_PORCENTAGEM: ''
    });
    const [ condicaoItens, setCondicaoItens ] = useState([]);
    const [ showItem, setShowItem ] = useState(false);
    const [ showContasLoc, setShowContasLoc ] = useState(false);

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { AGR_CODIGO: '', AGR_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };
        
    const onRowSelect = (event) => {
        visualizar(event.CPG_CODIGO);
    };

    //para abrir o modal do item
    function novoItem() {
        setOperacaoItem('inserirItem');
        setCondicaoItem({
            CPI_CODIGO: '',
            CPI_CONDICAO: condicao.CPG_CODIGO,
            CPI_DIAS: '0',
            CPI_PORCENTAGEM: '0'
        });
        setShowItem(true);
    }

    function editarItem(item1) {      
        setOperacaoItem('atualizarItem');
        setShowItem(true);
    }

    async function itemClose(item) {
        // if (typeof item === 'object' && item !== null) {
        if (Object.keys(item).length > 0) {
            setCondicao(item);
            setCondicaoItens(item.ITENS);
        }
        setShowItem(false);
    }

    const onRowSelectItem = (event) => {
        if (operacao==='visualizar') {
            setCondicaoItem(event);
            editarItem(event.CPI_CODIGO);
        }
    };
    
    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Condições de Pagamentos" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={hInserir}         condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={condicao.CPG_USUARIO} data={condicao.CPG_DTATUALIZACAO} hora={condicao.CPG_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregando}/>
                <PettIf condicional={!carregando}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="CPG_CODIGO" value={condicao.CPG_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="CPG_DTCADASTRO" value={formatarDataStr(condicao.CPG_DTCADASTRO)} readOnly disabled/>
                    </div>
                    <div className="row mb-3 g-1">
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="DESCRIÇÃO" name="CPG_DESCRICAO" value={condicao.CPG_DESCRICAO} set={setCondicao} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="DESCRIÇÃO NO CUPOM" name="CPG_DESCRICAOCUPOM" value={condicao.CPG_DESCRICAOCUPOM} set={setCondicao} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldLoc size="col-lg-1 col-md-1 col-sm-12" label="CONTA" name="CPG_CONTA" value={condicao.CPG_CONTA} set={setCondicao} onClick={() => setShowContasLoc(true)} onBlur={(e) => localizar(CONTAS, e.target.value, setCondicao, mapaContas)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-5 col-sm-12" label="CONTA" name="CON_NOME" value={condicao.CON_NOME} set={setCondicao} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-6 col-sm-6" label="MEIO DE PAGAMENTO" name="CPG_MEIOPAGAMENTO" value={condicao.CPG_MEIOPAGAMENTO} set={setCondicao} readOnly={disableFields} disabled={disableFields} options={selectMeioPagamento}/>
                        <PettFieldDrop size="col-lg-2 col-md-6 col-sm-6" label="FORMA DE PAGAMENTO" name="CPG_FORMAPAGTO" value={condicao.CPG_FORMAPAGTO} set={setCondicao} readOnly={disableFields} disabled={disableFields} options={selectFormaPagamento}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="PARCELAS IGUAIS" name="CPG_PARCELASIGUAIS" value={condicao.CPG_PARCELASIGUAIS} set={setCondicao} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="BAIXAR PRIMEIRA PARCELA" name="CPG_BAIXARPRIMEIRAPARC" value={condicao.CPG_BAIXARPRIMEIRAPARC} set={setCondicao} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="PERÍODOS MENSAIS" name="CPG_MENSAL" value={condicao.CPG_MENSAL} set={setCondicao} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="DISPONÍVEL NO CUPOM" name="CPG_CUPOM" value={condicao.CPG_CUPOM} set={setCondicao} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="DISPONÍVEL NO MOBILE" name="CPG_MOBILE" value={condicao.CPG_MOBILE} set={setCondicao} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="STATUS" name="CPG_STATUS" value={condicao.CPG_STATUS} set={setCondicao} readOnly={disableFields} disabled={disableFields} options={selectAtivoInativo}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="TOTAL DE PARCELAS" name="CPG_TOTALPARCELAS" value={condicao.CPG_TOTALPARCELAS} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PORCENTAGEM TOTAL" name="CPG_TOTALPORCENTAGEM" value={condicao.CPG_TOTALPORCENTAGEM} readOnly disabled/>
                    </div>

                    <div className="barra3 mb-1 mt-3">
                        <PettIf condicional={operacao==="visualizar"}>
                            <PettButton caption="Inserir Item" icone="plus" click={novoItem} />
                        </PettIf>
                        <PettIf condicional={operacao==="inserir" || operacao==="atualizar"}>
                            <span className="ms-2">Salve ou Cancele as alterações antes de inserir/alterar itens</span>
                        </PettIf>
                    </div>
                    <PettGrid className="mt-4" listagem={condicaoItens} rowSelect={onRowSelectItem}>
                        <PettColumn field="CPI_CODIGO" header="Código" sortable ></PettColumn>
                        <PettColumn field="CPI_CONDICAO" header="Condição" sortable ></PettColumn>
                        <PettColumn field="CPI_DIAS" header="Dias" sortable ></PettColumn>
                        <PettColumn field="CPI_PORCENTAGEM" header="Porcentagem" align="right" alignHeader="right"></PettColumn>
                    </PettGrid>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="CPG_CODIGO" value={pesquisa.CPG_CODIGO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="DESCRIÇÃO" name="CPG_DESCRICAO" value={pesquisa.CPG_DESCRICAO} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="CPG_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="CPG_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="CPG_STATUS" header="Status" body={(rowData) => formatarAtivoInativo(rowData,'CPG_STATUS')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="CPG_TOTALPARCELAS" header="Parcelas" sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="CPG_TOTALPORCENTAGEM" header="Porcentagem" sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="CPG_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'CPG_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="CPG_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'CPG_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="CPG_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>           
    
        <Rodape />
        <CondicoesItens showModal={showItem} onCloseModal={itemClose} condicao={condicao} item={condicaoItem} operacao={operacaoItem} />
        <ContasLoc showModal={showContasLoc} onCloseModal={(data) => { selecionar(data, setCondicao, mapaContas); setShowContasLoc(false); }}/>
    </>
}

export default Condicoes;