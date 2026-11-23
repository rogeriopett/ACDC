import { useState } from 'react';
import { Link } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettCaptcha } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import Api from '../../../Api';
import Logomarca from '../../../Componentes/Logomarca';
import Logo from "../../../Imagens/logo_runtime_color.svg";
import { tratarCatch } from '../../../Funcoes';
import './ResetSenha.css';

function ResetSenha() {
    const [ dadosReset, setDadosReset ] = useState({email: ''});
    const [ msg, setMsg ] = useState('');
    const [ token, setToken ] = useState('');
    const [ resetando, setResetando ] = useState(false);

    async function resetar() {
        setResetando(true);
        var formData = new FormData();
        formData.set('op','resetar');
        formData.set('email',dadosReset.email ?? '');
        try {
            const response = await Api.post('usuario/reset',formData);
            setResetando(false);
            if (response.data.erro==='S') throw response;
            setDadosReset({email: ''});
            setMsg(response.data.msg);
        } catch (error) {
            tratarCatch('ResetSenha resetar',error,null);
        }
    }

    return <>
        <div className="d-flex align-items-center text-center form-senha-container">
            <div className="form-senha w-100">
                {/* <div className="row"> */}

                <Link to={import.meta.env.VITE_URL_SITE} >
                    <Logomarca src={Logo} />
                    {/* <img src={Logo} style={{maxWidth: '230px'}} className=""/> */}
                </Link>
                {/* </div> */}
                <div className="row mt-3 gx-1 ">
                    <h6 className="text-light">Resetar Senha</h6>
                    <PettIf condicional={msg !== ""}>
                        <p className="lead text-light my-3">{msg}</p>
                        <Link className="btn btn-success w-100"to="/">Voltar</Link>
                    </PettIf>
                    <PettIf condicional={msg===""}>
                        <div className="col-lg-12 col-md-12 col-sm-12 my-3">
                            <PettFieldText size="col-12" label="INFORME O EMAIL DE CADASTRO" name="email" value={dadosReset.email} set={setDadosReset} upper={false} required autoFocus={true}/>
                        </div>
                        <PettCaptcha size="col-md-12 mb-3 d-flex justify-content-center" provedor="recaptcha" chave={import.meta.env.VITE_CAPTCHA} tema="dark" onChange={setToken}/>
                    </PettIf>
                </div>

                <div className="mb-5">
                    <PettIf condicional={msg===""}>
                        {
                            resetando
                                ? <PettButton className="w-100 mb-3" caption="Solicitando nova senha..." icone="wait" animado variant="red" size="lg" disabled={true}/>
                                : <PettButton className="w-100 mb-3" caption="Solicitar nova senha" click={resetar} variant="red" size="lg" disabled={!token}/>
                        }
                    </PettIf>
                    <PettButton className="w-100 mt-3" caption="Voltar para Login" variant="light" size="sm" link="/login"/>
                </div>
            </div>
        </div>

    </>
}

export default ResetSenha;