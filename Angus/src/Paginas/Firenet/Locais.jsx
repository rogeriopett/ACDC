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

function Locais() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/locais', 'Locais listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ LCA_CODIGO: '', LCA_DESCRICAO: '' });
    const vazio = { LCA_CODIGO: '', LCA_DESCRICAO: '' };
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: local,
        salvar,
        setOperacao,
        setRegistro: setLocal,
        visualizar,
    } = useTabela('firenet/locais', vazio, 'LCA_CODIGO', 'LCA_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(local, () => listar(pesquisa, true));
    const hEditar    = () => editar(local);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { LCA_CODIGO: '', LCA_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };
       
    const onRowSelect = (event) => {
        visualizar(event.LCA_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Locais" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={local.LCA_USUARIO} data={local.LCA_DTATUALIZACAO} hora={local.LCA_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="LCA_CODIGO" value={local.LCA_CODIGO} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="LCA_DTCADASTRO" value={formatarDataStr(local.LCA_DTCADASTRO)} readOnly disabled />
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-12" label="CONVENIADO" name="LCA_CONVENIADO" value={local.LCA_CONVENIADO} set={setLocal} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="DESCRIÇÃO" name="LCA_DESCRICAO" value={local.LCA_DESCRICAO} set={setLocal} readOnly={disableFields} disabled={disableFields} length="50" />
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="LCA_CODIGO" value={pesquisa.LCA_CODIGO} set={setPesquisa} />
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO" name="LCA_DESCRICAO" value={pesquisa.LCA_DESCRICAO} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="LCA_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="LCA_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="LCA_CONVENIADO" header="Conveniado" body={(rowData) => formatarSimNao(rowData,'LCA_CONVENIADO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="LCA_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'LCA_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="LCA_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'LCA_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="LCA_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
    </>
}

export default Locais;