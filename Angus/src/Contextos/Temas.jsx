import { useEffect, useState, createContext } from 'react';

export const TemaContext = createContext();

export const TemaProvider = ({children}) => {
    const [ tema, setTema ] = useState(true);

    const setarTema = (sTema) => {
        localStorage.setItem('tema',sTema);
        setTema(sTema);
    }

    const limparTema = () => {
        localStorage.removeItem('tema');
    }

    useEffect(() => {
        const temaStorage = localStorage.getItem('tema');
        if (temaStorage===null) {
            setTema('reddark');
            localStorage.setItem('tema','reddark');
        } else {
            setTema(temaStorage);
        }
    },[]);

    useEffect(() => {
        // Define o atributo data-theme no body dependendo do estado do modo escuro
        //document.body.dataset.theme = tema;
        document.documentElement.setAttribute('data-pett-theme',tema);
    }, [tema]);
    
    return (
        <TemaContext.Provider value={{ tema, setarTema, limparTema }}>
            { children }
        </TemaContext.Provider>
    )
}