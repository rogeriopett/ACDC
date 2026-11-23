import { useContext, useEffect, useState } from 'react';


import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
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
import MarkupsItens from './MarkupsItens';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { formatarDataStr, formatarDataStr2 } from '../../Funcoes';

function Markups() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/markups', 'Markups listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ MKP_CODIGO: '', MKP_DESCRICAO: '' });
    const vazio = { MKP_CODIGO: '', MKP_DESCRICAO: '', MKP_DTCADASTRO: '' };
    
    const getMarkupItens = (dadosCompletos) => {
        // Se a API trouxe os itens dentro da condicao:
        if (dadosCompletos.ITENS) {
            setMarkupItens(dadosCompletos.ITENS);
        }
    };

    const [ operacaoItem, setOperacaoItem ] = useState('inserir');
    const [ markupItem, setMarkupItem ] = useState({ MKI_CODIGO: '', MKI_DESCRICAO: '', MKI_MARKUP: '', MKI_PORCENTAGEM: '' });
    const [ markupItens, setMarkupItens ] = useState([]);
    const [ showItem, setShowItem ] = useState(false);

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: markup,
        salvar,
        setOperacao,
        setRegistro: setMarkup,
        visualizar,
    } = useTabela('firenet/markups', vazio, 'MKP_CODIGO', 'MKP_DESCRICAO', null, getMarkupItens);
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hInserir   = () => { setMarkupItens([]); inserir(); } 
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(markup, () => listar(pesquisa, true));
    const hEditar    = () => editar(markup);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { MKP_CODIGO: '', MKP_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };
    
    //para abrir o modal do item
    function novoItem() {
        setOperacaoItem('inserirItem');
        setMarkupItem({
            MKI_CODIGO: '',
            MKI_DESCRICAO: '',
            MKI_MARKUP: '',
            MKI_PORCENTAGEM: ''
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
            setMarkup(item);
            setMarkupItens(item.ITENS);
        }
        setShowItem(false);
    }

    const onRowSelectItem = (event) => {
        setMarkupItem(event);
        editarItem(event);
    };

    const onRowSelect = (event) => {
        visualizar(event.MKP_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Markups" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={hInserir}         condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={markup.MKP_USUARIO} data={markup.MKP_DTATUALIZACAO} hora={markup.MKP_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="MKP_CODIGO" value={markup.MKP_CODIGO} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="MKP_DTCADASTRO" value={formatarDataStr(markup.MKP_DTCADASTRO)} readOnly disabled/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-12" label="MARKUP" name="MKP_MARKUP" value={markup.MKP_MARKUP} set={setMarkup} readOnly disabled minDigits="8" maxDigits="8"/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="DESCRIÇÃO" name="MKP_DESCRICAO" value={markup.MKP_DESCRICAO} set={setMarkup} readOnly={disableFields} disabled={disableFields} length="50"/>
                    </div>

                    <div className="box mb-1 mt-3">
                        <PettIf condicional={operacao==="visualizar"}>
                            <PettButton caption="Inserir Item" icone="plus" click={() => novoItem() } />
                        </PettIf>
                        <PettIf condicional={operacao==="inserir" || operacao==="atualizar"}>
                            <span className="ms-2">Salve ou Cancele as alterações antes de inserir/alterar itens</span>
                        </PettIf>
                    </div>
                    <PettGrid className="mt-4" listagem={markupItens} rowSelect={onRowSelectItem}>
                        <PettColumn field="MKI_CODIGO" header="Código" sortable ></PettColumn>
                        <PettColumn field="MKI_MARKUP" header="Markup" sortable ></PettColumn>
                        <PettColumn field="MKI_DESCRICAO" header="Descrição" sortable ></PettColumn>
                        <PettColumn field="MKI_PORCENTAGEM" header="Porcentagem" align="right" alignHeader="right"></PettColumn>
                    </PettGrid>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="MKP_CODIGO" value={pesquisa.MKP_CODIGO} set={setPesquisa} />
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO" name="MKP_DESCRICAO" value={pesquisa.MKP_DESCRICAO} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="MKP_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="MKP_MARKUP" header="Markup" sortable ></PettColumn>
                    <PettColumn field="MKP_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="MKP_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'MKP_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="MKP_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'MKP_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="MKP_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
        <MarkupsItens showModal={showItem} onCloseModal={itemClose} markup={markup} item={markupItem} operacao={operacaoItem} />
    </>
}

export default Markups;