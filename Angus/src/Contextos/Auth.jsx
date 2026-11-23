import { useCallback, useContext, useEffect, useState, createContext } from 'react';
import { jwtDecode as jwt_decode } from "jwt-decode";
import Api from '../Api';
import { TemaContext } from './Temas';

export const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
    const { limparTema } = useContext(TemaContext);

    // Estrutura inicial do usuário
    const usuarioVazio = { 
        login: '', 
        nome: '', 
        status: '', 
        admin: 'N', 
        gestor: 'N', 
        avatar: '', 
        empresas: [] 
    };

    const [usuario, setUsuario] = useState(usuarioVazio);
    const [empresaSelecionada, setEmpresaSelecionada] = useState({});
    const [logado, setLogado] = useState(false);
    const [mensagem, setMensagem] = useState('');
    const [carregando, setCarregando] = useState(true);

    const limparSessao = useCallback(() => {
        delete Api.defaults.headers.common['Authorization'];
        localStorage.removeItem('usuario');
        localStorage.removeItem('token');
        localStorage.removeItem('empresaSelecionada');
        
        setUsuario(usuarioVazio);
        setEmpresaSelecionada({});
        setLogado(false);
        limparTema();
    }, [limparTema]);

    // Validação de Token e Recuperação de Sessão
    useEffect(() => {
        const usuarioStorage = localStorage.getItem('usuario');
        const tokenStorage = localStorage.getItem('token');
        const empresaSelStorage = localStorage.getItem('empresaSelecionada');
        
        if (usuarioStorage && tokenStorage) {
            try {
                const jwtDecoded = jwt_decode(tokenStorage);
                
                if (jwtDecoded.exp * 1000 < Date.now()) {
                    limparSessao();
                } else {
                    const userParsed = JSON.parse(usuarioStorage);
                    setUsuario(userParsed);
                    setLogado(true);
                    
                    if (empresaSelStorage) {
                        setEmpresaSelecionada(JSON.parse(empresaSelStorage));
                    }

                    Api.defaults.headers.common['Authorization'] = `Bearer ${tokenStorage}`;
                }
            } catch (error) {
                limparSessao();
            }
        }
        setCarregando(false);
    }, [limparSessao]);

    const setarSessao = (dadosApi, loginInformado) => {
        const token = dadosApi.USU_TOKEN;
        
        // Criamos o objeto de usuário com o array de empresas vindo do Delphi (USUEMP)
        const dadosParaGuardar = {
            login: loginInformado || dadosApi.USU_EMAIL,
            nome: dadosApi.USU_NOME,
            status: dadosApi.USU_STATUS,
            admin: dadosApi.USU_ADMIN,
            gestor: dadosApi.USU_GESTOR,
            avatar: dadosApi.USU_AVATAR,
            empresas: dadosApi.USUEMP || [] // Lista de empresas do usuário
        };

        localStorage.setItem('usuario', JSON.stringify(dadosParaGuardar));
        localStorage.setItem('token', token);
        
        // Seleciona automaticamente a primeira empresa se houver
        if (dadosParaGuardar.empresas.length > 0) {
            const primeiraEmpresa = dadosParaGuardar.empresas[0];
            setEmpresaSelecionada(primeiraEmpresa);
            localStorage.setItem('empresaSelecionada', JSON.stringify(primeiraEmpresa));
        }

        Api.defaults.headers.common['Authorization'] = `Bearer ${token}`;
        setUsuario(dadosParaGuardar);
        setLogado(true);
        setMensagem('');
    };

    // const setarEmpresa = (empresa) => {
    //     setEmpresaSelecionada(empresa);
    //     localStorage.setItem('empresaSelecionada', JSON.stringify(empresa));
    // };
    const setarEmpresa = (novaEmpresa) => {
        // 1. Atualiza o estado da empresa selecionada e o storage
        setEmpresaSelecionada(novaEmpresa);
        localStorage.setItem('empresaSelecionada', JSON.stringify(novaEmpresa));

        // 2. Verifica se a empresa já existe no array do usuário (comparando pelo ID, ex: EMP_CODIGO)
        // Ajuste o campo 'EMP_CODIGO' para a chave de identificação correta do seu objeto de empresa
        const existe = usuario.empresas.some(e => e.EMP_CODIGO === novaEmpresa.EMP_CODIGO);

        if (!existe) {
            // 3. Se não existe, cria um novo estado de usuário incluindo a nova empresa
            const novoEstadoUsuario = {
                ...usuario,
                empresas: [...usuario.empresas, novaEmpresa]
            };

            // 4. Atualiza o estado e o localStorage
            setUsuario(novoEstadoUsuario);
            localStorage.setItem('usuario', JSON.stringify(novoEstadoUsuario));
        }
    };

    const atualizarAvatar = (novoAvatar) => {
        const novoEstado = { ...usuario, avatar: novoAvatar };
        setUsuario(novoEstado);
        localStorage.setItem('usuario', JSON.stringify(novoEstado));
    };

    async function logar(login, senha) {
        setMensagem("");
        if (!login || !senha) {
            setMensagem("Informe todos os campos.");
            return;
        }

        const formData = new FormData();
        formData.set('op', 'login');
        formData.set('login', login);
        formData.set('senha', senha);

        try {
            const response = await Api.post('usuario/login', formData);           
            if (response.data.erro === "S") {
                setMensagem(response.data.msg);
                limparSessao();
            } else {
                setarSessao(response.data.usuario, login);
            }
        } catch (error) {
            setMensagem("Erro ao conectar com o servidor.");
            console.error('Erro Login:', error);
        }
    } 

    const logout = () => {
        limparSessao();
    };

    return (
        <AuthContext.Provider value={{
            logado, 
            usuario, 
            carregando, 
            mensagem, 
            empresaSelecionada,
            logar, 
            logout, 
            setarEmpresa,
            atualizarAvatar,
            setarSessao
        }}>
            { children }
        </AuthContext.Provider>
    );
};