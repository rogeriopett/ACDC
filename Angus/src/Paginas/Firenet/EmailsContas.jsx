import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldPass } from 'pett-componentes';
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
import { selectSimNao, selectAtivoInativo } from '../../Combox';
import { formatarAtivoInativo, formatarDataStr, formatarDataStr2 } from '../../Funcoes';

function EmailsContas() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/emailscontas', 'EmailsContas listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ EMC_CODIGO: '', EMC_NOME: '' });
    const vazio = {
        EMC_ASSINATURA: '',
        EMC_CODIGO: '',
        EMC_CONFIRMACAO: 'S',
        EMC_DTATUALIZACAO: '',
        EMC_DTCADASTRO: '',
        EMC_EMAIL: '',
        EMC_LOGIN: '',
        EMC_NOME: '',
        EMC_POP: '',
        EMC_POPPORTA: '110',
        EMC_REPLYTO: '',
        EMC_SENHA: '',
        EMC_SMTP: '',
        EMC_SMTPPORTA: '587',
        EMC_SSL: 'S',
        EMC_STATUS: 'A',
        EMC_TIMEOUT: '2000',
        EMC_TLS: 'S',
        EMC_USUARIO: '',
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
        registro: emailsConta,
        salvar,
        setOperacao,
        setRegistro: setEmailsConta,
        visualizar,
    } = useTabela('firenet/emailscontas', vazio, 'EMC_CODIGO', 'EMC_NOME');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(emailsConta, () => listar(pesquisa, true));
    const hEditar    = () => editar(emailsConta);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { EMC_CODIGO: '', EMC_NOME: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.EMC_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Contas de Emails" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={emailsConta.EMC_USUARIO} data={emailsConta.EMC_DTATUALIZACAO} hora={emailsConta.EMC_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid py-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="CÓDIGO" name="EMC_CODIGO" value={emailsConta.EMC_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="DATA CADASTRO" name="EMC_DTCADASTRO" value={formatarDataStr(emailsConta.EMC_DTCADASTRO)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-4" label="STATUS" name="EMC_STATUS" value={emailsConta.EMC_STATUS} set={setEmailsConta} readOnly={disableFields} disabled={disableFields} options={selectAtivoInativo}/>
                    </div>
                    <div className="row g-1">                    
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="NOME" name="EMC_NOME" value={emailsConta.EMC_NOME} set={setEmailsConta} upper={false} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="EMAIL" name="EMC_EMAIL" value={emailsConta.EMC_EMAIL} set={setEmailsConta} upper={false} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="RESPONDER PARA" name="EMC_REPLYTO" value={emailsConta.EMC_REPLYTO} set={setEmailsConta} upper={false} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-9 col-md-9 col-sm-9" label="SMTP" name="EMC_SMTP" value={emailsConta.EMC_SMTP} set={setEmailsConta} upper={false} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-3" label="SMTP PORTA" name="EMC_SMTPPORTA" value={emailsConta.EMC_SMTPPORTA} set={setEmailsConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-9 col-md-9 col-sm-9" label="POP" name="EMC_POP" value={emailsConta.EMC_POP} set={setEmailsConta} upper={false} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-3" label="POP PORTA" name="EMC_POPPORTA" value={emailsConta.EMC_POPPORTA} set={setEmailsConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-6" label="LOGIN" name="EMC_LOGIN" value={emailsConta.EMC_LOGIN} set={setEmailsConta} upper={false} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldPass size="col-lg-6 col-md-6 col-sm-6" label="SENHA" name="EMC_SENHA" value={emailsConta.EMC_SENHA} set={setEmailsConta} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-lg-3 col-md-3 col-sm-3" label="CONFIRMAÇÃO" name="EMC_CONFIRMACAO" value={emailsConta.EMC_CONFIRMACAO} set={setEmailsConta} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-3 col-md-3 col-sm-3" label="SSL" name="EMC_SSL" value={emailsConta.EMC_SSL} set={setEmailsConta} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-3 col-md-3 col-sm-3" label="TLS" name="EMC_TLS" value={emailsConta.EMC_TLS} set={setEmailsConta} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-3" label="TIMEOUT" name="EMC_TIMEOUT" value={emailsConta.EMC_TIMEOUT} set={setEmailsConta} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="ASSINATURA" name="EMC_ASSINATURA" value={emailsConta.EMC_ASSINATURA} set={setEmailsConta} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="EMC_CODIGO" value={pesquisa.EMC_CODIGO} set={setPesquisa} upper={false}/>
                    <PettFieldText size="col-lg-10 col-md-10 col-sm-12" label="NOME" name="EMC_NOME" value={pesquisa.EMC_NOME} set={setPesquisa} upper={false}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="EMC_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="EMC_EMAIL" header="Email" sortable ></PettColumn>
                    <PettColumn field="EMC_NOME" header="Nome" sortable ></PettColumn>
                    <PettColumn field="EMC_STATUS" header="Status" body={(rowData) => formatarAtivoInativo(rowData,'EMC_STATUS')} sortable align="center" alignHeader="center" ></PettColumn>
                    <PettColumn field="EMC_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'EMC_DTATUALIZACAO')}sortable align="center" alignHeader="center"></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>           
        <Rodape />
    </>
}

export default EmailsContas;