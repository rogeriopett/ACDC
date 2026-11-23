import { useContext } from 'react';
import { Navigate } from 'react-router-dom';

import { PettIcon } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';

import { AuthContext } from './Contextos/Auth';
import Loading from './Componentes/Loading'; 

export const Empresa = ({ children }) => {
    const { usuario } = useContext(AuthContext);
    if (usuario.empresas.length < 1) {
        return <Navigate to='/minhasempresas' />
    }
    return children;
};

export const Privado = ({ children }) => {
    const { carregando, logado, usuario } = useContext(AuthContext);
    if (carregando) {
        return <Loading status={carregando}/>
    }
    if (usuario.status==='C') {
        return <Navigate to='/confirmar' />
    }        
    if (!logado) {
        return <Navigate to="/login" replace={true}/>
    }       
    return children;
};

export const Admin = ({ children }) => {
    const { usuario } = useContext(AuthContext);
    if (usuario.admin==="N") {
        return <Navigate to="/" replace={true} />
    }
    return children;
}

export const UnLogged = (props) => {
    const { msg, children } = props;
    const { logado } = useContext(AuthContext);
    if (logado) {
        PettMensagem.erro('Epaaa!',msg);
        return <Navigate to="/" replace={true} />
    }
    return children;
}

export const Carregando = ({children}) => {
    const { carregando } = useContext(AuthContext);
    if (carregando) {
        return <>
            <div className="container vh-100 d-flex justify-content-center align-items-center">
                <p className="text-center lead"><span style={{fontSize: '7em'}} className="text-muted"><PettIcon name="runtime_spinner" size="48"/></span><br/>Carregando...</p>
            </div>  
        </>
    }
    return children;
}