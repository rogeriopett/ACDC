//Atualizacoes:
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (sem bg-dark/text-light; o fundo vem do body).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Logo pelo componente LogoRuntime (o <img> apontava para /images/logo_runtime_black.svg, que nao existe em public/).
import React from 'react';

import { PettButton } from 'pett-componentes';

import LogoRuntime from '../Componentes/LogoRuntime';

function ErroPage() {
    return <>
        <div className='container-fluid limit-width'>
            <div className="row d-flex justify-content-center align-items-center text-center vh-100">
                <div className='col-12'>
                    <LogoRuntime className="d-block mx-auto" style={{maxWidth: '280px'}}/>
                    <p className="mt-5 lead">Xiiiiii... <br/>A página que você tentou acessar <br />não existe aqui.</p>
                    <PettButton className="w-100 mt-4" variant="green" size="lg" caption="Voltar a página inicial" link="/"/>
                </div>
            </div>
        </div>
    </>
}

export default ErroPage;