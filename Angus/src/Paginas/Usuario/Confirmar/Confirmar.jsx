import { useEffect, useState, useContext } from 'react';
import { useNavigate } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettFieldOtp } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';

import Api from '../../../Api';
import { AuthContext } from '../../../Contextos/Auth';
import { tratarCatch } from '../../../Funcoes';
import Logomarca from '../../../Componentes/Logomarca';
import Logo from "../../../Imagens/logo_runtime_color.svg";
import './Confirmar.css';

function Confirmar() {
    const navigate = useNavigate();
    const { usuario, logado, logout, setarSessao } = useContext(AuthContext);
    const [ confirma, setConfirma ] = useState({ confirmacao: '' });
    const [ confirmando, setConfirmando ] = useState(false);
    const [ reenviando, setReenviando ] = useState(false);
 
    async function reenviarCodigo() {
        setReenviando(true);
        var formData = new FormData();
        formData.set('op','reenviar');
        formData.set('login',usuario.login);
        try {
            const response = await Api.post('usuario/profile',formData);
            if (response.data.erro==="S") throw response;
            PettMensagem.sucesso('Confirma lá!',response.data.msg);
        } catch (error) {
            tratarCatch('Confirmar reenviarCodigo',error,logout);
        } finally {
            setReenviando(false);
        }
    }

    async function confirmarCodigo() {
        setConfirmando(true);
        var formData = new FormData();
        formData.set('op','confirmar');
        formData.set('codigo',confirma.codigo ?? '');
        try {
            const response = await Api.post('usuario/profile',formData);
            if (response.data.erro==='S') throw response;
            setarSessao(response.data.usuario,usuario.login);
        } catch (error) {
            tratarCatch('Confirmar confirmarCodigo',error,logout);
        } finally {
            setConfirmando(false);
        }
    }
    
    function desconectar() {
        logout(false);
        navigate('/');
    }

    useEffect(() => {
        if (!logado || !usuario.status) {
            navigate('/');
            return;
        }
        if (usuario.status==="A") {
            navigate('/minhasempresas');
            return;
        }
        if (usuario.status==="I") {
            logout();
        }   
        //se usuario.status==="C" continua aqui.
        //...      
    },[usuario, navigate, logado, logout]);

    return <>
        <PettIf condicional={usuario.status==="C"}>
            <div className="d-flex align-items-center text-center form-confirmar-container">
                <div className="form-confirmar">
       
                    <div className="d-flex align-items-center text-center">
                        <div className="form-login text-light p-0">
                                
                            <div className="col-12 d-flex justify-content-center my-3">
                                <Logomarca src={Logo}/>
                            </div>

                            <div className="col-12 mt-3">
                                <p>Ainda precisamos confirmar seu email.<br />Digite o código de verificação que enviamos para você por email no campo abaixo.</p>
                            </div>

                            <div className="col-12 mb-3 d-flex justify-content-center">
                                <PettFieldOtp size="col-xl-3 col-lg-2 col-md-6 col-sm-12 mb-1" label="" name="codigo" value={confirma.codigo} set={setConfirma} length={6} integerOnly={true} style={{fontSize: '21px'}}/>
                            </div>

                            <div className="col-12 mb-4">
                                <p>Caso ainda não tenha recebido o código, por favor, verifique se não está na caixa de spam no seu aplicativo de emails.</p>
                            </div>

                            <div className="col-12">
                                { confirmando
                                    ? <PettButton className="w-100 mb-3" caption="Confirmando..." icone="wait" animado variant="green" size="lg" disabled={true}/>
                                    : <PettButton className="w-100 mb-3" caption="Confirmar" icone="done_branco" click={confirmarCodigo} variant="green" size="lg"/>
                                }
                                { reenviando
                                    ? <PettButton className="w-100 mb-5" caption="Reenviando Código..." icone="wait" animado size="lg" disabled={true}/>
                                    : <PettButton className="w-100 mb-5" caption="Reenviar Código" click={reenviarCodigo} size="lg"/>
                                }
                                <PettButton className="w-100 mb-3" caption="Desconectar" click={desconectar} size="lg"/>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </PettIf>
    </>
}

export default Confirmar;
