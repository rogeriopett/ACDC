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

function Familias() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/familias', 'Familias listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ FAM_CODIGO: '', FAM_DESCRICAO: '' });
    const vazio = useState({ FAM_CODIGO: '', FAM_DESCRICAO: '', FAM_DTCADASTRO: '', FAM_INTERNET: 'S' });

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: familia,
        salvar,
        setOperacao,
        setRegistro: setFamilia,
        visualizar,
    } = useTabela('firenet/familias', vazio, 'FAM_CODIGO', 'FAM_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(familia, () => listar(pesquisa, true));
    const hEditar    = () => editar(familia);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { FAM_CODIGO: '', FAM_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.FAM_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Famílias" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={familia.FAM_USUARIO} data={familia.FAM_DTATUALIZACAO} hora={familia.FAM_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="FAM_CODIGO" value={familia.FAM_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="FAM_DTCADASTRO" value={formatarDataStr(familia.FAM_DTCADASTRO)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="VISÍVEL NA INTERNET" name="FAM_INTERNET" value={familia.FAM_INTERNET} set={setFamilia} readOnly={disableFields} disabled={disableFields} options={selectSimNao} />
                        <PettFieldText size="col-lg-6 col-md-9 col-sm-12" label="DESCRIÇÃO" name="FAM_DESCRICAO" value={familia.FAM_DESCRICAO} set={setFamilia} readOnly={disableFields} disabled={disableFields} />
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-12" label="CÓDIGO" name="FAM_CODIGO" value={pesquisa.FAM_CODIGO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-10 col-md-10 col-sm-12" label="DESCRIÇÃO" name="FAM_DESCRICAO" value={pesquisa.FAM_DESCRICAO} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="FAM_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="FAM_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="FAM_INTERNET" header="Visível na internet" body={(rowData) => formatarSimNao(rowData,'FAM_INTERNET')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="FAM_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'FAM_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="FAM_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'FAM_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="FAM_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>           
        <Rodape />
    </>
}

export default Familias;