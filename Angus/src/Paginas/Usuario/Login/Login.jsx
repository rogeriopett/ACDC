import { useContext, useRef, useState } from 'react';
import { Link, Navigate } from 'react-router-dom'; 

import { PettButton } from 'pett-componentes';
import { PettFieldPass } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';

// funcoes proprias.
import { AuthContext } from '../../../Contextos/Auth';
import Logomarca from '../../../Componentes/Logomarca';
import './Login.css';

function Login() {   
    const { logado, usuario, mensagem, logar } = useContext(AuthContext);
    const [ dadosLogin, setDadosLogin] = useState({login: '', senha: ''});
    const [ acessando, setAcessando] = useState(false);
    const passRef = useRef(null); 

    if (usuario.status==='I') {
        return <Navigate to='/confirmar' />
    }

    if (logado) {
        return <Navigate to='/' />
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

    return <>

        <div className="login-container d-flex align-items-center justify-content-center">
            <div className="login-card limit-width w-100" style={{ maxWidth: '380px' }}>
                <div className="text-center mb-4">
                    <Link href={import.meta.env.VITE_URL_SITE}>
                        <Logomarca />
                    </Link>
                </div>
                
                {mensagem !== '' && (
                    <div className="alert login-alert mb-3 text-center" role="alert">
                        {mensagem}
                    </div>
                )}

                <div className="row mt-2">
                    <div className="col-12 mb-2">
                        <PettFieldText size="col-12 mb-2" label="LOGIN" name="login" value={dadosLogin.login} set={setDadosLogin} upper={false} required onKeyDown={(e) => onLoginKeyDown(e)} autoFocus={true}/>
                        <PettFieldPass size="col-12 mb-3" label="SENHA" name="senha" value={dadosLogin.senha} set={setDadosLogin} required onKeyDown={(e) => onPasswordKeyDown(e)} ref={passRef}/>
                    </div>
                </div>
                {
                    acessando
                        ? <PettButton className="w-100 mb-3" caption="Verificando credenciais..." icone="loading_white" variant="red" size="lg" disabled={true}/>
                        : <PettButton className="w-100 mb-3" caption="Acessar" icone="enter_branco" click={Acessar} variant="red" size="lg"/>
                }
                <PettButton className="w-100 mb-2" caption="Novo Cadastro" size="sm" link="/cadastro"/>
                <PettButton className="w-100 mb-3" caption="Esqueci a senha" size="sm" link="/reset"/>
            </div>
        </div>
    </>
}

export default Login;