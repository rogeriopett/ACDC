import { createContext, useState, useContext, useEffect } from 'react';

import Api from '../Api';
import { AuthContext } from './Auth';
import { tratarCatch } from '../Funcoes';

const MenuContext = createContext();

export const MenuProvider = ({ children }) => {
    const { logado } = useContext(AuthContext);
    const [ menuData, setMenuData ] = useState([]); // Dados da API

    useEffect(() => {
        if (!logado) { setMenuData([]); return; }

        let cancel = false;

        const carregar = async () => {
            const formData = new FormData();
            formData.set('op', 'menu');
            formData.set('tipo', 1);
            try {
                const response = await Api.post('/menu', formData);
                if (cancel) return;
                if (response.data.erro === 'S') throw response;
                setMenuData(response.data.msg);
            } catch (error) {
                if (!cancel) tratarCatch('Menu getMenu', error, null);
            }
        };
        carregar();

        return () => { cancel = true; };
    }, [logado]);

    return (
        <MenuContext.Provider value={{ menuData }}>
            {children}
        </MenuContext.Provider>
    );
};

export const useMenu = () => useContext(MenuContext);