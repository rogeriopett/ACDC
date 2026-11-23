
import { PettButton } from 'pett-componentes';
import Logomarca from '../Componentes/Logomarca';

function ErrorPage() {
    return <>
        <div className="row d-flex justify-content-center align-items-center text-center vh-100">
            <div className='col-12' style={{maxWidth: '550px'}}>
                <Logomarca/>
                {/* <Logomarca height="56"/> */}
                <p className="mt-5 lead">Xiiiiii... a página que você tentou acessar não existe aqui.</p>
                <PettButton link='/' className="w-100 mt-4" caption="Voltar a página inicial" variant="red" size="lg"/>
            </div>
        </div>
    </>
}

export default ErrorPage;