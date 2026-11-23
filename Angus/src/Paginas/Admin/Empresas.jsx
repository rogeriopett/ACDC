import React, { useContext, useEffect, useState } from 'react';
import { Link } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldPass } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIcon } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

// import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Rodape from '../../Componentes/Rodape';
import Loading from '../../Componentes/Loading';
import Sentinela from '../../Componentes/Sentinela';
import { selectStatusEmpresas } from '../../Combox';
import { formatarDataStr, formatarDataStr2, formatarHora, getFoneMask } from '../../Funcoes';

function Empresas() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('admin/empresas', 'Empresas listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ EMP_CODIGO: '', EMP_CNPJ: '', EMP_NOME: '' });
    const vazio = { 
        EMP_API: '', 
        EMP_BASEDADOS: '', 
        EMP_CNPJ: '', 
        EMP_CODIGO: '', 
        EMP_DBPASS: '', 
        EMP_DBUSER: '', 
        EMP_DTATUALIZACAO: '', 
        EMP_DTCADASTRO: '', 
        EMP_FONE1: '', 
        EMP_HASH: '', 
        EMP_HRATUALIZACAO: '', 
        EMP_HRCADASTRO: '', 
        EMP_NOME: '',
        EMP_RESPONSAVEL: '',
        EMP_STATUS: '',
        USU_NOME: ''
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
        registro: empresa,
        salvar,
        setOperacao,
        setRegistro: setEmpresa,
        visualizar,
    } = useTabela('admin/empresas', vazio, 'EMP_CODIGO', 'EMP_NOME');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(empresa, () => listar(pesquisa, true));
    const hEditar    = () => editar(empresa.EMP_CODIGO);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa,true);
    },[]);

    function reset() {
        const pesquisaVazia = { EMP_CODIGO: '', EMP_CNPJ: '', EMP_NOME: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.EMP_CODIGO);
    };

    const opcoesRegistro = (rowData) => {
        return (
            <React.Fragment>
                <Link to={'/admin/empresasusuarios/'+rowData.EMP_CODIGO} title="Usuários da Empresa"><PettIcon name="users"/></Link>
            </React.Fragment>
        );
    }
    
    const bodyStatus = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.EMP_STATUS==='A'}>
                    <span className="badge bg-success">ATIVA</span>
                </PettIf>
                <PettIf condicional={rowData.EMP_STATUS==='I'}>
                    <span className="badge bg-danger">INATIVA</span>
                </PettIf>
                <PettIf condicional={rowData.EMP_STATUS==='N'}>
                    <span className="badge bg-primary">NOVA</span>
                </PettIf>
            </React.Fragment>
        );
    }

    const bodyHash = (rowData) => {
        return (
            <React.Fragment>
                <code>{rowData.EMP_HASH}</code>
            </React.Fragment>
        );
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Empresas" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="listar" || operacao===""}/>
            <AtualizadoPor usuario={empresa.USU_NOME} data={empresa.EMP_DTATUALIZACAO} hora={empresa.EMP_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregando}/>
                <PettIf condicional={!carregando}>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CÓDIGO" name="EMP_CODIGO" value={empresa.EMP_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="DATA CADASTRO" name="EMP_DTCADASTRO" value={formatarDataStr(empresa.EMP_DTCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="HORA CADASTRO" name="EMP_HRCADASTRO" value={formatarHora(empresa.EMP_HRCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="DATA ATUALIZAÇÃO" name="EMP_DTATUALIZACAO" value={formatarDataStr(empresa.EMP_DTATUALIZACAO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="HORA ATUALIZAÇÃO" name="EMP_HRATUALIZACAO" value={formatarHora(empresa.EMP_HRATUALIZACAO)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-2 col-sm-6" label="STATUS" name="EMP_STATUS" value={empresa.EMP_STATUS} set={setEmpresa} readOnly={disableFields} disabled={disableFields} options={selectStatusEmpresas}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="NOME" name="EMP_NOME" value={empresa.EMP_NOME} set={setEmpresa} readOnly={disableFields} disabled={disableFields} upper={false}/>
                        <PettFieldMask size="col-lg-2 col-md-2 col-sm-6" label="CNPJ" name="EMP_CNPJ" value={empresa.EMP_CNPJ} set={setEmpresa} readOnly={disableFields} disabled={disableFields} mask="99.999.999/9999-99"/>
                        <PettFieldMask size="col-lg-2 col-md-2 col-sm-6" label="FONE" name="EMP_FONE1" value={empresa.EMP_FONE1} set={setEmpresa} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(empresa.EMP_FONE1)}/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="RESPONSÁVEL" name="EMP_RESPONSAVEL" value={empresa.EMP_RESPONSAVEL} set={setEmpresa} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-6" label="BASE DE DADOS" name="EMP_BASEDADOS" value={empresa.EMP_BASEDADOS} set={setEmpresa} readOnly={disableFields} disabled={disableFields} upper={false}/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="DB USER" name="EMP_DBUSER" value={empresa.EMP_DBUSER} set={setEmpresa} readOnly={disableFields} disabled={disableFields} upper={false}/>
                        <PettFieldPass size="col-lg-3 col-md-3 col-sm-6" label="DB PASS" name="EMP_DBPASS" value={empresa.EMP_DBPASS} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-6" label="API" name="EMP_API" value={empresa.EMP_API} set={setEmpresa} readOnly={disableFields} disabled={disableFields} upper={false}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-6" label="HASH" name="EMP_HASH" value={empresa.EMP_HASH} set={setEmpresa} readOnly disabled />
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CÓDIGO" name="EMP_CODIGO" value={pesquisa.EMP_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldMask size="col-lg-2 col-md-2 col-sm-6" label="CNPJ" name="EMP_CNPJ" value={pesquisa.EMP_CNPJ} set={setPesquisa} mask="99.999.999/9999-99"/>
                    <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="NOME" name="EMP_NOME" value={pesquisa.EMP_NOME} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="EMP_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="EMP_CNPJ" header="CNPJ" sortable ></PettColumn>
                    <PettColumn field="EMP_NOME" header="Nome" sortable ></PettColumn>
                    <PettColumn field="USU_NOME" header="Responsável" sortable ></PettColumn>
                    <PettColumn field="EMP_STATUS" header="Status" body={bodyStatus} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="EMP_BASEDADOS" header="Base de Dados"></PettColumn>
                    <PettColumn field="EMP_DTCADASTRO" header="Cadastro" body={(rowData) => formatarDataStr2(rowData,'EMP_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="EMP_DTATUALIZACAO" header="Atualização" body={(rowData) => formatarDataStr2(rowData,'EMP_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="EMP_HASH" header="Hash" body={bodyHash}></PettColumn>
                    <PettColumn body={opcoesRegistro} header="Opções" exportable={false} align="center" alignHeader="center"></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro}/>
            </ColunaCentral>
        </PettIf>
        <Rodape />
    </>
}

export default Empresas;