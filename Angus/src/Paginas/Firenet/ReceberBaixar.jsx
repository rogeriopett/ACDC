import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import Api from '../../Api';
import { selectTipoDocto } from '../../Combox';
import { formatarDataFb, formatarDataStr, hoje, tratarCatch } from '../../Funcoes';

function ReceberBaixar(props) {
    const { receber, showModal, onCloseModal } = props;
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const [ dadosBaixa, setDadosBaixa ] = useState({
        REE_DTPAGAMENTO: hoje,
        REE_TIPODOCTO: receber.REE_TIPODOCTO,
        REE_STATUS: receber.REE_STATUS,
        REE_VALORPAGO: receber.REE_VALOR,
    });
    
    useEffect(() => {
        if (receber) {
            setDadosBaixa({
                ...dadosBaixa,
                REE_TIPODOCTO: receber.REE_TIPODOCTO || '',
                REE_STATUS: receber.REE_STATUS || '',
                REE_VALORPAGO: receber.REE_VALOR || '',
            });
        }
    }, [receber]);

    async function salvar() {
        const formData = new FormData();
        formData.set('op','baixar');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('REE_CODIGO', receber.REE_CODIGO || '');
        formData.set('REE_DTPAGAMENTO', formatarDataFb(dadosBaixa.REE_DTPAGAMENTO) || '');
        formData.set('REE_TIPODOCTO', dadosBaixa.REE_TIPODOCTO || '');
        formData.set('REE_VALORPAGO', dadosBaixa.REE_VALORPAGO || '');
        try {
            const response = await Api.post('firenet/receber',formData);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yessss!','Conta baixada com sucesso.');
            onCloseModal(response);
        } catch (error) {
            tratarCatch('ReceberBaixar salvar',error,logout);
        }
    }

    function cancelar(e) {
        onCloseModal({});
    }
 
    return <>
        <PettIf condicional={receber} >
            <PettModal show={showModal} title="Baixar Conta a Receber..." size="md" fechar={false}>
                <div className="row g-1">
                    <div className="col-12">Código: {receber.REE_CODIGO}</div>
                    <div className="col-12">Status: {receber.REE_STATUS}</div>
                    <div className="col-12">Vencimento: {formatarDataStr(receber.REE_DTVENCIMENTO)}</div>
                    <div className="col-12 mb-3">Valor: {receber.REE_VALOR}</div>
                    <PettFieldDate size="col-12" label="DATA PAGAMENTO" name="REE_DTPAGAMENTO" value={dadosBaixa.REE_DTPAGAMENTO} set={setDadosBaixa}/>
                    <PettFieldDrop size="col-12" label="TIPO DOCTO." name="REE_TIPODOCTO" value={dadosBaixa.REE_TIPODOCTO} set={setDadosBaixa} options={selectTipoDocto}/>
                    <PettFieldMoney size="col-12" label="VALOR PAGO" name="REE_VALORPAGO" value={dadosBaixa.REE_VALORPAGO} set={setDadosBaixa}/>
                </div>

                <PettModal.Footer>
                    <div className="w-100 d-flex justify-content-end">
                        <PettIf condicional={receber.REE_STATUS==="A"}>
                            <PettButton caption="Baixar"   icone="checkmark" click={salvar} className="me-1"/>
                            <PettButton caption="Cancelar" icone="cancel" click={(e) => cancelar(e)} />
                        </PettIf>
                    </div>
                </PettModal.Footer>
            </PettModal>
        </PettIf>
    </>
}

export default ReceberBaixar;