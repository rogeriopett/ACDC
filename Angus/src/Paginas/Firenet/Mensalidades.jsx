import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Rodape from '../../Componentes/Rodape';

function Mensalidades() {
    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Mensalidades" linkBack="/">
        </BarraOpcoes>
        <ColunaCentral left="false" right="false" className="container-fluid pt-3">
            <p className="lead text-center">Este recurso estará disponível em breve.</p>
        </ColunaCentral>
        <Rodape />
    </>
}

export default Mensalidades;