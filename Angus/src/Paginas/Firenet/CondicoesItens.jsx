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

function CondicoesItens(props) {
    const { condicao, item, showModal, operacao, onCloseModal } = props;
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const [ condicaoItemModal, setCondicaoItemModal ] = useState({
        CPI_CODIGO: '',
        CPI_CONDICAO: '',
        CPI_DIAS: '0',
        CPI_PORCENTAGEM: '0',
    });
    const [ disableFields, setDisableFields ] = useState(true);

    function registroNulo() {
        setCondicaoItemModal({
            CPI_CODIGO: '',
            CPI_CONDICAO: '',
            CPI_DIAS: '0',
            CPI_PORCENTAGEM: '0',
        })
    }

    useEffect(() => {
        if (item.CPI_CODIGO!=="") {
            getRegistro(item.CPI_CODIGO,item.CPI_CONDICAO);
        } else {
            registroNulo();
        }
    },[item]);

    useEffect(() => {
        setDisableFields(false);
        registroNulo();
    },[condicao]);

    async function getRegistro(codigo1,codigo2) {
        var formData = new FormData();
        formData.set('op','visualizarItem');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('CPI_CODIGO',codigo1);
        formData.set('CPG_CODIGO',codigo2);
        try {
            const response = await Api.post('firenet/condicoes',formData);
            if (response.data.erro==='S') throw response;
            setCondicaoItemModal(response.data.msg);
        } catch (error) {
            setCondicaoItemModal({});
            tratarCatch('CondicoesItens getRegistro',error,logout);
        }
    }
    
    async function salvar() {
        const formData = new FormData();
        formData.set('op',operacao);
        formData.set('empresa',empresaSelecionada.value);
        formData.set('CPG_CODIGO',condicao.CPG_CODIGO || ''); //para manter compatibilidade.
        formData.set('CPI_CODIGO',condicaoItemModal.CPI_CODIGO || '');
        formData.set('CPI_CONDICAO',condicaoItemModal.CPI_CONDICAO || '');
        formData.set('CPI_DIAS',condicaoItemModal.CPI_DIAS || '');
        formData.set('CPI_PORCENTAGEM',condicaoItemModal.CPI_PORCENTAGEM || '');
        try {
            const response = await Api.post('firenet/condicoes',formData);
            if (response.data.erro==='S') throw response;
            onCloseModal(response.data.msg);
        } catch (error) {
            tratarCatch('CondicoesItens salvar',error,logout);
        }
    }

    function cancelar(e) {
        onCloseModal({});
    }

    async function excluir() {
        const confirmou = await PettMensagem.confirmar('Confirma Exclusão?','Tem certeza que deseja excluir '+condicaoItemModal.CPI_DIAS+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','excluirItem');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('CPI_CODIGO',condicaoItemModal.CPI_CODIGO);
            formData.set('CPG_CODIGO',condicaoItemModal.CPI_CONDICAO);
            try {
                const response = await Api.post('firenet/condicoes',formData);
                if (response.data.erro==='S') throw response;
                onCloseModal(response.data.msg);
            } catch (error) {
                tratarCatch('CondicoesItens excluir',error,logout);
            }
        }
    }

    return <>
        <PettIf condicional={condicaoItemModal} >
            <PettModal show={showModal} title="Item da Condição..." size="md" fechar={false}>
                <div className="row g-1">
                    <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="CÓDIGO" name="CPI_CODIGO" value={condicaoItemModal.CPI_CODIGO} readOnly disabled/>
                    <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="CONDIÇÃO" name="CPI_CONDICAO" value={condicaoItemModal.CPI_CONDICAO} readOnly disabled/>
                    <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DIAS" name="CPI_DIAS" value={String(condicaoItemModal.CPI_DIAS)} set={setCondicaoItemModal} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                    <PettFieldFloat size="col-lg-12 col-md-12 col-sm-12" label="PORCENTAGEM" name="CPI_PORCENTAGEM" value={condicaoItemModal.CPI_PORCENTAGEM} set={setCondicaoItemModal} readOnly={disableFields} disabled={disableFields} maxDigits="2" minDigits="2"/>
                </div>

                <PettModal.Footer className='bg-tema2 border-0 p-0 px-1'>
                    <div className="w-100 d-flex">
                        <PettButton caption="OK" icone="checkmark" click={salvar}  className="me-1"/>
                        <PettButton caption="Cancelar" icone="cancel" click={ (e) => cancelar(e) } />
                        <PettIf condicional={condicaoItemModal.CPI_CODIGO!==""}>
                            <PettButton caption="Excluir Item" icone="minus" click={excluir}  className="ms-auto"/>
                        </PettIf>
                    </div>
                </PettModal.Footer>

            </PettModal>    
        </PettIf>
    </>
}

export default CondicoesItens;