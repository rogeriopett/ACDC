//Atualizacoes:
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
import { useState, useCallback, useRef } from 'react';

import Api from '../Api';
import { tratarCatch } from '../Funcoes';

//import { AuthContext } from '../Contextos/Auth';

// Adicionamos o parâmetro 'paginado' com valor padrão true
export const useListagem = (url, localErro, logout, paginado = true) => {
    //const { empresaSelecionada } = useContext(AuthContext);
    const [listagem, setListagem] = useState([]);
    const [carregando, setCarregando] = useState(false);
    const [erro, setErro] = useState(false);
    const [final, setFinal] = useState(false);
    
    const paginaRef = useRef(0);
    const finalRef = useRef(false);

    const listar = useCallback(async (filtros = {}, bLimpar = false) => {
        
        if (carregando) return;
        if (finalRef.current && !bLimpar) return;
        
        // Se não for paginado e já carregou uma vez (e não é limpeza), interrompe
        if (!paginado && listagem.length > 0 && !bLimpar) return;

        if (!bLimpar && paginaRef.current === 0 && paginado) return;
        
        setCarregando(true);

        if (bLimpar) {
            paginaRef.current = 0;
            finalRef.current = false;
            setFinal(false);
            setListagem([]); 
        }

        const novaPagina = paginaRef.current + 1;

        const formData = new FormData();
        formData.set('op', 'listar');
        //formData.set('empresa', empresaSelecionada.value);
        
        // Se for paginado, envia o número da página, senão ignora
        if (paginado) {
            formData.set('pagina', novaPagina);
        }
        
        Object.keys(filtros).forEach(key => {
            formData.set(key, filtros[key] ?? '');
        });
        // console.log('listagem filtros',Object.fromEntries(formData));

        try {
            const response = await Api.post(url, formData);
            if (response.data.erro === 'S') throw response;
            // console.log('listagem response',response.data);
            const dadosNovos = response.data.msg || [];
            
            if (bLimpar || !paginado) {
                setListagem(dadosNovos);
            } else {
                setListagem(prev => [...prev, ...dadosNovos]);
            }

            paginaRef.current = novaPagina;
            
            // LÓGICA DE FINALIZAÇÃO
            if (!paginado) {
                // Se não é paginado, a primeira carga já é o final
                finalRef.current = true;
                setFinal(true);
            } else {
                // Se for paginado, checa rpp e contador
                const contador = response.data.contador || 0;
                const rpp = response.data.rpp || 20;
                if (contador < rpp || dadosNovos.length === 0) {
                    finalRef.current = true;
                    setFinal(true);
                }
            }

            setErro(false);
        } catch (error) {
            setErro(true);
            tratarCatch('useListagem ' + localErro, error, logout);
        } finally {
            setCarregando(false);
        }
    }, [url, localErro, logout, carregando, paginado, listagem.length]); 
    //}, [url, localErro, logout, carregando, paginado, empresaSelecionada.value, listagem.length]); 

    const carregarMais = (operacaoAtual, filtro) => {
        // Se não for paginado, o carregarMais nem deve agir
        if (!paginado) return;

        const podeCarregar = (operacaoAtual === 'listar' || operacaoAtual === '') && !carregando && !final;
        if (podeCarregar) {
            listar(filtro, false);
        }
    };

    return { 
        listagem, 
        setListagem, 
        carregando, 
        carregarMais, 
        final, 
        erro, 
        listar, 
        pagina: paginaRef.current 
    };
};