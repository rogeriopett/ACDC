import React, { useContext, useEffect, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIcon } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';

import { AuthContext } from '../../../Contextos/Auth';
import Api from '../../../Api';
import ColunaCentral from '../../../Componentes/ColunaCentral';
import { formatarDataStr2, getFoneMask, tratarCatch } from '../../../Funcoes';

import Logo from "../../../Imagens/logo_runtime_color.svg";
import './MinhasEmpresas.css';

function MinhasEmpresas() {
    const navigate = useNavigate();
    const { logout, setarEmpresa, usuario } = useContext(AuthContext);
    //const { empresaSelecionada, usuarioEmpresas, setarEmpresa } = useContext(AuthContext);

    const [ carregando, setCarregando ] = useState(false);
    const [ enviando, setEnviando ] = useState(false);
    const [ listagem, setListagem ] = useState([]);
    const [ operacao, setOperacao ] = useState('inserir');
    const [ empresa, setEmpresa ] = useState({
        EMP_CNPJ: '',
        EMP_HASH: '',
        EMP_FONE1: '',
        EMP_NOME: '',
    });
    
    async function listar() {
        setCarregando(true);    
        var formData = new FormData();
        formData.set('op','listar');
        try {
            const response = await Api.post('usuario/empresas',formData);
            if (response.data.erro==='S') throw response;
            setListagem(response.data.msg);
            setCarregando(false);
        } catch (error) {
            tratarCatch('MinhasEmpresas listar',error,logout);
            setCarregando(false);
        }
    }
    
    useEffect(() => {
        setOperacao('');
        listar();
    },[]);

    function registroNulo() {
        setEmpresa({
            EMP_CNPJ: '',
            EMP_HASH: '',
            EMP_FONE1: '',
            EMP_NOME: '',
        });
    }

    function novo() {
        registroNulo();
        setOperacao('inserir');
    }

    async function salvar() {
        setEnviando(true);
        const formData = new FormData();
        formData.set('op',operacao);
        formData.set('EMP_CNPJ',empresa.EMP_CNPJ ?? '');
        formData.set('EMP_CODIGO',empresa.EMP_HASH ?? '');
        formData.set('EMP_FONE1',empresa.EMP_FONE1 ?? '');
        formData.set('EMP_NOME',empresa.EMP_NOME ?? '');
        try {
            const response = await Api.post('usuario/empresas',formData);
            if (response.data.erro==="S") throw response;
            PettMensagem.sucesso('Yesss!','Dados salvos com sucesso.');
            setOperacao('listar');
            listar();
        } catch (error) {
            tratarCatch('MinhasEmpresas listar',error,logout);
        }
        setEnviando(false);
    }

    async function getRegistro(codigo) {
        setCarregando(true);
        var formData = new FormData();
        formData.set('op','visualizar');
        formData.set('EMP_CODIGO',codigo); //hash
        try {
            const response = await Api.post('usuario/empresas',formData);
            if (response.data.erro==='S') throw response;
            setEmpresa(response.data.msg);
            setCarregando(false);
        } catch (error) {
            setCarregando(false);
            setOperacao('listar');
            tratarCatch('MinhasEmpresas getRegistro',error,logout);
        }
    }

    async function editar(codigo) {
        getRegistro(codigo);
        setOperacao('atualizar');
    }

    function cancelar() {
        setOperacao('listar');
    }

    function excluir(item) {
        PettMensagem.aviso('Ooopss!','Função ainda não disponível. Entre em contato e solicite a exclusão.');
    }

    const onRowSelect = (event) => {
        const dados = event;
        if (dados.EMP_STATUS==='N') {
            PettMensagem.aviso('Oooopss!','Esta empresa ainda está em processo de criação.');
            return;
        }

        if (dados.USE_ACESSO==='P') {
            PettMensagem.aviso('Oooopss!','Seu acesso nesta empresa ainda está pendente de liberação.');
            return;
        }

        if (dados.EMP_STATUS==='A' && dados.USE_ACESSO==='S') {
            //const empresa={value: event.data.EMP_HASH, label: event.data.EMP_NOME}
            
            const empresaParaSelecionar = {
                value: dados.EMP_HASH,
                label: dados.EMP_NOME
            };
            setarEmpresa(empresaParaSelecionar);

            // const novasEmpresas = listagem.filter(item => item.EMP_STATUS==='A' && item.USE_ACESSO==='S').map(item => ({
            //     value: item.EMP_HASH,
            //     label: item.EMP_NOME,
            // }));

            //exemplo json empresa {"value":"cc37594137177b2621ae6e0f20999995","label":"DENTAL PLUS LTDA"}
            //exemplo json empresaS [{"value":"cc37594137177b2621ae6e0f20999995","label":"DENTAL PLUS LTDA"},{"value":"cc37594137177b2621ae6e0f20999995","label":"DENTAL PLUS LTDA"}]
            // setarEmpresa(empresa);
            // setarEmpresas(novasEmpresas);

            navigate('/');
        } 
    };

    const opcoesRegistro = (rowData) => {
        return (
            <React.Fragment>
                <Link to="" onClick={() => editar(rowData.EMP_HASH)} title="Editar"><PettIcon name="pencil"/></Link>
                <Link to="" onClick={() => excluir({ 'codigo': rowData.EMP_HASH, 'nome': rowData.EMP_NOME })} title="Excluir"><PettIcon name="trash"/></Link>
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

    const bodyAcesso = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.USE_ACESSO==='S'}>
                    <span className="badge bg-success">SIM</span>
                </PettIf>
                <PettIf condicional={rowData.USE_ACESSO==='N'}>
                    <span className="badge bg-danger">NÃO</span>
                </PettIf>                
                <PettIf condicional={rowData.USE_ACESSO==='P'}>
                    <span className="badge bg-warning text-dark">EM ANÁLISE</span>
                </PettIf>                
            </React.Fragment>
        );
    }

    return <>
        <PettIf condicional={operacao==="atualizar"}>
            <div className="d-flex align-items-center text-center form-cadastro-container">
                <div className="form-cadastro w-100">
                    <a href={import.meta.env.VITE_URL_SITE}><img src={Logo} style={{maxWidth: '230px'}} className=""/></a>
                    <div className="row mt-3 g-1">
                        <h6 className="text-light mb-4">Editar Empresa</h6>
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="RAZÃO SOCIAL" name="EMP_NOME" value={empresa.EMP_NOME} set={setEmpresa} required={true} upper={false}/>
                        <PettFieldMask size="col-lg-12 col-md-12 col-sm-12" label="CNPJ" name="EMP_CNPJ" value={empresa.EMP_CNPJ} set={setEmpresa} required={true} mask="99.999.999/9999-99" readOnly disabled/>
                        <PettFieldMask size="col-lg-12 col-md-12 col-sm-12" label="FONE COM WHATSAPP" name="EMP_FONE1" value={empresa.EMP_FONE1} set={setEmpresa} required={true} mask={getFoneMask(empresa.EMP_FONE1)}/>
                    </div>

                    <div className="mb-5 mt-3">
                        { enviando
                            ? <PettButton className="w-100 mb-3" caption="Verificando..." icone="wait" animado variant="green" size="lg" disabled={true}/>
                            : <PettButton className="w-100 mb-3" caption="Salvar" icone="done_branco" click={salvar} variant="green" size="lg"/>
                        }
                        <PettButton className="w-100 mb-3" caption="Cancelar" icone="cancel_branco" click={cancelar} variant="red" size="lg"/>
                    </div>
                </div>
            </div>
        </PettIf>

        <PettIf condicional={operacao==="inserir"}>
            <div className="d-flex align-items-center text-center form-cadastro-container">
                <div className="form-cadastro w-100">
                    <a href={import.meta.env.VITE_URL_SITE}><img src={Logo} style={{maxWidth: '230px'}} className=""/></a>
                    <div className="row mt-3 g-1">
                        <h6 className="text-light mb-4">Nova Empresa</h6>
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="RAZÃO SOCIAL" name="EMP_NOME" value={empresa.EMP_NOME} set={setEmpresa} required={true} upper={false}/>
                        <PettFieldMask size="col-lg-12 col-md-12 col-sm-12" label="CNPJ" name="EMP_CNPJ" value={empresa.EMP_CNPJ} set={setEmpresa} required={true} mask="99.999.999/9999-99"/>
                        <PettFieldMask size="col-lg-12 col-md-12 col-sm-12" label="FONE COM WHATSAPP" name="EMP_FONE1" value={empresa.EMP_FONE1} set={setEmpresa} required={true} mask={getFoneMask(empresa.EMP_FONE1)}/>
                    </div>

                    <div className="mb-5 mt-3">
                        { enviando
                            ? <PettButton className="w-100 mb-3" caption="Verificando..." icone="wait" animado variant="green" size="lg" disabled={true}/>
                            : <PettButton className="w-100 mb-3" caption="Salvar" icone="done_branco" click={salvar} variant="green" size="lg"/>
                        }
                        <PettButton className="w-100 mb-3" caption="Cancelar" icone="cancel_branco" click={cancelar} variant="red" size="lg"/>
                    </div>
                </div>
            </div>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container">

                <p className="lead mt-5">Minhas Empresas</p>Clique na empresa desejada para acessar o sistema. O cadastro e acesso à novas empresas deve passar por análise e, neste caso, é necessário aguardar.
                <div className="box shadow-sm d-flex justify-content-between mt-3">
                    <PettButton caption="Cadastrar Nova Empresa" icone="plus" click={novo} />
                    <PettButton caption="Sair" icone="exit_sign" click={logout} />
                </div>

                <PettGrid className="my-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="EMP_CNPJ" header="Cnpj" ></PettColumn>
                    <PettColumn field="EMP_NOME" header="Razão Social" sortable ></PettColumn>
                    <PettColumn field="EMP_FONE1" header="Fone" ></PettColumn>
                    <PettColumn field="EMP_STATUS" header="Status" body={bodyStatus} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="USE_ACESSO" header="Acesso" body={bodyAcesso} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="EMP_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'EMP_DTCADASTRO')} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="EMP_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'EMP_DTATUALIZACAO')} align="center" alignHeader="center"></PettColumn>
                    <PettColumn body={opcoesRegistro} header="Opções" exportable={false} align="center" alignHeader="center"></PettColumn>
                </PettGrid>

                <PettIf condicional={ carregando }>
                    <div className="container mb-5 text-center"><PettIcon name="runtime_spinner" size="32"/>Carregando...</div>
                </PettIf>

            </ColunaCentral>
        </PettIf>
    </>
}

export default MinhasEmpresas;