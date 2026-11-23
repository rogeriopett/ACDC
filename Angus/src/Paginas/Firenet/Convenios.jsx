import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
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
import { selectAtivoInativo } from '../../Combox';

function Convenios() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/convenios', 'Convenios listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ COV_CODIGO: '', COV_DESCRICAO: '' });
    const vazio = { COV_CODIGO: '', COV_DESCRICAO: '', COV_DTCADASTRO: '', COV_OBSERVACOES: '', COV_STATUS: 'A' };
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: convenio,
        salvar,
        setOperacao,
        setRegistro: setConvenio,
        visualizar,
    } = useTabela('firenet/convenios', vazio, 'COV_CODIGO', 'COV_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(convenio, () => listar(pesquisa, true));
    const hEditar    = () => editar(convenio);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { COV_CODIGO: '', COV_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.COV_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Convênios" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={convenio.COV_USUARIO} data={convenio.COV_DTATUALIZACAO} hora={convenio.COV_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="COV_CODIGO" value={convenio.COV_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="COV_DTCADASTRO" value={formatarDataStr(convenio.COV_DTCADASTRO)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-12" label="STATUS" name="COV_STATUS" value={convenio.COV_STATUS} set={setConvenio} readOnly={disableFields} disabled={disableFields} options={selectAtivoInativo}/>
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="COV_DESCRICAO" value={convenio.COV_DESCRICAO} set={setConvenio} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="OBSERVAÇÕES" name="COV_OBSERVACOES" value={convenio.COV_OBSERVACOES} set={setConvenio} readOnly={disableFields} disabled={disableFields}/>                   
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1 ">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="COV_CODIGO" value={pesquisa.COV_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldText size="col-lg-10 col-md-10 col-sm-12" label="DESCRIÇÃO" name="COV_DESCRICAO" value={pesquisa.COV_DESCRICAO} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="COV_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="COV_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="COV_STATUS" header="Status" align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="COV_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'COV_DTCADASTRO')} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="COV_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'COV_DTATUALIZACAO')} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="COV_USUARIO" header="Atualizado Por"></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>           
        <Rodape />
    </>
}

export default Convenios;