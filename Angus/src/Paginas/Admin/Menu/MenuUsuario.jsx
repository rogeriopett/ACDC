import { useCallback, useContext, useEffect, useRef, useState } from 'react';
import { Link } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIcon } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettTree } from 'pett-componentes';

import Api from '../../../Api';
import { AuthContext } from '../../../Contextos/Auth';
import { useListagem } from '../../../Hooks/useListagem';
import { useTabela } from '../../../Hooks/useTabela';
import BarraOpcoes from '../../../Componentes/BarraOpcoes';
import BarraSuperior from '../../../Componentes/BarraSuperior';
import ColunaCentral from '../../../Componentes/ColunaCentral';
import Rodape from '../../../Componentes/Rodape';
import { tratarCatch } from '../../../Funcoes';
import { selectSimNao, selectTarget } from '../../../Combox';

function MenuUsuario() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregandoListagem, listar } = useListagem('admin/menus', 'MenuUsuario listar', logout, false);
    const [ pesquisa, setPesquisa ] = useState({ MEN_CODIGO: '', MEN_DESCRICAO: '', MEN_UNIDADE: '', MEN_TIPO: 'U' });
    const [ blocos, setBlocos ] = useState([]);
    const [ unidades, setUnidades ] = useState([]);
    const [ unidadeSelecionada, setUnidadeSelecionada ] = useState({ MEN_UNIDADE: '' });
    const [ inicializado, setInicializado ] = useState(false);
    const arvoreRef = useRef(null);
    const vazio = {
        MEN_CODIGO: '',
        MEN_DROP: 'N',
        MEN_DESCRICAO: '',
        MEN_ICONE: '',
        MEN_LINK: '',
        MEN_MENUTITLE: 'N',
        MEN_PAI: 0,
        MEN_ORDEM: 0,
        MEN_TARGET: '_self',
        MEN_TIPO: 'U',
        MEN_UNIDADE: unidadeSelecionada.MEN_UNIDADE,
        MEN_VISIBLE: 'S',
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
        registro: menu,
        salvar,
        setOperacao,
        setRegistro: setMenu,
        visualizar,
    } = useTabela('admin/menus', vazio, 'MEN_CODIGO', 'MEN_DESCRICAO');

    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar     = () => salvar(listagem, () => listar(pesquisa, true));
    const hExcluir    = () => excluir(menu, () => listar(pesquisa, true));
    const hEditar     = () => editar(menu);
    const hListagem   = () => setOperacao('listar');
    const hPesquisar  = () => { setOperacao('listar'); listar(pesquisa, true); }
    const hExcluirRow = (row) => {
        excluir(row, () => { 
            setListagem(prev => prev.filter(item => item.MEN_CODIGO !== row.MEN_CODIGO)); 
        });
    };

    const colapsarTodos = () => { arvoreRef.current?.collapseAll(); };
    const expandirTodos = () => { arvoreRef.current?.expandAll(); }

    const getBlocos = useCallback(async () => {
        const formData = new FormData();
        formData.set('op','combomenu');
        try {
            const response = await Api.post('admin/blocos',formData);
            if (response.data.erro==='S') throw response;
            setBlocos(response.data.msg);
        } catch (error) {
            tratarCatch('MenuUsuario getBlocos',error,logout);
        }
    },[]);

    const getUnidades = useCallback(async () => {
        const formData = new FormData();
        formData.set('op','combo');
        try {
            const response = await Api.post('unidades',formData);
            if (response.data.erro==='S') throw response;
            const listaUnidades=response.data.msg || [];
            setUnidades(listaUnidades);

            // Verifica se existem registos e define o primeiro como selecionado
            if (Array.isArray(listaUnidades) && listaUnidades.length > 0) {
                setUnidadeSelecionada({ MEN_UNIDADE: listaUnidades[0].UNI_CODIGO }); //codigo unidade
            }

        } catch (error) {
            tratarCatch('MenuUsuario getUnidades',error,logout);
        }
    },[]);

    useEffect(() => {
        getBlocos();
        getUnidades();
    },[]);
    
    useEffect(() => {
        if (!unidadeSelecionada.MEN_UNIDADE) return; // espera as unidades carregarem
        const novaPesquisa = { ...pesquisa, MEN_UNIDADE: unidadeSelecionada.MEN_UNIDADE };
        setPesquisa(novaPesquisa);
        listar(novaPesquisa, true).finally(() => setInicializado(true));
    }, [unidadeSelecionada]);
               
    async function salvarOrdenacao() {
        const formData = new FormData();
        formData.set('op','ordenar');
        formData.set('MEN_TIPO','U');
        formData.set('json',JSON.stringify(listagem));
        try {
            const response = await Api.post('admin/menus',formData);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yessss!',response.data.msg);
        } catch (error) {
            tratarCatch('MenuUsuario salvarOrdenacao',error,logout);
        }
    }

    return <>
        <BarraSuperior/>
        <BarraOpcoes titulo="Menu Usuário" linkBack="/">
            <PettButton caption="Listagem"         icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo Item"        icone="plus"      click={inserir}          condicional={operacao==="listar" || operacao === "visualizar"}/>
            <PettButton caption="Excluir"          icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"           icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"         icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"         icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <PettButton caption="Editar"           icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Colapsar"         icone="compress"  click={colapsarTodos}    condicional={operacao==="listar"}/>
            <PettButton caption="Expandir"         icone="enlarge"   click={expandirTodos}    condicional={operacao==="listar"}/>
            <PettButton caption="Recarregar"       icone="reset"     click={hPesquisar}       condicional={operacao==="listar"}/>
            <PettButton caption="Salvar Ordenação" icone="save"      click={salvarOrdenacao}  condicional={operacao==="listar"}/>
        </BarraOpcoes>

        <ColunaCentral left="false" right="false" className="container my-3">

            <PettIf condicional={operacao === "inserir" || operacao === "atualizar" || operacao === "visualizar"}>
                <div className="row mb-3 g-1">
                    <PettFieldText size="col-lg-3 col-md-3 col-sm-12" label="DESCRIÇÃO" name="MEN_DESCRICAO" value={menu.MEN_DESCRICAO} set={setMenu} readOnly={disableFields} disabled={disableFields} upper={false}/>
                    <PettFieldDrop size="col-lg-3 col-md-3 col-sm-12" label="LINK" name="MEN_LINK" value={menu.MEN_LINK} set={setMenu} readOnly={disableFields} disabled={disableFields} options={blocos} editable/>
                    <PettFieldDrop size="col-lg-2 col-md-2 col-sm-12" label="TARGET" name="MEN_TARGET" value={menu.MEN_TARGET} set={setMenu} readOnly={disableFields} disabled={disableFields} options={selectTarget}/>
                    <PettFieldDrop size="col-lg-2 col-md-2 col-sm-12" label="TITULO DE MENU" name="MEN_MENUTITLE" value={menu.MEN_MENUTITLE} set={setMenu} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                    <PettFieldDrop size="col-lg-2 col-md-2 col-sm-12" label="VISÍVEL" name="MEN_VISIBLE" value={menu.MEN_VISIBLE} set={setMenu} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-12" label="ICONE" name="MEN_ICONE" value={menu.MEN_ICONE} set={setMenu} readOnly={disableFields} disabled={disableFields} upper={false}/>
                    <PettFieldDrop size="col-lg-2 col-md-2 col-sm-12" label="UNIDADE" name="MEN_UNIDADE" value={String(menu.MEN_UNIDADE)} set={setMenu} readOnly disabled options={unidades} optionLabel="UNI_DESCRICAO" optionValue="UNI_CODIGO"/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-12" label="CÓDIGO" name="MEN_CODIGO" value={String(menu.MEN_CODIGO)} set={setMenu} readOnly disabled/>             
                </div>
            </PettIf>

            <PettIf condicional={operacao==="listar" || operacao===""}>
                <div className="row my-3">
                    <PettFieldDrop size="col-lg-2 col-md-2 col-sm-12" label="UNIDADE" name="MEN_UNIDADE" value={String(unidadeSelecionada.MEN_UNIDADE)} options={unidades} set={setUnidadeSelecionada} optionLabel="UNI_DESCRICAO" optionValue="UNI_CODIGO"/>
                </div>

                <PettTree className="mb-5"
                    ref={arvoreRef}
                    idKey="MEN_CODIGO"
                    childrenKey="MEN_FILHOS"
                    collapsible
                    collapseChildren
                    value={listagem}
                    onChange={setListagem}
                    indentationWidth={50}
                    renderItemContent={(item) => (
                        <div>
                            {item.MEN_VISIBLE==="S"?<PettIcon name="eye"/>:<PettIcon name="invisible"/>}
                            <Link to="" onClick={ () => visualizar(String(item.MEN_CODIGO)) }><PettIcon name="pencil" className="mx-1"/></Link>
                            <Link to="" onClick={ () => hExcluirRow(item) }><PettIcon name="trash" className="me-2"/></Link>
                            {item.MEN_CODIGO+' - '+item.MEN_DESCRICAO}
                        </div>
                    )}
                />
            </PettIf>
            
            <PettIf condicional={ inicializado && listagem.length === 0 && carregandoListagem === false }>
                <div className="container d-flex justify-content-center align-items-center">
                    <p className="text-center lead"><span style={{fontSize: '70px'}} className="text-muted"><PettIcon name="shocked" size="150"/></span><br/>Nenhum menu encontrado!</p>
                </div>                    
            </PettIf>
        </ColunaCentral>
        <Rodape/>
    </>
}

export default MenuUsuario;