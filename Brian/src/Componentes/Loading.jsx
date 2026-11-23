//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.18 - SVG local (?react) trocado pelo PettIcon do pett-componentes.
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
import { PettIcon } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

function Loading({ status }) {
    return <>
        <PettIf condicional={ status }>
        <div className="container">
            <div className="row d-flex justify-content-center align-items-center text-center vh-100"><PettIcon name="runtime_spinner" size="96"/></div>
        </div>
        </PettIf>
    </>
}

export default Loading;