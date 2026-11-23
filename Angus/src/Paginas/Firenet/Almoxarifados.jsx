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
import { selectAtivoInativo } from '../../Combox';
import { formatarAtivoInativo, formatarDataStr, formatarDataStr2 } from '../../Funcoes';

function Almoxarifados() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/almoxarifados', 'Almoxarifados listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ ALM_CODIGO: '', ALM_DESCRICAO: '' });
    const vazio = { ALM_CODIGO: '', ALM_DESCRICAO: '', ALM_DTCADASTRO: '', ALM_STATUS: '' }

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: almoxarifado,
        salvar,
        setOperacao,
        setRegistro: setAlmoxarifado,
        visualizar,
    } = useTabela('firenet/almoxarifados', vazio, 'ALM_CODIGO', 'ALM_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(almoxarifado, () => listar(pesquisa, true));
    const hEditar    = () => editar(almoxarifado);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { ALM_CODIGO: '', ALM_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };
    
    const onRowSelect = (event) => {
        visualizar(event.ALM_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Almoxarifados" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={almoxarifado.ALM_USUARIO} data={almoxarifado.ALM_DTATUALIZACAO} hora={almoxarifado.ALM_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="ALM_CODIGO" value={almoxarifado.ALM_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DT. CADASTRO" name="ALM_DTCADASTRO" value={formatarDataStr(almoxarifado.ALM_DTCADASTRO)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="STATUS" name="ALM_STATUS" value={almoxarifado.ALM_STATUS} set={setAlmoxarifado} options={selectAtivoInativo} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-6 col-md-9 col-sm-12" label="DESCRIÇÃO" name="ALM_DESCRICAO" value={almoxarifado.ALM_DESCRICAO} set={setAlmoxarifado} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="ALM_CODIGO" value={pesquisa.ALM_CODIGO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-10 col-md-10 col-sm-12" label="DESCRIÇÃO" name="ALM_DESCRICAO" value={pesquisa.ALM_DESCRICAO} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={() => reset() } />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="ALM_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="ALM_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="ALM_STATUS" header="Status" body={(rowData) => formatarAtivoInativo(rowData,'ALM_STATUS')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="ALM_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'ALM_DTCADASTRO')} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="ALM_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'ALM_DTATUALIZACAO')} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="ALM_USUARIO" header="Atualizado Por"></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>           
        <Rodape />
    </>
}

export default Almoxarifados;