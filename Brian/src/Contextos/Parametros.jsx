//Atualizacoes:
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
import React, { useEffect, useState, createContext } from 'react';
import { useNavigate } from 'react-router-dom';

import Api from '../Api';

export const ParametrosContext = createContext();

export const ParametrosProvider = ({children}) => {
 
    const navigate = useNavigate();
    const [parametros, setParametros] = useState([]);

    useEffect(() => {
        const parametrosStorage = localStorage.getItem('parametros');
        if (parametrosStorage) {
            setParametros(JSON.parse(parametrosStorage));
        } else {
            getParametros();
        }
        //eslint-disable-next-line
    }, []);

    // const setarToken = (response, login, senha) => {
    //     const token = response.data.usuario.USU_TOKEN;
    //     //const login = response.data.usuario.USU_LOGIN;
    //     const nome = response.data.usuario.USU_NOME;
    //     const status = response.data.usuario.USU_STATUS;
    //     const vendedor = response.data.usuario.USU_VENDEDOR;
    //     const versaoBase = response.data.usuario.VER_VERSAOBASE;
    //     const empresa = response.data.usuario.EMP_NOME;
    //     const jwtDecoded = jwt_decode(response.data.usuario.USU_TOKEN);
    //     localStorage.setItem('usuario', JSON.stringify({login, nome, status, vendedor, empresa}));
    //     localStorage.setItem('token',token);
    //     Api.defaults.headers.common['Authorization'] = `Bearer ${token}`;
    //     setParametros({ login, nome, status, vendedor, versaoBase });
    // }

    async function getParametros() {
        var formData = new FormData();
        formData.set('op','visualizar');
        try {
            const response = await Api.post('firenet/parametros',formData);
            if (response.data.erro==="S") {
                setParametros([]);
                localStorage.removeItem('parametros');
                navigate('/home');
            } else {
                setParametros(response.data.msg);
                localStorage.setItem('parametros',JSON.stringify(response.data.msg));
            }
        } catch (error) {
            localStorage.removeItem('parametros');
            console.log('CATCH',error)
        }
    };

    return (
        <ParametrosContext.Provider value={{ parametros }}>
            { children }
        </ParametrosContext.Provider>
    )
}