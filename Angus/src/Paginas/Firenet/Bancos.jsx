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

function Bancos() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/bancos', 'Bancos listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ BAN_CODIGO: '', BAN_NOME: '' });
    const vazio = { BAN_CODIGO: '', BAN_NOME: '', BAN_DTCADASTRO: '', BAN_STATUS: 'A' }
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: banco,
        salvar,
        setOperacao,
        setRegistro: setBanco,
        visualizar,
    } = useTabela('firenet/bancos', vazio, 'BAN_CODIGO', 'BAN_NOME');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(banco, () => listar(pesquisa, true));
    const hEditar    = () => editar(banco.BAN_CODIGO);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa,true)
    },[]);

    function reset() {
        const pesquisaVazia = { BAN_CODIGO: '', BAN_NOME: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.BAN_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Bancos" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}           condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}           condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}           condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao}  condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}    condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={banco.BAN_USUARIO} data={banco.BAN_DTATUALIZACAO} hora={banco.BAN_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="BAN_CODIGO" value={banco.BAN_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="BAN_DTCADASTRO" value={formatarDataStr(banco.BAN_DTCADASTRO)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-12" label="STATUS" name="BAN_STATUS" value={banco.BAN_STATUS} set={setBanco} options={selectAtivoInativo} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-10 col-md-9 col-sm-12" label="NOME" name="BAN_NOME" value={banco.BAN_NOME} set={setBanco} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="BAN_CODIGO" value={pesquisa.BAN_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldText size="col-lg-10 col-md-10 col-sm-12" label="NOME" name="BAN_NOME" value={pesquisa.BAN_NOME} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="BAN_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="BAN_NOME" header="Nome" sortable ></PettColumn>
                    <PettColumn field="BAN_STATUS" header="Status" body={(rowData) => formatarAtivoInativo(rowData,'BAN_STATUS')} sortable align="center" alignHeader="center" ></PettColumn>
                    <PettColumn field="BAN_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'BAN_DTCADASTRO')} sortable align="center" alignHeader="center" ></PettColumn>
                    <PettColumn field="BAN_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'BAN_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="BAN_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro}/>
            </ColunaCentral>
        </PettIf>           
        <Rodape />
    </>
}

export default Bancos;