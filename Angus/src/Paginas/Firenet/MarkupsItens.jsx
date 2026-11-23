import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import Api from '../../Api';
import { tratarCatch } from '../../Funcoes';

function MarkupsItens(props) {
    const { markup, item, showModal, operacao, onCloseModal } = props;
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const [ markupItemModal, setMarkupItemModal ] = useState({});
    const [ disableFields, setDisableFields ] = useState(true);

    function registroNulo() {
        setMarkupItemModal({
            MKI_CODIGO: '',
            MKI_DESCRICAO: '',
            MKI_MARKUP: '',
            MKI_PORCENTAGEM: '0',
        })
    }

    useEffect(() => {
        if (item.MKI_CODIGO!=="") {
            getRegistro(item.MKI_CODIGO,item.MKI_MARKUP);
        } else {
            registroNulo();
        }
    },[item]);

    useEffect(() => {
        setDisableFields(false);
        registroNulo();
    },[markup]);

    async function getRegistro(codigo1,codigo2) {
        var formData = new FormData();
        formData.set('op','visualizarItem');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('MKI_CODIGO',codigo1);             
        formData.set('MKP_CODIGO',codigo2);             
        try {
            const response = await Api.post('firenet/markups',formData);
            if (response.data.erro==='N') {
                setMarkupItemModal(response.data.msg);
            } else {
                setMarkupItemModal({});
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('MarkupsItens getRegistro',error,logout);
        }
    }
    
    async function salvar() {
        const formData = new FormData();
        formData.set('op',operacao);
        formData.set('empresa',empresaSelecionada.value);
        formData.set('MKP_CODIGO',markup.MKP_CODIGO || '');
        formData.set('MKI_CODIGO',markupItemModal.MKI_CODIGO || '');
        formData.set('MKI_MARKUP',markup.MKP_CODIGO || '');
        formData.set('MKI_DESCRICAO',markupItemModal.MKI_DESCRICAO || '');
        formData.set('MKI_PORCENTAGEM',markupItemModal.MKI_PORCENTAGEM || '');
        try {
            const response = await Api.post('firenet/markups',formData);
            if (response.data.erro==='N') {
                onCloseModal(response.data.msg);
                // registroNulo();
            } 
            if (response.data.erro==='S') {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('MarkupItens salvar',error,logout);
        }
    }

    function cancelar(e) {
        onCloseModal({});
    }

    async function excluir() {
        const confirmou = await PettMensagem.confirmar('Confirma Exclusão?','Tem certeza que deseja excluir '+markupItemModal.MKI_DESCRICAO+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','excluirItem');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('MKI_CODIGO',markupItemModal.MKI_CODIGO);
            formData.set('MKP_CODIGO',markupItemModal.MKI_MARKUP);
            try {
                const response = await Api.post('firenet/markups',formData);
                if (response.data.erro==='N') {
                    onCloseModal(response.data.msg);
                } else {
                    response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
                }

            } catch (error) {
                tratarCatch('MarkupItens excluir',error,logout);
            }
        }
    }

    return <>
        <PettIf condicional={markupItemModal} >
            <PettModal show={showModal} title="Item do Markup..." size="md" fechar={false}>
                <div className="row g-1">
                    <PettFieldText size="col-lg-3 col-md-6 col-sm-6" label="CÓDIGO" name="MKI_CODIGO" value={markupItemModal.MKI_CODIGO} readOnly disabled/>
                    <PettFieldText size="col-lg-3 col-md-6 col-sm-6" label="MARKUP" name="MKI_MARKUP" value={markupItemModal.MKI_MARKUP} readOnly disabled/>
                    <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="MKI_DESCRICAO" value={markupItemModal.MKI_DESCRICAO} set={setMarkupItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldFloat size="col-lg-3 col-md-6 col-sm-6" label="PORCENTAGEM" name="MKI_PORCENTAGEM" value={markupItemModal.MKI_PORCENTAGEM} set={setMarkupItemModal} readOnly={disableFields} disabled={disableFields} maxDigits="8" minDigits="8"/>
                </div>

                <PettModal.Footer className='bg-tema2 border-0 p-0 px-1'>
                    <div className="w-100 d-flex">
                        <PettButton caption="Salvar" icone="checkmark" click={() => salvar() }  className="me-1"/>
                        <PettButton caption="Cancelar" icone="cancel" click={(e) => cancelar(e) }  className="me-1"/>
                        <PettIf condicional={markupItemModal.MKI_CODIGO!==""}>
                            <PettButton caption="Excluir Item" icone="minus" click={() => excluir() }  className="ms-auto"/>
                        </PettIf>
                    </div>
                </PettModal.Footer>

            </PettModal>    
        </PettIf>
    </>
}

export default MarkupsItens;