import React, { useContext, useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIcon } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';
import { PettSwitch } from 'pett-componentes';

import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Rodape from '../../Componentes/Rodape';
import UsuariosLoc from './UsuariosLoc';
import { tratarCatch } from '../../Funcoes';
import { useLocalizar, USUARIOS } from '../../Hooks/useLocalizar';

const mapaUsuarios = { USE_USUARIO: 'USU_CODIGO', USU_NOME: 'USU_NOME' };

function EmpresasUsuarios() {
    const { empresa_id } = useParams();
    const { logout } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const [ listagem, setListagem ] = useState([]);
    const [ carregando, setCarregando ] = useState(true);
    const [ empresa, setEmpresa ] = useState({});
    const [ empresaUsuario, setEmpresaUsuario ] = useState({ 
        USE_ACESSO: 'S', 
        USE_FIRENET: '', 
        USE_EMPRESA: '', 
        USE_USUARIO: '', 
    });
    const [ showNovo, setShowNovo ] = useState(false);
    const [ showUsuariosLoc, setShowUsuariosLoc ] = useState(false);

    async function listar() {
        setCarregando(true);    
        var formData = new FormData();
        formData.set('op','listar');
        formData.set('USE_EMPRESA',empresa_id);
        try {
            const response = await Api.post('admin/empresasusuarios',formData);
            if (response.data.erro==='N') {
                setListagem(response.data.msg);
                setCarregando(false);
            } else {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('EmpresasUsuarios listar',error,logout);
            setCarregando(false);
        }
    }

    async function getEmpresa() {
        const formData = new FormData();
        formData.set('op','visualizar');
        formData.set('EMP_CODIGO',empresa_id || '');
        try {
            const response = await Api.post('admin/empresas',formData);
            if (response.data.erro==='N') {
                setEmpresa(response.data.msg);
            }
            else {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('EmpresasUsuarios getEmpresa',error,logout);
            setCarregando(false);
        }
    }

    useEffect(() => {
        getEmpresa();
        listar();
    },[]);

    function registroNulo() {
        setEmpresaUsuario({
            USE_ACESSO: '', 
            USE_FIRENET: '', 
            USE_EMPRESA: '', 
            USE_USUARIO: '', 
        });
    }

    function novo() {
        registroNulo();
        setShowNovo(true);
    }
    
    async function excluir(item) {
        const confirmou = await PettMensagem.confirmar('Confirma Exclusão?','Tem certeza que deseja excluir '+item.EMP_NOME+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','excluir');
            formData.set('USE_EMPRESA',item.USE_EMPRESA);
            formData.set('USE_USUARIO',item.USE_USUARIO);
            try {
                const response = await Api.post('admin/empresasusuarios',formData);
                if (response.data.erro==='N') {
                    PettMensagem.sucesso('Yessss!',response.data.msg);
                    registroNulo();
                    listar();
                } else {
                    response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
                }
            } catch (error) {
                tratarCatch('EmpresasUsuarios excluir',error,logout);
            }
        }
    }

    async function salvar() {
        const formData = new FormData();
        formData.set('op','inserir');
        formData.set('USE_EMPRESA',empresa.EMP_CODIGO || '');
        formData.set('USE_FIRENET',empresaUsuario.USE_FIRENET || '');
        formData.set('USE_USUARIO',empresaUsuario.USE_USUARIO || '');
        try {
            const response = await Api.post('admin/empresasusuarios',formData);
            if (response.data.erro==='N') {
                PettMensagem.sucesso('Yessss!','Usuário cadastrado com sucesso.');

                let novaListagem = [];
                novaListagem.push(...listagem);
                novaListagem.push(response.data.msg);

                //ordena a listagem.
                const novaListagemSort = novaListagem.sort(function(c1,c2) {
                    if (c1.USU_NOME > c2.USU_NOME) return  1;
                    if (c1.USU_NOME < c2.USU_NOME) return -1;
                    return 0;
                });

                setListagem(novaListagemSort);
                registroNulo();
                setShowNovo(false);
                listar();
            } 
            if (response.data.erro==='S') {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('EmpresasUsuarios salvar',error,logout);
        }
    }

    async function setAcesso(e,usuario) {
        const formData = new FormData();
        formData.set('op','acesso');
        formData.set('USE_EMPRESA',empresa_id || '');
        formData.set('USE_USUARIO',usuario || '');
        formData.set('USE_ACESSO',e.value===true?'S':'N');
        try {
            const response = await Api.post('admin/empresasusuarios',formData);
            if (response.data.erro==='N') {
                const listagemAtualizada = listagem.map(registro => {
                    //retorna o registro com o campo atualizado.
                    if (String(registro.USE_USUARIO) === String(usuario) && String(registro.USE_EMPRESA) === String(empresa_id)) {
                        return {...registro, USE_ACESSO: e.value===true?'S':'N'}
                    }    
                    //retorna o registro original.
                    return registro;
                });
                setListagem(listagemAtualizada);
            } 
            if (response.data.erro==='S') {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('EmpresasUsuarios setAcesso',error,logout);
        }
    }

    const opcoesAcesso = (rowData) => {
        return <>
            <div className="d-flex justify-content-center align-items-center">
                <PettSwitch checked={rowData.USE_ACESSO==="S"} onChange={(e) => setAcesso(e,rowData.USE_USUARIO)} />
            </div>
        </>
    }

    const opcoesRegistro = (rowData) => {
        return <>
            <div className="d-flex justify-content-center align-items-center">
                <Link to="" onClick={() => excluir({USE_EMPRESA: rowData.USE_EMPRESA, USE_USUARIO: rowData.USE_USUARIO, EMP_NOME: rowData.EMP_NOME})} title="Excluir"><PettIcon name="trash"/></Link>
            </div>
        </>
    }

    const bodyStatus = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.EMP_STATUS==='A'}>
                    <span className="badge bg-success">ATIVO</span>
                </PettIf>
                <PettIf condicional={rowData.EMP_STATUS==='I'}>
                    <span className="badge bg-danger">INATIVO</span>
                </PettIf>
                <PettIf condicional={rowData.EMP_STATUS==='N'}>
                    <span className="badge bg-primary">NOVA</span>
                </PettIf>
            </React.Fragment>
        );
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Usuários da Empresa" linkBack="/admin/empresas">
            <PettButton caption="Novo" icone="plus" click={novo}/>
        </BarraOpcoes>
        <ColunaCentral left="false" right="false" className="container-fluid pt-3">
            <PettIf condicional={carregando===false}>
                <p className="lead">Usuários associados à empresa: <strong>{empresa.EMP_CODIGO+' - '+empresa.EMP_NOME}</strong></p>
                <PettIf condicional={ listagem.length > 0}>
                    <PettGrid className="mt-4" listagem={listagem} 
                        //rowSelect={onRowSelect}
                    >
                        <PettColumn field="USE_ACESSO" header="Acesso" body={opcoesAcesso} align="center" alignHeader="center"></PettColumn>
                        <PettColumn field="EMP_STATUS" body={bodyStatus} header="Status Emp" align="center" alignHeader="center"></PettColumn>
                        <PettColumn field="USE_FIRENET" header="Usuário no Firenet" sortable ></PettColumn>
                        <PettColumn field="USE_USUARIO" header="Usuário" sortable ></PettColumn>
                        <PettColumn field="USU_NOME" header="Nome Usuário" sortable ></PettColumn>
                        <PettColumn field="USU_EMAIL" header="Email" sortable ></PettColumn>
                        <PettColumn field="USU_FONE1" header="Fone" ></PettColumn>
                        <PettColumn body={opcoesRegistro} header="Opções" exportable={false} align="center" alignHeader="center"></PettColumn>
                    </PettGrid>
                </PettIf>
            </PettIf>
        </ColunaCentral>
        <Rodape />

        <PettModal show={showNovo} size="lg" title="Associar Usuários..." position="top">
            <div className="row g-1">
                <PettFieldLoc size="col-2" label="USUÁRIO" name="USE_USUARIO" value={empresaUsuario.USE_USUARIO} set={setEmpresaUsuario} onClick={() => setShowUsuariosLoc(true)} onBlur={(e) => localizar(USUARIOS, e.target.value, setEmpresaUsuario, mapaUsuarios)} />
                <PettFieldText size="col-10" label="NOME USUARIO" name="USU_NOME" value={empresaUsuario.USU_NOME} readOnly disabled/>
                {/* <PettFieldLoc size="col-12" label="USUÁRIO" name1="USE_USUARIO" name2="USU_NOME" value1={empresaUsuario.USE_USUARIO} value2={empresaUsuario.USU_NOME} set={setEmpresaUsuario} onClick={() => setShowUsuariosLoc(true)} onBlur={(e) => usuariosLocalizar(e)} /> */}
                <PettFieldText size="col-12" label="LOGIN NO FIRENET" name="USE_FIRENET" value={empresaUsuario.USE_FIRENET} set={setEmpresaUsuario} />
            </div>
            <PettModal.Footer>
                <div className="d-flex gap-1">
                    <PettButton caption="Salvar" icone="checkmark" click={salvar} />
                    <PettButton caption="Cancelar" icone="cancel" click={() => setShowNovo(false) } />
                </div>
            </PettModal.Footer>

        </PettModal>
        <UsuariosLoc showModal={showUsuariosLoc} onCloseModal={(data) => { selecionar(data, setEmpresaUsuario, mapaUsuarios); setShowUsuariosLoc(false); }}/>
    </>
}

export default EmpresasUsuarios;