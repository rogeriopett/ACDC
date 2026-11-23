//Atualizacoes:
//2026.11.17 - Trocados os PettField* locais pelos do pett-componentes (PettFieldLoc dividido em codigo + descricao).
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal do pett-componentes.
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
import React, { useEffect, useState } from "react";

import { PettButton } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

function PettDialog(props) {
    const { titulo, label, value, onClose, showModal, keyfilter } = props;
    const [ campo, setCampo ] = useState({ VALOR: '0' });

    function confirmar() {
        onClose(true,campo.VALOR); 
    }

    function cancelar() {
        onClose(false,campo.VALOR); 
    }

    useEffect(() => {
        setCampo({ VALOR: value });
    },[value]);

    return <>
        <PettModal show={showModal} size="md" title={titulo} fechar={false}>
            <div className="row gx-1">
                <PettFieldText size="col-lg-12" label={label} name="VALOR" value={campo.VALOR} set={setCampo} keyfilter={keyfilter} autoFocus/>
            </div>

            <PettModal.Footer>
                <div className="w-100 d-flex">
                    <PettButton caption="Confirmar" icone="checkmark" click={ () => confirmar() } variant="black"/>
                    <PettButton caption="Cancelar" icone="cancel" click={ () => cancelar() } variant="black"/>
                </div>
            </PettModal.Footer>
        </PettModal>
    </>
}

export default PettDialog;