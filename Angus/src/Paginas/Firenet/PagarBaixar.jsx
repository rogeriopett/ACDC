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

function PagarBaixar(props) {
    const { pagar, showModal, onCloseModal } = props;
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const [ dadosBaixa, setDadosBaixa ] = useState({
        PAG_DTPAGAMENTO: formatarDataStr(hoje),
        PAG_TIPODOCTO: pagar.PAG_TIPODOCTO,
        PAG_STATUS: pagar.PAG_STATUS,
        PAG_VALORPAGO: pagar.PAG_VALOR,
    });
    
    useEffect(() => {
        if (pagar) {
            setDadosBaixa({
                ...dadosBaixa,
                PAG_TIPODOCTO: pagar.PAG_TIPODOCTO || '',
                PAG_STATUS: pagar.PAG_STATUS || '',
                PAG_VALORPAGO: pagar.PAG_VALOR || '',
            });
        }
        //eslint-disable-next-line
    }, [pagar]);

    async function salvar() {
        const formData = new FormData();
        formData.set('op','baixar');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('PAG_CODIGO', pagar.PAG_CODIGO || '');
        formData.set('PAG_DTPAGAMENTO', formatarDataFb(dadosBaixa.PAG_DTPAGAMENTO) || '');
        formData.set('PAG_TIPODOCTO', dadosBaixa.PAG_TIPODOCTO || '');
        formData.set('PAG_VALORPAGO', dadosBaixa.PAG_VALORPAGO || '');
        try {
            const response = await Api.post('firenet/pagar',formData);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yessss!','Conta baixada com sucesso.');
            onCloseModal(response);
        } catch (error) {
            tratarCatch('PagarBaixar salvar',error,logout);
        }
    }

    function cancelar(e) {
        onCloseModal({});
    }
 
    return <>
        <PettIf condicional={pagar} >
            <PettModal show={showModal} title="Baixar Conta a Pagar..." size="md" fechar={false}>
                <div className="row gx-1 ">
                    <div className="col-12">Código: {pagar.PAG_CODIGO}</div>
                    <div className="col-12">Status: {pagar.PAG_STATUS}</div>
                    <div className="col-12">Vencimento: {formatarDataStr(pagar.PAG_DTVENCIMENTO)}</div>
                    <div className="col-12 mb-3">Valor: {pagar.PAG_VALOR}</div>
                    <PettFieldDate size="col-12 mb-1" label="DATA PAGAMENTO" name="PAG_DTPAGAMENTO" value={dadosBaixa.PAG_DTPAGAMENTO} set={setDadosBaixa}/>
                    <PettFieldDrop size="col-12 mb-1" label="TIPO DOCTO." name="PAG_TIPODOCTO" value={dadosBaixa.PAG_TIPODOCTO} set={setDadosBaixa} options={selectTipoDocto}/>
                    <PettFieldMoney size="col-12 mb-1" label="VALOR PAGO" name="PAG_VALORPAGO" value={dadosBaixa.PAG_VALORPAGO} set={setDadosBaixa}/>
                </div>

                <PettModal.Footer className='bg-tema2 border-0 p-0 px-1'>
                    <div className="w-100 d-flex">
                        <PettIf condicional={pagar.PAG_STATUS==="A"}>
                            <PettButton caption="Baixar" icone="checkmark" click={salvar} className="me-1"/>
                            <PettButton caption="Cancelar" icone="cancel" click={ (e) => cancelar(e) } />
                        </PettIf>
                    </div>
                </PettModal.Footer>

            </PettModal>    
        </PettIf>
    </>
}

export default PagarBaixar;