import { useEffect, useState } from 'react';

import { PettIf } from 'pett-componentes';

import Api from '../Api';
import Cabecalho from './Cabecalho';
import { tratarCatch } from '../Funcoes';

function Bloco(props) {
    const { id, className } = props;
    const [ encontrado, setEncontrado ] = useState(true);
    const [ bloco, setBloco ] = useState({BLO_CODIGO: 0, BLO_CONTEUDO: '', BLO_MOSTRARTITULO: 'N', BLO_NOME: '', BLO_PAGINA: ''});

    async function verBloco() {
        var formData = new FormData();
        formData.set('op', 'ver');
        formData.set('codigo', id);
        try {
            const response = await Api.post('paginas.php',formData);
            if (response.data.erro==='N') {
                setBloco(response.data.msg);
                setEncontrado(true);
            } else {
                setEncontrado(false);
            }
        } catch (error) {
            tratarCatch('Bloco verBloco',error,null);
        };            
    }

    useEffect(() => {
        verBloco();    
    },[id]);

    return <>
        <PettIf condicional={encontrado===false}>
            <div className="container">
                <p>Conteúdo não encontrado!</p>
            </div>
        </PettIf>

        <PettIf condicional={encontrado===true}>

            <PettIf condicional={bloco.BLO_IMAGEMDESTAQUE!==""}>
                <img className="img-fluid " src={bloco.BLO_IMAGEMDESTAQUE} alt=""/>
                <div className={className}>
                    <PettIf condicional={bloco.BLO_MOSTRARTITULO==="S"}>
                        <Cabecalho className="mb-3" titulo={bloco.BLO_NOME} texto=""/>
                    </PettIf>
                    <section className="" dangerouslySetInnerHTML={{ __html: bloco.BLO_CONTEUDO }} />
                </div>
            </PettIf>

            <PettIf condicional={bloco.BLO_IMAGEMDESTAQUE===""}>
                <div className={className}>
                    <PettIf condicional={bloco.BLO_MOSTRARTITULO==="S"}>
                        <Cabecalho className="mb-3" titulo={bloco.BLO_NOME} texto=""/>
                    </PettIf>
                    <section className="" dangerouslySetInnerHTML={{ __html: bloco.BLO_CONTEUDO }} />
                </div>
            </PettIf>

        </PettIf>

    </>
}

export default Bloco;