import { useEffect } from "react";
import { useLocation } from "react-router-dom";

export default function useScrollToTop() {
    const { pathname } = useLocation();

    useEffect(() => {
        // Força o navegador a esquecer a posição anterior
        if ('scrollRestoration' in window.history) {
        window.history.scrollRestoration = 'manual';
        }

        // Rola para o topo toda vez que o caminho da URL mudar
        window.scrollTo(0, 0);

        // Backup: Se a página demorar a renderizar, tenta de novo após um milissegundo
        const timeout = setTimeout(() => {
            window.scrollTo({ top: 0, behavior: 'instant' });
        }, 0);

        return () => clearTimeout(timeout);
    }, [pathname]);

    return null;
}