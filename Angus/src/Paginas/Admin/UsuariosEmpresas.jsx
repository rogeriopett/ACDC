import React, { useContext, useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';

import { PettButton, PettSwitch } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettIcon } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import EmpresasLoc from './EmpresasLoc';
import Rodape from '../../Componentes/Rodape';
import { tratarCatch } from '../../Funcoes';
import { useLocalizar, EMPRESAS } from '../../Hooks/useLocalizar';

const mapaEmpresas = { USE_EMPRESA: 'EMP_CODIGO', EMP_NOME: 'EMP_NOME' };

function UsuariosEmpresas() {
    const { usuario_id } = useParams();
    const { logout } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const [ listagem, setListagem ] = useState([]);
    const [ carregando, setCarregando ] = useState(true);
    const [ usuario, setUsuario ] = useState({});
    const [ usuarioEmpresa, setUsuarioEmpresa ] = useState({ 
        USE_ACESSO: 'S', 
        USE_FIRENET: '', 
        USE_EMPRESA: '', 
        USE_USUARIO: '', 
    });
    const [ showNovo, setShowNovo ] = useState(false);
    const [ showEmpresasLoc, setShowEmpresasLoc ] = useState(false);

    async function listar() {
        setCarregando(true);    
        var formData = new FormData();
        formData.set('op','listar');
        formData.set('USE_USUARIO',usuario_id);
        try {
            const response = await Api.post('admin/usuariosempresas',formData);
            if (response.data.erro==='N') {
                setListagem(response.data.msg);
                setCarregando(false);
            } else {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('UsuariosEmpresas listar',error,logout);
            setCarregando(false);
        }
    }

    async function getUsuario() {
        const formData = new FormData();
        formData.set('op','visualizar');
        formData.set('USU_CODIGO',usuario_id || '');
        try {
            const response = await Api.post('admin/usuarios',formData);
            if (response.data.erro==='N') {
                setUsuario(response.data.msg);
            }
            else {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('UsuariosEmpresas getUsuario',error,logout);
            setCarregando(false);
        }
    }

    useEffect(() => {
        getUsuario();
        listar();
        //eslint-disable-next-line
    },[]);

    function registroNulo() {
        setUsuarioEmpresa({
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
                const response = await Api.post('admin/usuariosempresas',formData);
                if (response.data.erro==='N') {
                    PettMensagem.sucesso('Yessss!',response.data.msg);
                    registroNulo();
                    listar();
                } else {
                    response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
                }
            } catch (error) {
                tratarCatch('UsuariosEmpresas excluir',error,logout);
            }
        }
    }

    async function salvar() {
        const formData = new FormData();
        formData.set('op','inserir');
        formData.set('USE_EMPRESA',usuarioEmpresa.USE_EMPRESA || '');
        formData.set('USE_FIRENET',usuarioEmpresa.USE_FIRENET || '');
        formData.set('USE_USUARIO',usuario.USU_CODIGO || '');
        try {
            const response = await Api.post('admin/usuariosempresas',formData);
            if (response.data.erro==='N') {
                PettMensagem.sucesso('Yessss!','Empresa cadastrada com sucesso.');

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
            tratarCatch('UsuariosEmpresas salvar',error,logout);
        }
    }

    async function setAcesso(e,empresa) {
        const formData = new FormData();
        formData.set('op','acesso');
        formData.set('USE_EMPRESA',empresa || '');
        formData.set('USE_USUARIO',usuario_id || '');
        formData.set('USE_ACESSO',e.value===true?'S':'N');
        try {
            const response = await Api.post('admin/usuariosempresas',formData);
            if (response.data.erro==='N') {
                const listagemAtualizada = listagem.map(registro => {
                    //retorna o registro com o campo atualizado.
                    if (String(registro.USE_EMPRESA) === String(empresa) && String(registro.USE_USUARIO) === String(usuario_id)) {
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
            tratarCatch('UsuariosEmpresas setAcesso',error,logout);
        }
    }

    const opcoesAcesso = (rowData) => {
        return <>
            <div className="d-flex justify-content-center align-items-center">
                <PettSwitch checked={rowData.USE_ACESSO==="S"} onChange={(e) => setAcesso(e,rowData.USE_EMPRESA)} />
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
                    <span className="badge bg-success">ATIVA</span>
                </PettIf>
                <PettIf condicional={rowData.EMP_STATUS==='I'}>
                    <span className="badge bg-primary">INATIVA</span>
                </PettIf>
                <PettIf condicional={rowData.EMP_STATUS==='N'}>
                    <span className="badge bg-primary">NOVA</span>
                </PettIf>
            </React.Fragment>
        );
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Empresas do Usuário" linkBack="/admin/usuarios">
            <PettButton caption="Novo" icone="plus" click={novo}/>
        </BarraOpcoes>
        <ColunaCentral left="false" right="false" className="container-fluid pt-3">
            <PettIf condicional={carregando===false}>
                <p className="lead">Empresas associadas ao usuario: <strong>{usuario.USU_CODIGO+' - '+usuario.USU_NOME}</strong></p>
                <PettGrid className="mt-4" listagem={listagem}>
                    <PettColumn field="USE_ACESSO" header="Acesso" body={opcoesAcesso} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="USE_FIRENET" header="Login no Firenet" ></PettColumn>
                    <PettColumn field="EMP_STATUS" header="Status Emp" body={bodyStatus} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="USE_EMPRESA" header="Empresa" sortable ></PettColumn>
                    <PettColumn field="EMP_NOME" header="Nome Empresa" sortable ></PettColumn>
                    <PettColumn field="EMP_FONE1" header="Fone" ></PettColumn>
                    <PettColumn body={opcoesRegistro} header="Opções" exportable={false} align="center" alignHeader="center"></PettColumn>
                </PettGrid>
            </PettIf>
        </ColunaCentral>
        <Rodape />

        <PettModal show={showNovo} title="Associar Empresas" size="lg" position="top">
            <div className="row g-1">
                <PettFieldLoc size="col-2" label="EMPRESA" name="USE_EMPRESA" value={usuarioEmpresa.USE_EMPRESA} set={setUsuarioEmpresa} onClick={() => setShowEmpresasLoc(true)} onBlur={(e) => localizar(EMPRESAS, e.target.value, setUsuarioEmpresa, mapaEmpresas)}/>
                <PettFieldText size="col-10" label="EMPRESA" name="EMP_NOME" value={usuarioEmpresa.EMP_NOME} readOnly disabled/>
                <PettFieldText size="col-12" label="LOGIN NO FIRENET" name="USE_FIRENET" value={usuarioEmpresa.USE_FIRENET} set={setUsuarioEmpresa}/>
            </div>
            <PettModal.Footer>
                <div className="d-flex gap-1">
                    <PettButton caption="Salvar" icone="checkmark" click={salvar} />
                    <PettButton caption="Cancelar" icone="cancel" click={() => setShowNovo(false) } />
                </div>
            </PettModal.Footer>
        </PettModal>
        <EmpresasLoc showModal={showEmpresasLoc} onCloseModal={(data) => { selecionar(data, setUsuarioEmpresa, mapaEmpresas); setShowEmpresasLoc(false); }}/>
    </>
}

export default UsuariosEmpresas;