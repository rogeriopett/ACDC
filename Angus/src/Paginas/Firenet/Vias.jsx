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

function Vias() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/vias', 'Vias listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ VIA_CODIGO: '', VIA_DESCRICAO: '' });
    const vazio = { VIA_CODIGO: '', VIA_DESCRICAO: '', VIA_DTCADASTRO: '', VIA_STATUS: 'A' };

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: via,
        salvar,
        setOperacao,
        setRegistro: setVia,
        visualizar,
    } = useTabela('firenet/vias', vazio, 'VIA_CODIGO', 'VIA_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(via, () => listar(pesquisa, true));
    const hEditar    = () => editar(via);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { VIA_CODIGO: '', VIA_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.VIA_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Vias de Contato" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={via.VIA_USUARIO} data={via.VIA_DTATUALIZACAO} hora={via.VIA_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="VIA_CODIGO" value={via.VIA_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="VIA_DTCADASTRO" value={formatarDataStr(via.VIA_DTCADASTRO)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="STATUS" name="VIA_STATUS" value={via.VIA_STATUS} set={setVia} readOnly={disableFields} disabled={disableFields} options={selectAtivoInativo}/>
                    </div>
                    <div className="row g-1 mb-3">
                        <PettFieldText size="col-lg-6 col-md-9 col-sm-12" label="DESCRIÇÃO" name="VIA_DESCRICAO" value={via.VIA_DESCRICAO} set={setVia} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="VIA_CODIGO" value={pesquisa.VIA_CODIGO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="DESCRIÇÃO" name="VIA_DESCRICAO" value={via.VIA_DESCRICAO} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="VIA_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="VIA_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="VIA_STATUS" header="Status" body={(rowData) => formatarAtivoInativo(rowData,'VIA_STATUS')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="VIA_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'VIA_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="VIA_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'VIA_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="VIA_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
    </>
}

export default Vias;