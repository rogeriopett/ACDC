import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import Api from '../../Api';
import ExamesTiposLoc from '../../Componentes/Localizadores/ExamesTiposLoc';
import { tratarCatch } from '../../Funcoes';
import { useLocalizar, EXAMESTIPOS } from '../../Hooks/useLocalizar';

const mapaExames = { CSI_EXAME: 'EXT_CODIGO', CSI_DESCRICAO: 'EXT_DESCRICAO' };

function ConsultasItens(props) {
    const { consulta, item, showModal, operacao, onCloseModal } = props;
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const [ consultaItemModal, setConsultaItemModal ] = useState({});
    const [ disableFields, setDisableFields ] = useState(true);
    // const [ consultaItem, setConsultaItem ] = useState({
    //     CSI_CODIGO: '',
    //     CSI_CONSULTA: '',
    //     CSI_DESCRICAO: '',
    //     CSI_EXAME: '',
    //     CSI_SIGLA: '',
    //     CSI_VALOR: '',
    // });
    const [ showExamesTiposLoc, setShowExamesTiposLoc ] = useState(false);

    function registroNulo() {
        setConsultaItemModal({
            CSI_CODIGO: '',
            CSI_CONSULTA: '',
            CSI_DESCRICAO: '',
            CSI_EXAME: '',
            CSI_SIGLA: '',
            CSI_VALOR: '0',
        })
    }

    useEffect(() => {
        if (item.CSI_CODIGO!=="") {
            getRegistro(item.CSI_CODIGO,item.CSI_CONSULTA);
        } else {
            registroNulo();
        }
    },[item]);

    useEffect(() => {
        if (consulta.COS_STATUS!=="A") {
            setDisableFields(true);
        } else {
            setDisableFields(false);
            registroNulo();
        }
    },[consulta]);

    async function getRegistro(codigo,consulta) {
        var formData = new FormData();
        formData.set('op','visualizarItem');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('CSI_CODIGO',codigo);             
        formData.set('COS_CODIGO',consulta);             
        try {
            const response = await Api.post('firenet/consultas',formData);
            if (response.data.erro==='S') throw response;
            setConsultaItemModal(response.data.msg);
        } catch (error) {
            setConsultaItemModal({});
            tratarCatch('ConsultasItens getRegistro',error,logout);
        }
    }
    
    async function salvar() {
        const formData = new FormData();
        formData.set('op',operacao);
        formData.set('empresa',empresaSelecionada.value);
        formData.set('COS_CODIGO',consulta.COS_CODIGO || ''); //para a funcao visualizar no backend.
        formData.set('CSI_CODIGO',consultaItemModal.CSI_CODIGO || '');
        formData.set('CSI_CONSULTA',consulta.COS_CODIGO || '');
        formData.set('CSI_DESCRICAO',consultaItemModal.CSI_DESCRICAO || '');
        formData.set('CSI_EXAME',consultaItemModal.CSI_EXAME || '');
        formData.set('CSI_SIGLA',consultaItemModal.CSI_SIGLA || '');
        formData.set('CSI_VALOR',consultaItemModal.CSI_VALOR || '');
        try {
            const response = await Api.post('firenet/consultas',formData);
            if (response.data.erro==='S') throw response;
            onCloseModal(response.data.msg);
        } catch (error) {
            tratarCatch('ConsultasItens salvar',error,logout);
        }
    }

    function cancelar(e) {
        onCloseModal({});
    }

    async function excluir() {
        const confirmou = await PettMensagem.confirmar('Confirma Exclusão?','Tem certeza que deseja excluir '+consultaItemModal.CSI_DESCRICAO+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','excluirItem');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('CSI_CODIGO',consultaItemModal.CSI_CODIGO);
            formData.set('COS_CODIGO',consultaItemModal.CSI_CONSULTA);
            try {
                const response = await Api.post('firenet/consultas',formData);
                if (response.data.erro==='S') throw response;
                onCloseModal(response.data.msg);
            } catch (error) {
                tratarCatch('ConsultasItens excluir',error,logout);
            }
        }
    }

    return <>
        <PettIf condicional={consultaItemModal} >
            <PettModal show={showModal} title="Item da Consulta..." size="lg" fechar={false} position='top'>
                <div className="row g-1 mb-1">
                    <PettFieldText size="col-lg-3 col-md-6 col-sm-6" label="CÓDIGO" name="CSI_CODIGO" value={consultaItemModal.CSI_CODIGO} readOnly disabled/>
                    <PettFieldText size="col-lg-3 col-md-6 col-sm-6" label="CONSULTA" name="CSI_CONSULTA" value={consultaItemModal.CSI_CONSULTA} readOnly disabled/>
                </div>
                <div className="row g-1">
                    <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="EXAME" name="CSI_EXAME" value={consultaItemModal.CSI_EXAME} set={setConsultaItemModal} onClick={() => setShowExamesTiposLoc(true)} onBlur={(e) => localizar(EXAMESTIPOS, e.target.value, setConsultaItemModal, mapaExames)} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-10 col-md-10 col-sm-12" label="NOME EXAME" name="CSI_DESCRICAO" value={consultaItemModal.CSI_DESCRICAO} set={setConsultaItemModal}  readOnly disabled/>
                    <PettFieldText size="col-lg-3 col-md-6 col-sm-6" label="SIGLA" name="CSI_SIGLA" value={consultaItemModal.CSI_SIGLA} set={setConsultaItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-3 col-md-6 col-sm-6" label="VALOR" name="CSI_VALOR" value={consultaItemModal.CSI_VALOR} set={setConsultaItemModal} readOnly={disableFields} disabled={disableFields}/>
                </div>

                <PettModal.Footer>
                    <div className="w-100 d-flex gap-1">
                        <PettIf condicional={consulta.COS_STATUS==="A"}>
                            <PettButton caption="Confirmar" icone="checkmark" click={salvar} />
                            <PettButton caption="Cancelar" icone="cancel" click={(e) => cancelar(e) } />
                            <PettIf condicional={consultaItemModal.CSI_CODIGO!==""}>
                                <PettButton caption="Excluir Item" icone="minus" click={excluir}  className="ms-auto"/>
                            </PettIf>
                        </PettIf>
                        <PettIf condicional={consulta.COS_STATUS!=="A"}>
                            <PettButton caption="Fechar" icone="cancel" click={(e) => cancelar(e) } />
                        </PettIf>
                    </div>
                </PettModal.Footer>
            </PettModal>
            <ExamesTiposLoc showModal={showExamesTiposLoc} onCloseModal={(data) => { selecionar(data, setConsultaItemModal, mapaExames); setShowExamesTiposLoc(false); }}/>
        </PettIf>
    </>
}

export default ConsultasItens;