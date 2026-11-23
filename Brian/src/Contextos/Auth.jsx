//Atualizacoes:
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
import React, { useEffect, useState, createContext } from 'react';
import { useNavigate } from 'react-router-dom';
import { jwtDecode } from 'jwt-decode';

import Api from '../Api';

export const AuthContext = createContext();

export const AuthProvider = ({children}) => {
 
    const navigate = useNavigate();
    const [usuario, setUsuario] = useState(null);
    const [usuarioLogin, setUsuarioLogin] = useState('');
    const [usuarioNome, setUsuarioNome] = useState('');
    const [usuarioStatus, setUsuarioStatus] = useState('');
    const [usuarioVendedor, setUsuarioVendedor] = useState('');
    const [versaoBase, setVersaoBase] = useState('');
    const [empresa, setEmpresa] = useState('');
    const [logado, setLogado] = useState(false);
    const [mensagem, setMensagem] = useState('');
    const [carregando, setCarregando] = useState(true);

    useEffect(() => {
        const usuarioStorage = localStorage.getItem('usuario');
        const tokenStorage = localStorage.getItem('token');
        if (usuarioStorage && tokenStorage) {
            const jwtDecoded = jwtDecode(tokenStorage);
            setUsuario(JSON.parse(usuarioStorage));
            setLogado(true);
            setUsuarioLogin(jwtDecoded.login);
            setUsuarioNome(jwtDecoded.nome);
            setUsuarioStatus(jwtDecoded.status);
            setUsuarioVendedor(jwtDecoded.vendedor);
            setVersaoBase(jwtDecoded.versaoBase);
            setEmpresa(jwtDecoded.empresa);
            Api.defaults.headers.common['Authorization'] = `Bearer ${tokenStorage}`;
        }
        setCarregando(false);
    }, []);

    const setarToken = (response, login, senha) => {
        const token = response.data.usuario.USU_TOKEN;
        //const login = response.data.usuario.USU_LOGIN;
        const nome = response.data.usuario.USU_NOME;
        const status = response.data.usuario.USU_STATUS;
        const vendedor = response.data.usuario.USU_VENDEDOR;
        const versaoBase = response.data.usuario.VER_VERSAOBASE;
        const empresa = response.data.usuario.EMP_NOME;
        const jwtDecoded = jwtDecode(response.data.usuario.USU_TOKEN);
        localStorage.setItem('usuario', JSON.stringify({login, nome, status, vendedor, empresa}));
        localStorage.setItem('token',token);
        Api.defaults.headers.common['Authorization'] = `Bearer ${token}`;
        setUsuario({ login, nome, status, vendedor, versaoBase });
        setUsuarioLogin(jwtDecoded.login);
        setUsuarioNome(jwtDecoded.nome);
        setUsuarioStatus(jwtDecoded.status);
        setUsuarioVendedor(jwtDecoded.vendedor);
        setVersaoBase(jwtDecoded.versao);
        setEmpresa(jwtDecoded.empresa);
    }

    async function logar(login, senha) {
        if (!login || !senha) {
            setMensagem("Informe todos os campos.");
            return
        }
        setMensagem('');
        var formData = new FormData();
        formData.set('op', 'login');
        formData.set('login', login);
        formData.set('senha', senha);

        try {
            const response = await Api.post('usuario/login',formData);
            if (response.data.erro==="S") {
                setMensagem(response.data.msg);
                setLogado(false);
                setUsuarioLogin('');
                setUsuarioNome('');
                setUsuarioStatus('');
                setUsuarioVendedor('');
                setVersaoBase('');
                setEmpresa('');
                localStorage.removeItem('usuario');
                localStorage.removeItem('token');
                        //navigate('/login');
            } else {
                setarToken(response, login, senha);
                setLogado(true);
                setUsuarioLogin(response.data.usuario.USU_LOGIN);
                setUsuarioNome(response.data.usuario.USU_NOME);
                setUsuarioStatus(response.data.usuario.USU_STATUS);
                setUsuarioVendedor(response.data.usuario.USU_VENDEDOR);
                setVersaoBase(response.data.usuario.VER_VERSAOBASE);
                setEmpresa(response.data.usuario.EMP_NOME);
                setMensagem('');
                navigate('/home');
                    // if (response.data.usuario.USU_STATUS==='I') {
                    //     navigate('/confirmarcadastro');
                    // }
                    // if (response.data.usuario.USU_STATUS==='A') {
                    //     navigate('/vitrine');
                    // } else {
                    //    // navigate('/login');
                    // }
            }
        } catch (error) {
            console.log('CATCH',error)
        }
    };

    const logout = () => {
        Api.defaults.headers.Authorization = null;
        Api.defaults.headers.common['Authorization'] = null;
        localStorage.removeItem('usuario');
        localStorage.removeItem('token');
        setUsuario(null);
        setLogado(false);
        setUsuarioLogin('');
        setUsuarioNome('');
        setUsuarioStatus('');
        setUsuarioVendedor('');
        setVersaoBase('');
        setEmpresa('');
        //navigate('/login', { 'replace': true });
        window.location.reload()
    };

    return (
        // <AuthContext.Provider value={{logado: !!usuario, usuario, carregando, mensagem, logar, logout}}>
        <AuthContext.Provider value={{logado, usuario, usuarioLogin, usuarioNome, usuarioStatus, usuarioVendedor, empresa, carregando, mensagem, logar, logout, versaoBase}}>
            { children }
        </AuthContext.Provider>
    )
}