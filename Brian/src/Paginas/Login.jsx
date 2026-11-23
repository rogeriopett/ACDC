//Atualizacoes:
//2026.11.17 - Campos de login e senha (InputText/Password do PrimeReact) trocados pelo PettFieldText/PettFieldPass do pett-componentes.
//2026.11.17 - Botão Acessar trocado pelo PettButton do pett-componentes.
//2026.11.18 - Logo importado como URL (<img>), sem o ?react do vite-plugin-svgr.
//2026.11.18 - Cores do Login.css seguem o tema do pett-componentes; removido o layout antigo comentado (PrimeReact).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Login.css: altura em 100dvh e espaco das bordas no container (no celular o formulario ficava abaixo do centro e com rolagem).
//2026.11.18 - Logo da Runtime pelo componente LogoRuntime (SVG embutido; o texto segue a cor do tema e aparece nos temas claros).
import { useRef, useState, useContext } from 'react';
import { Navigate } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettFieldPass } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';

import { AuthContext } from '../Contextos/Auth';
import LogoRuntime from '../Componentes/LogoRuntime';
import './Login.css';

function Login() {
    const { logado, usuarioStatus, mensagem, logar } = useContext(AuthContext);
    const [ dadosLogin, setDadosLogin] = useState({login: '', senha: ''});
    const [acessando, setAcessando] = useState(false);
    const passRef = useRef(null); 

    if (usuarioStatus==='I') {
        return <Navigate to='/confirmarcadastro' />
    }

    if (logado) {
        return <Navigate to='/home' />
    }

    async function Acessar() {     
        setAcessando(true);
        await logar(dadosLogin.login, dadosLogin.senha);      
        setAcessando(false);
    }

    function onLoginKeyDown(e) {
        if (e.keyCode === 13) {
            passRef.current.focus();
        }
    }

    function onPasswordKeyDown(e) {
        if (e.keyCode === 13) {
            Acessar();
        }
    }

return (
        <div className="login-container d-flex align-items-center justify-content-center">
            <div className="login-card limit-width w-100" style={{ maxWidth: '380px' }}>
                <LogoRuntime className="mb-4 d-block mx-auto" style={{ maxWidth: '240px' }}/>
                
                {mensagem !== '' && (
                    <div className="alert login-alert mb-3 text-center" role="alert">
                        {mensagem}
                    </div>
                )}

                <div className="row mt-2">
                    {/* upper={false} + text-uppercase: mostra em maiúsculas, mas envia o login como foi digitado (igual ao InputText anterior). */}
                    <PettFieldText size="col-12 mb-4" inputClass="text-uppercase" label="LOGIN" name="login" value={dadosLogin.login} set={setDadosLogin} upper={false} required autoFocus onKeyDown={onLoginKeyDown}/>
                    <PettFieldPass size="col-12 mb-2" label="SENHA" name="senha" value={dadosLogin.senha} set={setDadosLogin} ref={passRef} autoComplete="current-password" required onKeyDown={onPasswordKeyDown}/>
                </div>

                {acessando
                    ? <PettButton className="w-100 mt-4" variant="red" size="lg" icone="loading_white" caption="Verificando..." disabled/>
                    : <PettButton className="w-100 mt-4" variant="red" size="lg" icone="enter_branco" caption="Acessar" click={Acessar}/>
                }
            </div>
        </div>
    );
}

export default Login;