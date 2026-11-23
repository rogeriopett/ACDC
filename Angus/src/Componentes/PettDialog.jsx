import { useEffect, useState } from "react";

import { PettButton } from "pett-componentes";
import { PettFieldText } from "pett-componentes";
import { PettModal } from "pett-componentes";

function PettDialog(props) {
    const { titulo, label, value, onClose, size="md", showModal, keyfilter } = props;
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
        <PettModal show={showModal} title={titulo} size={size} position="top" onHide={cancelar}>
            <div className="row g-1">
                <PettFieldText size="col-lg-12" label={label} name="VALOR" value={campo.VALOR} set={setCampo} keyfilter={keyfilter} autoFocus/>
            </div>

            <PettModal.Footer className='border-0 p-0 px-1'>
                <div className="w-100 d-flex justify-content-end">
                    <PettButton caption="Confirmar" icone="checkmark" click={confirmar}  className="me-1"/>
                    <PettButton caption="Cancelar" icone="cancel" click={cancelar} />
                </div>
            </PettModal.Footer>

        </PettModal>
    </>
}

export default PettDialog;