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

function Marcas() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/marcas', 'Marcas listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ MAR_CODIGO: '', MAR_DESCRICAO: '' });
    const vazio = { MAR_CODIGO: '', MAR_DESCRICAO: '', MAR_DTCADASTRO: '' };
    
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: marca,
        salvar,
        setOperacao,
        setRegistro: setMarca,
        visualizar,
    } = useTabela('firenet/marcas', vazio, 'MAR_CODIGO', 'MAR_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(marca, () => listar(pesquisa, true));
    const hEditar    = () => editar(marca);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { MAR_CODIGO: '', MAR_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.MAR_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Marcas" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={marca.MAR_USUARIO} data={marca.MAR_DTATUALIZACAO} hora={marca.MAR_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="MAR_CODIGO" value={marca.MAR_CODIGO} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="MAR_DTCADASTRO" value={formatarDataStr(marca.MAR_DTCADASTRO)} readOnly disabled />
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="DESCRIÇÃO" name="MAR_DESCRICAO" value={marca.MAR_DESCRICAO} set={setMarca} readOnly={disableFields} disabled={disableFields} length="50"/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="MAR_CODIGO" value={pesquisa.MAR_CODIGO} set={setPesquisa} />
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO" name="MAR_DESCRICAO" value={pesquisa.MAR_DESCRICAO} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="MAR_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="MAR_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="MAR_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'MAR_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="MAR_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'MAR_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="MAR_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
    </>
}

export default Marcas;