
import { PettIf } from 'pett-componentes';
import { PettIcon } from 'pett-componentes';

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