//Atualizacoes:
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
import React from 'react';
import numeral from 'numeral';

function Formata({formato,children}) {
    return <span>{numeral(children).format(formato)}</span>
}

export default Formata;
//http://numeraljs.com/