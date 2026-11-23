import { useContext, useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettCaptcha } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldPass } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';

import { AuthContext } from '../../../Contextos/Auth';
import Api from '../../../Api';
import { getFoneMask, tratarCatch } from '../../../Funcoes';

import Logo from "../../../Imagens/logo_runtime_color.svg";
import './Cadastro.css';

function Cadastro() {
    const navigate = useNavigate();
    const { logar } = useContext(AuthContext);
    const [ token, setToken ] = useState('');
    const [ enviando, setEnviando ] = useState(false);
    const [ usuario, setUsuario ] = useState({
        USU_CPF: '',        
        USU_EMAIL: '',
        USU_FONE1: '',
        USU_NOME: '',
        USU_PASSWORD1: '',
        USU_PASSWORD2: '',
    });


    async function enviarCadastro() {
        setEnviando(true);
        const formData = new FormData();
        formData.set('op','inserir');
        formData.set('USU_CPF',usuario.USU_CPF ?? '');
        formData.set('USU_FONE1',usuario.USU_FONE1 ?? '');
        formData.set('USU_NOME',usuario.USU_NOME ?? '');
        formData.set('USU_EMAIL',usuario.USU_EMAIL ?? '');
        formData.set('USU_PASSWORD1',usuario.USU_PASSWORD1 ?? '');
        formData.set('USU_PASSWORD2',usuario.USU_PASSWORD2 ?? '');
        try {
            const response = await Api.post('usuario/cadastro',formData);
            if (response.data.erro==="S") throw response;
            logar(usuario.USU_EMAIL,usuario.USU_PASSWORD1);
            navigate('/confirmar');
        } catch (error) {
            tratarCatch('Cadastro enviarCadastro',error,null);
        } finally {
            setEnviando(false);
        }
    }

    useEffect(() => {
        document.documentElement.setAttribute('data-pett-theme', 'greendark');
        console.log('cadastro')
    }, []);

    return <>
        <div className="d-flex align-items-center text-center form-cadastro-container">
            <div className="form-cadastro w-100">
                <a href={import.meta.env.VITE_URL_SITE}><img src={Logo} style={{maxWidth: '230px'}} className=""/></a>
                <div className="row mt-3 g-1">
                    <h6 className="text-light mb-4">Novo Cadastro</h6>
                    <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="NOME COMPLETO" name="USU_NOME" value={usuario.USU_NOME} set={setUsuario} required={true} upper={false} length="100"/>
                    <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="EMAIL" name="USU_EMAIL" value={usuario.USU_EMAIL} set={setUsuario} upper={false} required={true} length="100"/>
                    <PettFieldMask size="col-lg-12 col-md-12 col-sm-12" label="CPF" name="USU_CPF" value={usuario.USU_CPF} set={setUsuario} required={true} mask="999.999.999-99"/>               
                    <PettFieldMask size="col-lg-12 col-md-12 col-sm-12" label="FONE COM WHATSAPP" name="USU_FONE1" value={usuario.USU_FONE1} set={setUsuario} mask={getFoneMask(usuario.USU_FONE1)}/>
                    <PettFieldPass size="col-lg-12 col-md-12 col-sm-12" label="DIGITE UMA SENHA" name="USU_PASSWORD1" value={usuario.USU_PASSWORD1} set={setUsuario} required={true} feedback={true}
                        promptLabel="Digite uma senha com letras, números e símbolos."
                        weakLabel="Muito fraca!"
                        mediumLabel="Senha razoável"
                        strongLabel="Excelente senha!"
                    />
                    <PettFieldPass size="col-lg-12 col-md-12 col-sm-12" label="COFIRME A SENHA" name="USU_PASSWORD2" value={usuario.USU_PASSWORD2} set={setUsuario} required={true}/>
                </div>

                <PettCaptcha size="col-md-12 mb-3 d-flex justify-content-center" provedor="recaptcha" chave={import.meta.env.VITE_CAPTCHA} tema="light" onChange={setToken}/>

                <div className="mb-5">
                    { enviando 
                        ? <PettButton className="w-100" caption="Enviando..." icone="loading_white" animado variant="green" size="lg"/>
                        : <PettButton className="w-100" caption="Enviar Cadastro" icone="paper_plane" click={enviarCadastro} variant="red" size="lg" disabled={!token}/>
                    }
                    <PettButton className="w-100 mt-3" caption="Voltar para Login" variant="light" size="sm" link="/login"/>
                </div>
            </div>
        </div>
    </>
}

export default Cadastro;