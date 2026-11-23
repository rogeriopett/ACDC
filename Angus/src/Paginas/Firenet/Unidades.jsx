import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
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
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { formatarDataStr, formatarDataStr2 } from '../../Funcoes';

function Unidades() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/unidades', 'Unidades listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ UNI_CODIGO: '', UNI_DESCRICAO: '' });
    const vazio = { UNI_CODIGO: '', UNI_DESCRICAO: '', UNI_DTCADASTRO: '' };
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: unidade,
        salvar,
        setOperacao,
        setRegistro: setUnidade,
        visualizar,
    } = useTabela('firenet/unidades', vazio, 'UNI_CODIGO', 'UNI_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(unidade, () => listar(pesquisa, true));
    const hEditar    = () => editar(unidade);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { UNI_CODIGO: '', UNI_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.UNI_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Unidades" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={unidade.UNI_USUARIO} data={unidade.UNI_DTATUALIZACAO} hora={unidade.UNI_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="UNI_CODIGO" value={unidade.UNI_CODIGO} set={setUnidade} readOnly={disableFields} disabled={disableFields} length="3"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="UNI_DTCADASTRO" value={formatarDataStr(unidade.UNI_DTCADASTRO)} readOnly disabled/>
                    </div>
                    <div className="row g-1 mb-3">
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="DESCRIÇÃO" name="UNI_DESCRICAO" value={unidade.UNI_DESCRICAO} set={setUnidade} readOnly={disableFields} disabled={disableFields} length="50" />
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-6 col-sm-12" label="CÓDIGO" name="UNI_CODIGO" value={pesquisa.UNI_CODIGO} set={setPesquisa} length="3"/>
                    <PettFieldText size="col-lg-2 col-md-6 col-sm-12" label="DESCRIÇÃO" name="UNI_DESCRICAO" value={pesquisa.UNI_DESCRICAO} set={setPesquisa} length="50"/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="UNI_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="UNI_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="UNI_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'UNI_DTCADASTRO')} sortable align="center" alignHeader="center" ></PettColumn>
                    <PettColumn field="UNI_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'UNI_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="UNI_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
    </>
}

export default Unidades;