import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
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
import { selectSimNao } from '../../Combox';
import { formatarSimNao, formatarDataStr, formatarDataStr2 } from '../../Funcoes';

function Grupos() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/grupos', 'Grupos listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ GRU_CODIGO: '', GRU_DESCRICAO: '' });
    const vazio = { GRU_CODIGO: '', GRU_DESCRICAO: '', GRU_DTCADASTRO: '', GRU_INTERNET: 'S' };
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: grupo,
        salvar,
        setOperacao,
        setRegistro: setGrupo,
        visualizar,
    } = useTabela('firenet/grupos', vazio, 'GRU_CODIGO', 'GRU_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(grupo, () => listar(pesquisa, true));
    const hEditar    = () => editar(grupo);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { GRU_CODIGO: '', GRU_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.GRU_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Grupos" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={grupo.GRU_USUARIO} data={grupo.GRU_DTATUALIZACAO} hora={grupo.GRU_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="GRU_CODIGO" value={grupo.GRU_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="GRU_DTCADASTRO" value={formatarDataStr(grupo.GRU_DTCADASTRO)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="VISÍVEL NA INTERNET" name="GRU_INTERNET" value={grupo.GRU_INTERNET} set={setGrupo} readOnly={disableFields} disabled={disableFields} options={selectSimNao} />
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="GRU_DESCRICAO" value={grupo.GRU_DESCRICAO} set={setGrupo} readOnly={disableFields} disabled={disableFields} />
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 gx-1 ">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12 mb-1" label="CÓDIGO" name="GRU_CODIGO" value={pesquisa.GRU_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12 mb-1" label="DESCRIÇÃO" name="GRU_DESCRICAO" value={pesquisa.GRU_DESCRICAO} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="GRU_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="GRU_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="GRU_INTERNET" header="Visível na internet" body={(rowData) => formatarSimNao(rowData,'GRU_INTERNET')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="GRU_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'GRU_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="GRU_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'GRU_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="GRU_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>           
        <Rodape />
    </>
}

export default Grupos;