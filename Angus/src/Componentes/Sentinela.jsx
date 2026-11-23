import { useEffect, useRef } from 'react';

import { PettIcon } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

function Sentinela({ onIntersect, carregando, final, length, erro }) {
    const sentinelaRef = useRef();

    useEffect(() => {
        const observer = new IntersectionObserver(
            ([entry]) => {
                // if (entry.isIntersecting) {
                if (entry.isIntersecting && !carregando && !final) {
                    onIntersect();
                }
            },
            {
                root: null, // Observa a viewport
                rootMargin: '0px',
                threshold: 1.0 // Chama o callback quando 100% do sentinel está visível
            }
        );
    
        if (sentinelaRef.current) {
            observer.observe(sentinelaRef.current);
        }
    
        return () => {
            if (sentinelaRef.current) {
                
                observer.unobserve(sentinelaRef.current);
            }
        };
    }, [onIntersect, carregando, final]);
    // }, [onIntersect]);

    return <>
        <PettIf  condicional={ length !== 0 && final && erro===false }>
            <div className="container limit-width">
                <p className="lead text-center">Fim da listagem!</p>
            </div>
        </PettIf>
        <PettIf condicional={ carregando && !final && erro===false }>
            <div className="container mb-5 mt-2 d-flex justify-content-center align-items-center">
                <PettIcon name="loading_white" size="32" className="me-2"/> Carregando mais...
            </div>
        </PettIf>
        <PettIf condicional={ length === 0 && carregando === false && erro === false}>
            <div className="container limit-width topspace-50 d-flex justify-content-center align-items-center flex-column">
                <PettIcon name="shocked" size="150"/>
                <p className="lead">Nenhum registro encontrado!</p>
                <span>Atualize ou revise os filtros de pesquisa utilizados.</span>
            </div>
        </PettIf> 
        <PettIf condicional={erro===true}>
            <div className="container limit-width topspace-50 d-flex justify-content-center align-items-center flex-column">
                <PettIcon name="error" size="150"/>
                <p className="lead">Não foi possível buscar os dados!</p>
            </div>                    
        </PettIf>
        <PettIf condicional={erro === false && !final}>
            <div className="container limit-width bg-transparent pb-2 mb-2" ref={sentinelaRef} id="sentinela" style={{ height: '10px' }}></div>
        </PettIf>
        {/* <PettIf condicional={erro===false}>
            <div className="container limit-width bg-transparent pb-5 mb-5" ref={sentinelaRef} id="sentinela"></div>
        </PettIf> */}
    </>
}

export default Sentinela;