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
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import AtualizadoPor from '../../Componentes/AtualizadoPor';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import Loading from '../../Componentes/Loading';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { selectSimNao, selectStatusUsuarios } from '../../Combox';
import { formatarDataStr, formatarDataStr2, formatarHora, soNumeros, tratarCatch } from '../../Funcoes';

function Usuarios() {
    const { logout } = useContext(AuthContext);
    const [ listagem, setListagem ] = useState([]);
    const [ carregando, setCarregando ] = useState(false);
    const [ pagina, setPagina ] = useState(0);
    const [ final, setFinal ] = useState(false);
    const [ erro, setErro ] = useState(false);
    const [ disableFields, setDisableFields ] = useState(true);
    const [ pesquisa, setPesquisa ] = useState({ USU_CODIGO: '', USU_CPF: '', USU_EMAIL: '', USU_NOME: '' });
    const [ usuarioOri, setUsuarioOri ] = useState({});
    const [ usuario, setUsuario ] = useState({ 
        USU_ADMIN: '', 
        USU_APELIDO: '', 
        USU_AVATAR: '', 
        USU_CODIGO: '', 
        USU_CONFIRMACAO: '', 
        USU_CPF: '', 
        USU_DTATUALIZACAO: '', 
        USU_DTCADASTRO: '', 
        USU_EMAIL: '', 
        USU_FONE1: '', 
        USU_GESTOR: '', 
        USU_HASH: '', 
        USU_HRATUALIZACAO: '', 
        USU_HRCADASTRO: '', 
        USU_NOME: '',
        USU_STATUS: ''
    });
    const [ operacao, setOperacao ] = useState('inserir');
    const [ foneMask1, setFoneMask1 ] = useState('(99) 99999-999?9');
    const [ modalSenha, setModalSenha ] = useState({ show: false, codigo: '', nome: '' });
    const [ novaSenha, setNovaSenha ] = useState({ USU_PASSWORD: '' });

    async function listar(nPagina,bFinal,bLimpar) {
        if (!bFinal) {
            setCarregando(true);    
            const novaPagina=nPagina+1;
                        
            var formData = new FormData();
            formData.set('op','listar');
            formData.set('pagina',novaPagina);
            formData.set('USU_CODIGO',pesquisa.USU_CODIGO || '');
            formData.set('USU_CPF',pesquisa.USU_CPF || '');
            formData.set('USU_EMAIL',pesquisa.USU_EMAIL || '');
            formData.set('USU_NOME',pesquisa.USU_NOME || '');
            try {
                const response = await Api.post('admin/usuarios',formData);
                if (response.data.erro==='N') {
                    const novaListagem = [];
                    if (response.data.contador > 0) {
                        if (!bLimpar) {
                            novaListagem.push(...listagem); //novalistagem recebe listagem atual.
                            setListagem([]);
                        }
                        novaListagem.push(...response.data.msg); //novalistagem recebe mais a nova listagem.
                    } else {
                        //se ja tem uma listagem, continua com ela
                        //se a pesquisa retornou 30 registros, ao dar scroll para a pagina 2 que retorna com 0 registros, continua com a listagem atual.
                        if (novaPagina > 1) { 
                            novaListagem.push(...listagem); 
                        }
                    }

                    //verifica se pode conter mais registros. 
                    //se retornou com 30 registros, pode ser que ainda tenha mais.
                    //se retornou com menos de 30 registros, é pq chegou no final da lista.
                    //rpp = registros por pagina.
                    if (response.data.contador < response.data.rpp) {
                        setFinal(true);
                    }
                    
                    setListagem(novaListagem);
                    setCarregando(false);
                    setPagina(novaPagina);
                    setErro(false);
                } else {
                    response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
                }
            } catch (error) {
                tratarCatch('Usuarios listar',error,logout);
                setCarregando(false);
                setErro(true);
            };
        }
    }

    useEffect(() => {
        setOperacao('');
    },[]);

    function carregarMais() {
        listar(pagina,final,false);
    }

    function registroNulo() {
        setUsuario({
            USU_ADMIN: 'N', 
            USU_APELIDO: '', 
            USU_AVATAR: 'sem_foto.jpg', 
            USU_CODIGO: '', 
            USU_CONFIRMACAO: '', 
            USU_CPF: '', 
            USU_DTATUALIZACAO: '', 
            USU_DTCADASTRO: '', 
            USU_EMAIL: '', 
            USU_FONE1: '', 
            USU_GESTOR: 'N', 
            USU_HASH: '', 
            USU_HRATUALIZACAO: '', 
            USU_HRCADASTRO: '', 
            USU_NOME: '',
            USU_STATUS: 'A'
        });
    }

    function pesquisar() {
        setOperacao('listar');
        setListagem([]);
        setPagina(0);
        setFinal(false);
        listar(0,false,true);
    };

    function reset() {
        window.location.reload();
    };

    function novo() {
        registroNulo();
        setDisableFields(false);
        setOperacao('inserir');
    }
    
    function cancelarEdicao() {
        setUsuario(usuarioOri);
        setDisableFields(true);
        setOperacao('visualizar');
    }

    function cancelarInsercao() {
        setOperacao('listar');
    }

    async function excluir(item) {
        const confirmou = await PettMensagem.confirmar('Confirma Exclusão?', 'Tem certeza que deseja excluir '+item.nome+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','excluir');
            formData.set('USU_CODIGO',item.codigo);
            try {
                const response = await Api.post('admin/usuarios',formData);
                if (response.data.erro==='N') {
                    PettMensagem.erro('Yessss!',response.data.msg);
                    setPagina(0);
                    setFinal(false);
                    listar(0,false,true);
                    registroNulo();
                    setOperacao('listar');
                } else {
                    response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
                }
            } catch (error) {
                tratarCatch('Usuarios excluir',error,logout);
            }
        }
    }

    async function salvar() {
        const formData = new FormData();
        formData.set('op',operacao);
        formData.set('USU_ADMIN',usuario.USU_ADMIN || '');
        formData.set('USU_APELIDO',usuario.USU_APELIDO || '');
        formData.set('USU_AVATAR',usuario.USU_AVATAR || '');
        formData.set('USU_CODIGO',usuario.USU_CODIGO || '');
        formData.set('USU_CONFIRMACAO',usuario.USU_CONFIRMACAO || '');
        formData.set('USU_CPF',usuario.USU_CPF || '');
        formData.set('USU_EMAIL',usuario.USU_EMAIL || '');
        formData.set('USU_FONE1',usuario.USU_FONE1 || '');
        formData.set('USU_GESTOR',usuario.USU_GESTOR || '');
        formData.set('USU_NOME',usuario.USU_NOME || '');
        formData.set('USU_STATUS',usuario.USU_STATUS || '');
        try {
            const response = await Api.post('admin/usuarios',formData);
            if (response.data.erro==='N') {
                let novaListagem = [];
                if (operacao==='inserir') { 
                    //inserção.
                    PettMensagem.sucesso('Yessss!','Usuário cadastrado com sucesso.');
                    novaListagem.push(...listagem);
                    novaListagem.push(response.data.msg);
                } else {
                    //edição.
                    PettMensagem.sucesso('Yessss!','Usuário atualizado com sucesso.');
                    novaListagem = listagem.filter(item => (String(item.USU_CODIGO) !== String(usuario.USU_CODIGO)));
                    novaListagem.unshift(response.data.msg); //adiciona no inicio da listagem.
                }

                //ordena a listagem.
                const novaListagemSort = novaListagem.sort(function(c1,c2) {
                    if (c1.USU_NOME > c2.USU_NOME) return  1;
                    if (c1.USU_NOME < c2.USU_NOME) return -1;
                    return 0;
                });

                setListagem(novaListagemSort);
                visualizar(response.data.msg.USU_CODIGO);
            } 
            if (response.data.erro==='S') {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('Usuarios salvar',error,logout);
        }
    }

    async function editar(codigo) {
        getRegistro(codigo);
        setDisableFields(false);
        setUsuarioOri(usuario);
        setOperacao('atualizar');
    }

    async function visualizar(codigo) {
        getRegistro(codigo);
        setDisableFields(true);
        setOperacao('visualizar');
    }

    function abrirModalSenha(item) {
        setNovaSenha({ USU_PASSWORD: '' });
        setModalSenha({ show: true, codigo: item.USU_CODIGO, nome: item.USU_NOME });
    }

    function fecharModalSenha() {
        setNovaSenha({ USU_PASSWORD: '' });
        setModalSenha({ show: false, codigo: '', nome: '' });
    }

    const senhaKeyDown = (e) => {
        if (e.keyCode === 13) {
            resetarSenha();
        }
    }

    async function resetarSenha() {
        if (!novaSenha.USU_PASSWORD) {
            PettMensagem.erro('Epaaa!','Digite a nova senha.');
            return;
        }
        const formData = new FormData();
        formData.set('op','reset');
        formData.set('USU_CODIGO',modalSenha.codigo);
        formData.set('USU_PASSWORD',novaSenha.USU_PASSWORD);
        try {
            const response = await Api.post('admin/usuarios',formData);
            if (response.data.erro==='N') {
                fecharModalSenha();
                PettMensagem.sucesso('Yessss!',response.data.msg);
            } else {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('Usuarios resetarSenha',error,logout);
        }
    }

    async function getRegistro(codigo) {
        setCarregando(true);
        var formData = new FormData();
        formData.set('op','visualizar');
        formData.set('USU_CODIGO',codigo);             
        try {
            const response = await Api.post('admin/usuarios',formData);
            if (response.data.erro==='N') {
                setUsuario(response.data.msg);
            } else {
                setOperacao('listar');
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
            setCarregando(false);
        } catch (error) {
            tratarCatch('Usuarios getRegistro',error,logout);
            // setCarregando(false);
        }
    }

    useEffect(() => {
        const valor = usuario.USU_FONE1 || '';
        if (soNumeros(valor).length === 10) {
            setFoneMask1('(99) 9999-9999?9');
        } else if (soNumeros(valor).length === 11) {
            setFoneMask1('(99) 99999-999?9');
        } else if (soNumeros(valor).length < 10) {
            setFoneMask1('(99) 99999-999?9'); 
        }
    }, [usuario.USU_FONE1]); 
    
    const onRowSelect = (event) => {
        visualizar(event.USU_CODIGO);
    };

    const opcoesRegistro = (rowData) => {
        return (
            <React.Fragment>
                <Link to="" onClick={() => abrirModalSenha(rowData)} title="Resetar Senha"><PettIcon name="key"/></Link>
                <Link to={'/admin/usuariosempresas/'+rowData.USU_CODIGO} title="Empresas do Usuário"><PettIcon name="small_business"/></Link>
            </React.Fragment>
        );
    }

    const bodyAdmin = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.USU_ADMIN==='S'}>
                    <span className="badge bg-success">SIM</span>
                </PettIf>
                <PettIf condicional={rowData.USU_ADMIN==='N'}>
                    <span className="badge bg-danger">NÃO</span>
                </PettIf>
            </React.Fragment>
        );
    }

    const bodyGestor = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.USU_GESTOR==='S'}>
                    <span className="badge bg-success">SIM</span>
                </PettIf>
                <PettIf condicional={rowData.USU_GESTOR==='N'}>
                    <span className="badge bg-danger">NÃO</span>
                </PettIf>
            </React.Fragment>
        );
    }

    const bodyStatus = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.USU_STATUS==='A'}>
                    <span className="badge bg-success">ATIVO</span>
                </PettIf>
                <PettIf condicional={rowData.USU_STATUS==='I'}>
                    <span className="badge bg-danger">INATIVO</span>
                </PettIf>
                <PettIf condicional={rowData.USU_STATUS==='C'}>
                    <span className="badge bg-primary">CANCELADO</span>
                </PettIf>
            </React.Fragment>
        );
    }

    const bodyHash = (rowData) => {
        return (
            <React.Fragment>
                <code>{rowData.USU_HASH}</code>
            </React.Fragment>
        );
    }

    return <>
        <BarraSuperior />
        
        <BarraOpcoes titulo="Cadastro de Usuários" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={pesquisar }                         condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={novo}                               condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={ () => excluir({codigo: usuario.USU_CODIGO, nome: usuario.USU_NOME}) } condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={ () => editar(usuario.USU_CODIGO) } condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={salvar}                             condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao }                  condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao }                    condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario="" data={usuario.USU_DTATUALIZACAO} hora={usuario.USU_HRATUALIZACAO}  condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregando}/>
                <PettIf condicional={!carregando}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CÓDIGO" name="USU_CODIGO" value={usuario.USU_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="DATA CADASTRO" name="USU_DTCADASTRO" value={formatarDataStr(usuario.USU_DTCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="HORA CADASTRO" name="USU_HRCADASTRO" value={formatarHora(usuario.USU_HRCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="DATA ATUALIZAÇÃO" name="USU_DTATUALIZACAO" value={formatarDataStr(usuario.USU_DTATUALIZACAO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="HORA ATUALIZAÇÃO" name="USU_HRATUALIZACAO" value={formatarHora(usuario.USU_HRATUALIZACAO)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-2 col-sm-6" label="STATUS" name="USU_STATUS" value={usuario.USU_STATUS} set={setUsuario} options={selectStatusUsuarios} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="NOME" name="USU_NOME" value={usuario.USU_NOME} set={setUsuario} readOnly={disableFields} disabled={disableFields} upper={false}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="EMAIL" name="USU_EMAIL" value={usuario.USU_EMAIL} set={setUsuario} readOnly={disableFields} disabled={disableFields} upper={false}/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="APELIDO" name="USU_APELIDO" value={usuario.USU_APELIDO} set={setUsuario} readOnly={disableFields} disabled={disableFields} upper={false}/>
                        <PettFieldMask size="col-lg-2 col-md-2 col-sm-6" label="CPF" name="USU_CPF" value={usuario.USU_CPF} set={setUsuario} mask="999.999.999-99" readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMask size="col-lg-2 col-md-2 col-sm-6" label="FONE" name="USU_FONE1" value={usuario.USU_FONE1} set={setUsuario} mask={foneMask1} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CONFIRMAÇÃO" name="USU_CONFIRMACAO" value={usuario.USU_CONFIRMACAO} set={setUsuario} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldDrop size="col-lg-2 col-md-2 col-sm-6" label="ADMIN" name="USU_ADMIN" value={usuario.USU_ADMIN} set={setUsuario} options={selectSimNao} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-lg-2 col-md-2 col-sm-6" label="GESTOR" name="USU_GESTOR" value={usuario.USU_GESTOR} set={setUsuario} options={selectSimNao} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="AVATAR" name="USU_AVATAR" value={usuario.USU_AVATAR} set={setUsuario} readOnly={disableFields} disabled={disableFields} upper={false}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="HASH" name="USU_HASH" value={usuario.USU_HASH} set={setUsuario} readOnly disabled/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="USU_CODIGO" value={pesquisa.USU_CODIGO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CPF" name="USU_CPF" value={pesquisa.USU_CPF} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="NOME" name="USU_NOME" value={pesquisa.USU_NOME} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="EMAIL" name="USU_EMAIL" value={pesquisa.USU_EMAIL} set={setPesquisa} upper={false}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={pesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="USU_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="USU_CPF" header="CPF" sortable ></PettColumn>
                    <PettColumn field="USU_NOME" header="Nome" sortable ></PettColumn>
                    <PettColumn field="USU_APELIDO" header="Apelido" sortable ></PettColumn>
                    <PettColumn field="USU_EMAIL" header="Email" sortable ></PettColumn>
                    <PettColumn field="USU_ADMIN" body={bodyAdmin} header="Admin" sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="USU_GESTOR" body={bodyGestor} header="Gestor" sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="USU_STATUS" body={bodyStatus} header="Status" sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="USU_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'USU_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="USU_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'USU_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="USU_CONFIRMACAO" header="Confirmação" align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="USU_HASH" body={bodyHash} header="Hash"></PettColumn>
                    <PettColumn body={opcoesRegistro} header="Opções" exportable={false} align="center" alignHeader="center"></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={carregarMais} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>

        <PettModal show={modalSenha.show} size="sm" title={'Redefinir Senha - '+modalSenha.nome} onHide={fecharModalSenha}>
            <div className="row g-1">
                <PettFieldPass size="col-12 mb-1" label="NOVA SENHA" name="USU_PASSWORD" value={novaSenha.USU_PASSWORD} set={setNovaSenha} maxLength={20} autoComplete="new-password" autoFocus required onKeyDown={(e) => senhaKeyDown(e)}/>
            </div>
            <PettModal.Footer>
                <PettButton caption="Redefinir" icone="checkmark" click={resetarSenha} />
                <PettButton caption="Cancelar" icone="cancel" click={fecharModalSenha} />
            </PettModal.Footer>
        </PettModal>

        <Rodape />
    </>
}

export default Usuarios;