import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { selectAtivoInativo } from '../../Combox';
import { formatarAtivoInativo, formatarDataStr, formatarDataStr2, formatarMoeda } from '../../Funcoes';
import AtualizadoPor from '../../Componentes/AtualizadoPor';

function ExamesTipos() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/examestipos', 'ExamesTipos listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ EXT_CODIGO: '', EXT_DESCRICAO: '', EXT_SIGLA: '' });
    const vazio = {
        EXT_CODIGO2: '',
        EXT_CODIGO: '',
        EXT_DESCRICAO: '',
        EXT_DTCADASTRO: '',
        EXT_DTATUALIZACAO: '',
        EXT_SIGLA: '',
        EXT_STATUS: 'A',
        EXT_OBSERVACOES: '',
        EXT_VALOR: '0',
    };

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: exameTipo,
        salvar,
        setOperacao,
        setRegistro: setExameTipo,
        visualizar,
    } = useTabela('firenet/examestipos', vazio, 'EXT_CODIGO', 'EXT_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(exameTipo, () => listar(pesquisa, true));
    const hEditar    = () => editar(exameTipo);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { EXT_CODIGO: '', EXT_DESCRICAO: '', EXT_SIGLA: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.EXT_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Tipos de Exames" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={exameTipo.EXT_USUARIO} data={exameTipo.EXT_DTATUALIZACAO} hora={exameTipo.EXT_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="CÓDIGO" name="EXT_CODIGO" value={exameTipo.EXT_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="DATA CADASTRO" name="EXT_DTCADASTRO" value={formatarDataStr(exameTipo.EXT_DTCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="DATA ATUALIZAÇÃO" name="EXT_DTATUALIZACAO" value={formatarDataStr(exameTipo.EXT_DTATUALIZACAO)} readOnly disabled/>
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="EXT_DESCRICAO" value={exameTipo.EXT_DESCRICAO} set={setExameTipo} length="120" readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO ALT." name="EXT_CODIGO2" value={exameTipo.EXT_CODIGO2} set={setExameTipo} length="15" readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="SIGLA" name="EXT_SIGLA" value={exameTipo.EXT_SIGLA} set={setExameTipo} length="15" readOnly={disableFields} disabled={disableFields} />
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="STATUS" name="EXT_STATUS" value={exameTipo.EXT_STATUS} set={setExameTipo} options={selectAtivoInativo} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR" name="EXT_VALOR" value={exameTipo.EXT_VALOR} set={setExameTipo} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="OBSERVAÇÕES" name="EXT_OBSERVACOES" value={exameTipo.EXT_OBSERVACOES} set={setExameTipo} readOnly={disableFields} disabled={disableFields} />
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="EXT_CODIGO" value={pesquisa.EXT_CODIGO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-3 col-md-4 col-sm-6" label="DESCRIÇÃO" name="EXT_DESCRICAO" value={pesquisa.EXT_DESCRICAO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="SIGLA" name="EXT_SIGLA" value={pesquisa.EXT_SIGLA} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="EXT_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="EXT_CODIGO2" header="Código 2" sortable ></PettColumn>
                    <PettColumn field="EXT_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="EXT_SIGLA" header="Sigla" sortable ></PettColumn>
                    <PettColumn field="EXT_STATUS" header="Status" body={(rowData) => formatarAtivoInativo(rowData,'EXT_STATUS')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="EXT_VALOR" header="Valor" body={(rowData) => formatarMoeda(rowData,'EXT_VALOR')} sortable align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="EXT_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'EXT_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="EXT_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'EXT_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>           
        <Rodape />
    </>
}

export default ExamesTipos;