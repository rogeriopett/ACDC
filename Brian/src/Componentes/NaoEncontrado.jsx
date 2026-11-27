//Atualizacoes:
//2026.11.27 - Criado para a mensagem de registro nao encontrado, que estava repetida nas telas (icone fa-record-vinyl do FontAwesome trocado pelo PettIcon).

import { PettIcon } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

// Mensagem centralizada de registro nao encontrado. show controla quando aparece (ex.: !carregando && venda.VED_CODIGO<=0).
function NaoEncontrado({ show = true, mensagem = 'Não foi possível localizar o registro.' }) {
    return <PettIf condicional={show}>
        <div className="container limit-width nao-encontrado">
            <PettIcon name="info" size="96" className="texto-suave"/>
            <p className="lead mt-3">{mensagem}</p>
        </div>
    </PettIf>
}

export default NaoEncontrado;
