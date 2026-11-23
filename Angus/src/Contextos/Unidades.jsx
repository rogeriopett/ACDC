import { useEffect, useState, createContext } from 'react';

export const UnidadeContext = createContext();

export const UnidadeProvider = ({children}) => {
    const [ unidade, setUnidade ] = useState('2');

    const setarUnidade = (event,unid) => {
        if (!event) event.preventDefault();
        localStorage.setItem('unidade',unid);
        setUnidade(unid);
        //window.location.reload();
    }

    useEffect(() => {
        //descomentar as linhas para funcionar a unidade.
        // const unidadeStorage = localStorage.getItem('unidade');
        // if (unidadeStorage===null) {
            setUnidade("1");
            // localStorage.setItem('unidade',"1");
        // } else {
            // setUnidade(unidadeStorage);
        // }
    },[]);
    
    return (
        <UnidadeContext.Provider value={{ unidade, setarUnidade }}>
            { children }
        </UnidadeContext.Provider>
    )
}