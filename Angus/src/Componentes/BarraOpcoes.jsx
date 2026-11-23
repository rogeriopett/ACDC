import { useLayoutEffect, useRef, useState } from 'react';
import { Link } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettIcon } from 'pett-componentes';
import { PettSideBar } from 'pett-componentes';

import './BarraOpcoes.css';

//Atualizacoes:
//2026.10.19 - colapso medindo o espaco real (em vez do breakpoint md) e menu lateral com PettSideBar.

function BarraOpcoes(props) {
    const { children, linkBack, titulo } = props;
    const [ colapsado, setColapsado ] = useState(false);
    const [ lateralAberta, setLateralAberta ] = useState(false);
    const espacoRef = useRef(null);  //area disponivel para os botoes.
    const medidaRef = useRef(null);  //copia invisivel dos botoes, so para medir a largura que eles precisam.

    //colapsa quando os botoes nao cabem no espaco disponivel (vale para qualquer quantidade de botoes).
    useLayoutEffect(() => {
        const espaco = espacoRef.current;
        const medida = medidaRef.current;
        if (!espaco || !medida) return;

        const verificar = () => setColapsado(medida.offsetWidth > espaco.clientWidth);
        verificar();

        const observer = new ResizeObserver(verificar);
        observer.observe(espaco);
        observer.observe(medida);
        return () => observer.disconnect();
    }, []);

    //se a tela crescer e os botoes voltarem para a barra, fecha o menu lateral.
    useLayoutEffect(() => {
        if (!colapsado) setLateralAberta(false);
    }, [colapsado]);

    //fecha o menu lateral depois de clicar em um botao ou link.
    const clickLateral = (e) => {
        if (e.target.closest('button, a')) setLateralAberta(false);
    };

    return <>
        <nav className="barra2 barra-opcoes fixed-top segundo-sticky">
            <div className="barra-opcoes-titulo">
                <Link className="btn-pett ms-2" to={linkBack}><PettIcon name="back" size="25"/></Link>
                <span className="m-2 text-truncate" title={titulo}>{ titulo }</span>
            </div>

            <div className="barra-opcoes-espaco" ref={espacoRef}>
                {colapsado
                    ? <PettButton className="ms-auto me-1" icone="menu" click={() => setLateralAberta(true)}/>
                    : children
                }
            </div>

            <div className="barra-opcoes-medida" ref={medidaRef} aria-hidden="true" inert>
                {children}
            </div>
        </nav>

        <PettSideBar show={colapsado && lateralAberta} onHide={() => setLateralAberta(false)} lado="direita" largura={280} titulo={titulo} className="barra-opcoes-lateral">
            <div className="barra-opcoes-lateral-itens" onClick={clickLateral}>
                {children}
            </div>
        </PettSideBar>
    </>
}

export default BarraOpcoes;
