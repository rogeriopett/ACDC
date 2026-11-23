//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Trocados os PettField* locais pelos do pett-componentes (PettFieldLoc dividido em codigo + descricao).
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal do pett-componentes.
//2026.11.18 - PettMensagem local (sweetalert2) trocado pelo PettMensagem do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Corrigido o import do MotivosLoc (apontava para o EquipamentosLoc).
//2026.11.18 - Rodape dos modais: btn-group trocado por d-flex gap-1 (espaco entre os botoes).
//2026.11.18 - Observacoes vazias mostravam "null" (o nl2br converte null em texto); agora mostra "-".
//2026.11.18 - Removido o import do CSS do react-swipeable-list (nao era usado).
//2026.11.18 - Data do proximo contato: PettFieldMask trocado pelo PettFieldDate; enviada em aaaa-mm-dd (formatarDataIso).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
//2026.11.19 - Modais de formulario com a classe modal-campos (margem lateral menor, campos centralizados).
import { useEffect, useState, useContext } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';
import nl2br from 'nl2br';

import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import Loading from '../Componentes/Loading';
import MotivosLoc from '../Componentes/MotivosLoc';
import ViasLoc from '../Componentes/ViasLoc';
import { formatarDataIso, formatarDataStr, formatarHoraStr, tratarCatch } from '../Funcoes';

function TeleVenda(props) {
    const { logout } = useContext(AuthContext);
    const { id } = useParams();
    const navigate = useNavigate();
    const [ disableFields, setDisableFields ] = useState(false); //false=tras aberto para edicao.
    const [ televenda, setTelevenda ] = useState({});
    const [ televendaModal, setTelevendaModal ] = useState({TEV_DATAPROX: '12/12/1212'});
    // const [ servicoV, setServicoV ] = useState({SER_DTPREVISAO: '12/12/1215'});
    const [ carregando, setCarregando ] = useState(false);
    const [ showMotivosLoc, setShowMotivosLoc ] = useState(false);
    const [ showViasLoc, setShowViasLoc ] = useState(false);
    const [ showModalTelevenda, setShowModalTelevenda ] = useState(false);

    async function VerTelevenda() {
        setCarregando(true);
        var formData = new FormData();
        formData.set('op', 'visualizar');
        formData.set('TEV_CODIGO', id);
        try {
            const response = await Api.post('firenet/televendas',formData);
            if (response.data.erro==='S') throw response;
            setTelevenda(response.data.msg);
            setCarregando(false);
        } catch (error) {
            setTelevenda({TEV_CODIGO:0});
            setCarregando(false);
            tratarCatch('Televenda visualizar',error,logout);
        }
    }   
   
    useEffect(() => {
        setDisableFields(false);
        VerTelevenda();
    },[]);

    async function salvar() {
        const formData = new FormData();
        formData.set('op','atualizar');
        formData.set('TEV_CLIENTE',televendaModal.TEV_CLIENTE ?? '');
        formData.set('TEV_CODIGO',televendaModal.TEV_CODIGO ?? '');
        formData.set('TEV_DATAPROX',formatarDataIso(televendaModal.TEV_DATAPROX));
        formData.set('TEV_HORAPROX',formatarHoraStr(televendaModal.TEV_HORAPROX) ?? '');
        formData.set('TEV_DESCRICAO',televendaModal.TEV_DESCRICAO ?? '');
        formData.set('TEV_MOTIVO',televendaModal.TEV_MOTIVO ?? '');
        formData.set('TEV_VIA',televendaModal.TEV_VIA ?? '');
        formData.set('TEV_OBSERVACOES',televendaModal.TEV_OBSERVACOES ?? '');
        try {
            const response = await Api.post('firenet/televendas',formData);
            if (response.data.erro==='S') throw response;
            setTelevenda(response.data.msg);
            setShowModalTelevenda(false);
        } catch (error) {
            tratarCatch('Televenda salvar',error,logout);
        }
    }

    //funcoes do modal de motivos.
    async function motivosLocalizar(e) {
        if (e.target.value!=='') {
            const formData = new FormData();
            formData.set('op','localizar');
            formData.set('MOT_CODIGO',e.target.value);
            try {
                const response = await Api.post('firenet/motivos',formData);
                if (response.data.erro==='S') throw response;
                const novo = {...televendaModal, TEV_MOTIVO: e.target.value, MOT_DESCRICAO: response.data.msg.MOT_DESCRICAO };
                setTelevendaModal(novo);
            } catch(error) {
                const novo = {...televendaModal, TEV_MOTIVO: '', MOT_DESCRICAO: '' };
                setTelevendaModal(novo);
                tratarCatch('Televenda motivosLocalizar',error,logout);
            }
        }
    }

    function motivosLocClose(event, data) {
        if (data.LOC===true) {
            setTelevendaModal({...televendaModal, TEV_MOTIVO: data.MOT_CODIGO, MOT_DESCRICAO: data.MOT_DESCRICAO });
        }
        setShowMotivosLoc(false);
    }         

    //funcoes do modal de vias
    async function viasLocalizar(e) {
        if (e.target.value!=='') {
            const formData = new FormData();
            formData.set('op','localizar');
            formData.set('VIA_CODIGO',e.target.value);
            try {
                const response = await Api.post('firenet/vias',formData);
                if (response.data.erro==='S') throw response;
                const novo = {...televendaModal, TEV_VIA: e.target.value, VIA_DESCRICAO: response.data.msg.VIA_DESCRICAO };
                setTelevendaModal(novo);
            } catch(error) {
                const novo = {...televendaModal, TEV_VIA: '', VIA_DESCRICAO: '' };
                setTelevendaModal(novo);
                tratarCatch('Televenda viasLocalizar',error,logout);
            }
        }
    }

    function viasLocClose(event, data) {
        if (data.LOC===true) {
            setTelevendaModal({...televendaModal, TEV_VIA: data.VIA_CODIGO, VIA_DESCRICAO: data.VIA_DESCRICAO });
        }
        setShowViasLoc(false);
    }        
   
    function modalTelevenda() {
        setShowModalTelevenda(true);
    }

    useEffect(() => {
        setTelevendaModal(televenda);
    },[televenda])

    async function baixar() {
        const confirmou = await PettMensagem.confirmar('Baixar','Deseja baixar esse atendimento?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','baixar');
            formData.set('TEV_CODIGO',televenda.TEV_CODIGO ?? '');
            try {
                const response = await Api.post('/firenet/televendas',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yesss!','Atendimento baixado com sucesso.');
                VerTelevenda();
            } catch (error) {
                tratarCatch('Televenda baixar',error,logout);
            }
        }
    }

    async function reabrir() {
        const confirmou = await PettMensagem.confirmar('Reabrir','Deseja reabrir esse atendimento?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','reabrir');
            formData.set('TEV_CODIGO',televenda.TEV_CODIGO ?? '');
            try {
                const response = await Api.post('/firenet/televendas',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yesss!','Atendimento reaberto com sucesso.');
                VerTelevenda();
            } catch (error) {
                tratarCatch('Televenda reabrir',error,logout);
            }
        }
    }

    return <>    
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width p-0">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div>
                            <Link to="" onClick={() => navigate(-1)} className="link-icone"><i className="fa fa-2x fa-fw fa-chevron-left mx-2"></i></Link>
                        </div>
                        <div className="flex-grow-1 text-truncate"><p className="text-truncate fw-bold text-center mt-3">ATENDIMENTO</p></div>
                        <div>
                            {/* <div className="link-icone me-3">&nbsp;</div> */}
                            {
                                televenda.TEV_STATUS==='A'
                                    ? <Link to="" onClick={() => modalTelevenda()} className="link-icone"><i className="fa fa-2x fa-fw fa-pencil mx-2"></i></Link>
                                    : <span>&nbsp;</span>
                            }                                    
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <Loading status={carregando}/>
        <PettIf condicional={televenda.TEV_CODIGO<=0}>
            <div className="container limit-width vh-100 d-flex justify-content-center align-items-center">
                <p className="text-center lead"><span style={{fontSize: '7em'}} className="texto-suave"><i className="fa fa-fw fa-record-vinyl"></i></span><br/>Não foi possível localizar o atendimento.</p>
            </div>  
        </PettIf>
        <PettIf condicional={televenda.TEV_CODIGO>0}>
            <div className="container-fluid limit-width pt-2">
                <ul className="list-group mb-3">  
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-3">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">CÓDIGO</sup></p><p className="lh-1 m-0">{televenda.TEV_CODIGO}</p>
                            </div>      
                            <div className="col-3">
                                <PettIf condicional={televenda.TEV_STATUS==='A'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS</sup></p><p className="lh-1 m-0 fw-bold texto-azul">ABERTO</p>
                                </PettIf>
                                <PettIf condicional={televenda.TEV_STATUS==='B'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS</sup></p><p className="lh-1 m-0 fw-bold texto-verde">BAIXADO</p>
                                </PettIf>
                            </div>
                        </div>  
                    </li> 
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">CLIENTE</sup></p><p className="lh-1 m-0">{televenda.TEV_CLIENTE+' - '+televenda.CLI_NOME}</p></li>  
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">MOTIVO</sup></p><p className="lh-1 m-0">{televenda.TEV_MOTIVO+' - '+televenda.MOT_DESCRICAO}</p></li>  
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">VIA DE CONTATO</sup></p><p className="lh-1 m-0">{televenda.TEV_VIA+' - '+televenda.VIA_DESCRICAO}</p></li>
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">DESCRIÇÃO</sup></p><p className="lh-1 m-0">{televenda.TEV_DESCRICAO}</p></li>
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA PRÓX.</sup></p><p className="lh-1 m-0">{formatarDataStr(televenda.TEV_DATAPROX)}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">HORA PRÓX.</sup></p><p className="lh-1 m-0">{formatarHoraStr(televenda.TEV_HORAPROX)}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">OBSERVAÇÕES</sup></p><span className="lh-1 m-0"><section dangerouslySetInnerHTML={{ __html: nl2br(televenda.TEV_OBSERVACOES ?? '') || '-' }} /></span></li>
                </ul>
                <div>
                    <PettIf condicional={televenda.TEV_STATUS==="A"}>
                        <PettButton className="w-100 flex-fill" variant="green" size="lg" icone="done" caption="Baixar Atendimento" click={() => baixar()}/>
                    </PettIf>
                    <PettIf condicional={televenda.TEV_STATUS==="B"}>
                        <PettButton className="w-100 flex-fill" variant="blue" size="lg" icone="undo" caption="Reabrir Atendimento" click={() => reabrir()}/>
                    </PettIf>
                </div>
            </div>
        </PettIf>

        <PettModal show={showModalTelevenda} fullscreen title="EDITAR ATENDIMENTO" fechar={false} className="modal-campos">
                <div className="container limit-width p-0">
                    <div className="row gx-1">
                        <PettFieldLoc size="col-4" label="MOTIVO" name="TEV_MOTIVO" value={televendaModal.TEV_MOTIVO} keyfilter="int" set={setTelevendaModal} onClick={() => setShowMotivosLoc(true)} onBlur={(e) => motivosLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-8" label="DESCRIÇÃO MOTIVO" name="MOT_DESCRICAO" value={televendaModal.MOT_DESCRICAO} readOnly disabled/>
                        <PettFieldLoc size="col-4" label="VIA DE CONTATO" name="TEV_VIA" value={televendaModal.TEV_VIA} keyfilter="int" set={setTelevendaModal} onClick={() => setShowViasLoc(true)} onBlur={(e) => viasLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-8" label="DESCRIÇÃO VIA DE CONTATO" name="VIA_DESCRICAO" value={televendaModal.VIA_DESCRICAO} readOnly disabled/>
                        <PettFieldText size="col-12" label="DESCRIÇÃO" name="TEV_DESCRICAO" value={televendaModal.TEV_DESCRICAO} set={setTelevendaModal} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-6" label="DATA PRÓX." name="TEV_DATAPROX" value={televendaModal.TEV_DATAPROX} set={setTelevendaModal} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMask size="col-6" label="HORA PRÓX." name="TEV_HORAPROX" value={formatarHoraStr(televendaModal.TEV_HORAPROX)} set={setTelevendaModal} readOnly={disableFields} disabled={disableFields} mask="99:99"/>
                        <PettFieldTextArea size="col-12" label="OBSERVAÇÕES" name="TEV_OBSERVACOES" value={televendaModal.TEV_OBSERVACOES} set={setTelevendaModal} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </div>
            <PettModal.Footer>
                <div className="container limit-width d-flex gap-1 p-0">
                    <PettButton className="flex-fill" variant="red" size="lg" caption="Cancelar" click={() => setShowModalTelevenda(false)}/>
                    <PettButton className="flex-fill" variant="green" size="lg" icone="done" caption="Salvar" click={() => salvar()}/>
                </div>
            </PettModal.Footer>
        </PettModal>

        <MotivosLoc showModal={showMotivosLoc} onCloseModal={motivosLocClose}/>
        <ViasLoc showModal={showViasLoc} onCloseModal={viasLocClose}/>
    </>
}

export default TeleVenda;