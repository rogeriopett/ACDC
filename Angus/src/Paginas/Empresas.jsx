import { Link } from 'react-router-dom';

import Logomarca from '../Componentes/Logomarca';
import Logo from "../Imagens/logo_runtime_color.svg";

function Empresas() {
    return <>
        <div className="row d-flex justify-content-center align-items-center text-center vh-100">
            <div className='col-12' style={{maxWidth: '550px'}}>
                <Logomarca src={Logo}/>
                <p className="mt-5 lead">Xiiiiii... você ainda não tem empresas associadas na sua conta.</p>
                <Link to='/minhasempresas' className="btn btn-lg btn-success w-100 mt-4" type="button">Cadastrar Nova Empresa</Link>
            </div>
        </div>
    </>
}

export default Empresas;