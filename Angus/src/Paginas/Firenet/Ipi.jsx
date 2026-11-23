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

function Ipi() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/ipi', 'Ipi listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ IPI_CODIGO: '', IPI_DESCRICAO: '' });
    const vazio = { IPI_CODIGO: '', IPI_DESCRICAO: '', IPI_DTCADASTRO: '' };
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: ipi,
        salvar,
        setOperacao,
        setRegistro: setIpi,
        visualizar,
    } = useTabela('firenet/ipi', vazio, 'IPI_CODIGO', 'IPI_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(ipi, () => listar(pesquisa, true));
    const hEditar    = () => editar(ipi);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { IPI_CODIGO: '', IPI_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };
    
    const onRowSelect = (event) => {
        visualizar(event.IPI_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de IPI" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={ipi.IPI_USUARIO} data={ipi.IPI_DTATUALIZACAO} hora={ipi.IPI_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettIf condicional={operacao==='inserir' || operacao==='visualizar'}>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="IPI_CODIGO" value={String(ipi.IPI_CODIGO)} set={setIpi} upper={false} readOnly={disableFields} disabled={disableFields} />
                        </PettIf>
                        <PettIf condicional={operacao==='atualizar'}>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="IPI_CODIGO" value={String(ipi.IPI_CODIGO)} set={setIpi} upper={false} readOnly disabled />
                        </PettIf>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="IPI_DTCADASTRO" value={formatarDataStr(ipi.IPI_DTCADASTRO)} readOnly disabled />
                        <PettFieldText size="col-lg-9 col-md-9 col-sm-12" label="DESCRIÇÃO" name="IPI_DESCRICAO" value={ipi.IPI_DESCRICAO} set={setIpi} readOnly={disableFields} disabled={disableFields} />
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="IPI_CODIGO" value={pesquisa.IPI_CODIGO} set={setPesquisa} />
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO" name="IPI_DESCRICAO" value={pesquisa.IPI_DESCRICAO} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="IPI_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="IPI_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="IPI_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'IPI_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="IPI_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'IPI_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="IPI_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
    </>
}

export default Ipi;