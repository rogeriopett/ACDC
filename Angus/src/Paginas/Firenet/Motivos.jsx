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
import { formatarDataStr, formatarDataStr2 } from '../../Funcoes';

function Motivos() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/motivos', 'Motivos listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ MOT_CODIGO: '', MOT_DESCRICAO: '' });
    const vazio = { MOT_CODIGO: '', MOT_DESCRICAO: '', MOT_DTCADASTRO: '', MOT_STATUS: 'A' };

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: motivo,
        salvar,
        setOperacao,
        setRegistro: setMotivo,
        visualizar,
    } = useTabela('firenet/motivos', vazio, 'MOT_CODIGO', 'MOT_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(motivo, () => listar(pesquisa, true));
    const hEditar    = () => editar(motivo);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { MOT_CODIGO: '', MOT_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };
    
    const onRowSelect = (event) => {
        visualizar(event.MOT_CODIGO);
    };

    const bodyStatus = (rowData) => {
        return <>
            <PettIf condicional={rowData.MOT_STATUS==='A'}>
                <span className="badge bg-success">ATIVO</span>
            </PettIf>
            <PettIf condicional={rowData.MOT_STATUS==='I'}>
                <span className="badge bg-danger">INATIVO</span>
            </PettIf>
        </>
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Motivos" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={motivo.MOT_USUARIO} data={motivo.MOT_DTATUALIZACAO} hora={motivo.MOT_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="MOT_CODIGO" value={motivo.MOT_CODIGO} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="MOT_DTCADASTRO" value={formatarDataStr(motivo.MOT_DTCADASTRO)} readOnly disabled />
                        <PettFieldText size="col-lg-4 col-md-3 col-sm-6" label="DESCRIÇÃO" name="MOT_DESCRICAO" value={motivo.MOT_DESCRICAO} set={setMotivo} readOnly={disableFields} disabled={disableFields} length="50"/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="STATUS" name="MOT_STATUS" value={motivo.MOT_STATUS} set={setMotivo} readOnly={disableFields} disabled={disableFields} options={selectAtivoInativo} />
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="MOT_CODIGO" value={pesquisa.MOT_CODIGO} set={setPesquisa} />
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO" name="MOT_DESCRICAO" value={pesquisa.MOT_DESCRICAO} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="MOT_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="MOT_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="MOT_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'MOT_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="MOT_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'MOT_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="MOT_STATUS" header="Status" body={bodyStatus} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="MOT_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
    </>
}

export default Motivos;