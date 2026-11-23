//Atualizacoes:
//2026.11.18 - Criado (modelo do Angus). Tema do pett-componentes: reddark (padrao) ou redlight, salvo no localStorage.
import { useEffect, useState, createContext } from 'react';

export const TemaContext = createContext();

const TEMA_PADRAO = 'reddark';

function lerTema() {
    try {
        return localStorage.getItem('tema') || TEMA_PADRAO;
    } catch {
        return TEMA_PADRAO;
    }
}

export const TemaProvider = ({children}) => {
    const [ tema, setTema ] = useState(lerTema);

    const setarTema = (sTema) => {
        try { localStorage.setItem('tema',sTema); } catch { /* sem localStorage: vale só nesta sessão */ }
        setTema(sTema);
    }

    useEffect(() => {
        // o pett-componentes lê o tema ativo do atributo data-pett-theme no <html>.
        document.documentElement.setAttribute('data-pett-theme',tema);
    }, [tema]);

    return (
        <TemaContext.Provider value={{ tema, setarTema }}>
            { children }
        </TemaContext.Provider>
    )
}
