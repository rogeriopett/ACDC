import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import Api from '../../Api';
import ClientesLoc from '../../Componentes/Localizadores/ClientesLoc';
import ConveniosLoc from '../../Componentes/Localizadores/ConveniosLoc';
import ExamesTiposLoc from '../../Componentes/Localizadores/ExamesTiposLoc';
import VendedoresLoc from '../../Componentes/Localizadores/VendedoresLoc';
import { formatarDataFb, pdfViewer, primeiroDiaMes, tratarCatch, ultimoDiaMes } from '../../Funcoes';
import { useLocalizar, CLIENTES, CONVENIOS, EXAMESTIPOS, VENDEDORES } from '../../Hooks/useLocalizar';

const mapaClientes     = { COS_CLIENTE: 'CLI_CODIGO', CLI_NOME: 'CLI_NOME' };
const mapaConvenios    = { COS_CONVENIO: 'COV_CODIGO', COV_DESCRICAO: 'COV_DESCRICAO' };
const mapaExames       = { EXT_CODIGO: 'EXT_CODIGO', EXT_DESCRICAO: 'EXT_DESCRICAO' };
const mapaSolicitantes = { COS_SOLICITANTE: 'CLI_CODIGO', CLI_NOME1: 'CLI_NOME' };
const mapaMedicos      = { COS_MEDICO: 'VEN_CODIGO', VEN_NOME: 'VEN_NOME' };

function ConsultasRel(props) {
    const { showModal, onCloseModal } = props;
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const [ gerando, setGerando ] = useState(false);
    const [ showExamesTiposLoc, setShowExamesTiposLoc ] = useState(false);
    const [ showClientesLoc, setShowClientesLoc ] = useState(false);
    const [ showConveniosLoc, setShowConveniosLoc ] = useState(false);
    const [ showSolicitantesLoc, setShowSolicitantesLoc ] = useState(false);
    const [ showMedicosLoc, setShowMedicosLoc ] = useState(false);
    const [ relatorio, setRelatorio ] = useState({        
        DATAINICIAL: formatarDataFb(primeiroDiaMes()),
        DATAFINAL: formatarDataFb(ultimoDiaMes()),
        CODIGO: 'rel01',
        COS_STATUS: 'TODAS',
        COS_CLIENTE: '',
        COS_SOLICITANTE: '',
        CLI_NOME: '',
        CLI_NOME1: '',
        COS_CONVENIO: '',
        COV_DESCRICAO: '',
        EXT_CODIGO: '',
        EXT_DESCRICAO: '',
        COS_MEDICO: '',
        VEN_NOME: ''
    });
    const selectRelatorio = [
        { value: "rel01", label: "Consultas por Cliente" },
        { value: "rel02", label: "Consultas por Médico" }, 
        { value: "rel03", label: "Consultas por Solicitante" },
        { value: "rel04", label: "Consultas por Convênio" },
        { value: "rel07", label: "Consultas por Tipo de Exame" },
    ];
    const selectStatus = [
        { value: "TODAS", label: "TODAS" },
        { value: "ABERTAS", label: "ABERTAS" }, 
        { value: "BAIXADAS", label: "BAIXADAS" },
        { value: "CANCELADAS", label: "CANCELADAS" },
    ];
    const [ clienteDisabled, setClienteDisabled ] = useState(true);
    const [ medicoDisabled, setMedicoDisabled ] = useState(true);
    const [ solicitanteDisabled, setSolicitanteDisabled ] = useState(true);
    const [ exameDisabled, setExameDisabled ] = useState(true);
    const [ convenioDisabled, setConvenioDisabled ] = useState(true);

    async function processar() {
        setGerando(true);
        const formData = new FormData();
        formData.set('op',relatorio.CODIGO || '');
        formData.set('empresa',empresaSelecionada.value);
        // formData.set('CODIGO',relatorio.CODIGO || '');
        formData.set('DATAINICIAL',formatarDataFb(relatorio.DATAINICIAL) || '');
        formData.set('DATAFINAL',formatarDataFb(relatorio.DATAFINAL) || '');
        formData.set('COS_STATUS',relatorio.COS_STATUS || '');
        formData.set('COS_CLIENTE',relatorio.COS_CLIENTE || '');
        formData.set('CLI_NOME',relatorio.CLI_NOME || '');
        formData.set('COS_CONVENIO',relatorio.COS_CONVENIO || '');
        formData.set('COV_DESCRICAO',relatorio.COV_DESCRICAO || '');
        formData.set('COS_SOLICITANTE',relatorio.COS_SOLICITANTE || '');
        formData.set('CLI_NOME1',relatorio.CLI_NOME1 || '');
        formData.set('COS_MEDICO',relatorio.COS_MEDICO || '');
        formData.set('VEN_NOME',relatorio.VEN_NOME || '');
        formData.set('EXT_CODIGO',relatorio.EXT_CODIGO || '');
        formData.set('EXT_DESCRICAO',relatorio.EXT_DESCRICAO || '');
        try {
            const response = await Api.post('firenet/consultas',formData);          
            if (response.data.erro==='N') {
                setGerando(false);
                pdfViewer(response.data.msg);

                // const pdfURL = URL.createObjectURL(new Blob([response.data], { type: 'application/pdf' }));
                // window.open(pdfURL);
                //onCloseModal(response.data.msg);
                // registroNulo();
            } 
            if (response.data.erro==='S') {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('ConsultasRel processar',error,logout);
            setGerando(false);
        }
    }

    function cancelar(e) {
        onCloseModal({});
        setGerando(false);
    }

    useEffect(() => {
        switch (relatorio.CODIGO) {
            case "rel01": 
                setClienteDisabled(false);
                setConvenioDisabled(false);
                setExameDisabled(true);
                setMedicoDisabled(false);
                setSolicitanteDisabled(false);
            break;
            case "rel02": 
                setClienteDisabled(false);
                setConvenioDisabled(false);
                setExameDisabled(true);
                setMedicoDisabled(false);
                setSolicitanteDisabled(false);
            break;
            case "rel03": 
                setClienteDisabled(false);
                setConvenioDisabled(false);
                setExameDisabled(true);
                setMedicoDisabled(false);
                setSolicitanteDisabled(false);
            break;
            case "rel04": 
                setClienteDisabled(false);
                setConvenioDisabled(false);
                setExameDisabled(true);
                setMedicoDisabled(false);
                setSolicitanteDisabled(false);
            break;
            case "rel07": 
                setClienteDisabled(false);
                setConvenioDisabled(false);
                setExameDisabled(false);
                setMedicoDisabled(false);
                setSolicitanteDisabled(false);
            break;
            default: 
                setClienteDisabled(false);
                setConvenioDisabled(true);
                setExameDisabled(true);
                setMedicoDisabled(true);
                setSolicitanteDisabled(true);
            break;
        }
    },[relatorio.CODIGO]);

    return <>
        <PettIf condicional={relatorio} >
        <PettModal show={showModal} title="Relatórios de Consultas" fechar={false} size="md">
            <div className="row g-1">
                <PettFieldDrop size="col-lg-12 col-md-12 col-sm-12" label="RELATÓRIO" name="CODIGO" value={relatorio.CODIGO} set={setRelatorio} options={selectRelatorio}/>
                <PettFieldDate size="col-lg-6 col-md-6 col-sm-6" label="DATA INICIAL" name="DATAINICIAL" value={relatorio.DATAINICIAL} set={setRelatorio}/>
                <PettFieldDate size="col-lg-6 col-md-6 col-sm-6" label="DATA FINAL" name="DATAFINAL" value={relatorio.DATAFINAL} set={setRelatorio}/>
                <PettFieldDrop size="col-lg-12 col-md-12 col-sm-12" label="STATUS" name="COS_STATUS" value={relatorio.COS_STATUS} set={setRelatorio} options={selectStatus} />
                
                <PettFieldLoc size="col-lg-3 col-md-2 col-sm-12" label="CLIENTE" name="COS_CLIENTE" value={relatorio.COS_CLIENTE} set={setRelatorio} onClick={() => setShowClientesLoc(true)} onBlur={(e) => localizar(CLIENTES, e.target.value, setRelatorio, mapaClientes)} disabled={clienteDisabled}/>
                <PettFieldText size="col-lg-9 col-md-10 col-sm-12" label="NOME CLIENTE" name="CLI_NOME" value={relatorio.CLI_NOME} disabled/>
                
                <PettFieldLoc size="col-lg-3 col-md-2 col-sm-12" label="MÉDICO" name="COS_MEDICO" value={relatorio.COS_MEDICO} set={setRelatorio} onClick={() => setShowMedicosLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, setRelatorio, mapaMedicos)} disabled={medicoDisabled}/>
                <PettFieldText size="col-lg-9 col-md-10 col-sm-12" label="NOME MÉDICO" name="VEN_NOME" value={relatorio.VEN_NOME} disabled/>
                
                <PettFieldLoc size="col-lg-3 col-md-2 col-sm-12" label="SOLICITANTE" name="COS_SOLICITANTE" value={relatorio.COS_SOLICITANTE} set={setRelatorio} onClick={() => setShowSolicitantesLoc(true)} onBlur={(e) => localizar(CLIENTES, e.target.value, setRelatorio, mapaSolicitantes)} disabled={solicitanteDisabled}/>
                <PettFieldText size="col-lg-9 col-md-10 col-sm-12" label="NOME SOLICITANTE" name="CLI_NOME1" value={relatorio.CLI_NOME1} disabled/>
                
                <PettFieldLoc size="col-lg-3 col-md-2 col-sm-12" label="CONVÊNIO" name="COS_CONVENIO" value={relatorio.COS_CONVENIO} set={setRelatorio} onClick={() => setShowConveniosLoc(true)} onBlur={(e) => localizar(CONVENIOS, e.target.value, setRelatorio, mapaConvenios)} disabled={convenioDisabled}/>
                <PettFieldText size="col-lg-9 col-md-10 col-sm-12" label="NOME CONVÊNIO" name="COV_DESCRICAO" value={relatorio.COV_DESCRICAO} disabled/>
                
                <PettFieldLoc size="col-lg-3 col-md-2 col-sm-12" label="EXAME" name="EXT_CODIGO" value={relatorio.EXT_CODIGO} set={setRelatorio} onClick={() => setShowExamesTiposLoc(true)} onBlur={(e) => localizar(EXAMESTIPOS, e.target.value, setRelatorio, mapaExames)} disabled={exameDisabled}/>
                <PettFieldText size="col-lg-9 col-md-10 col-sm-12" label="NOME EXAME" name="EXT_DESCRICAO" value={relatorio.EXT_DESCRICAO} disabled/>
            </div>

            <PettModal.Footer className="bg-tema2 border-0 p-0 px-1">
                <div className="w-100 d-flex justify-content-end gap-1">
                    {
                        gerando 
                            ? <PettButton caption="Gerando..." icone="loading_white" animado  disabled/>
                            : <PettButton caption="Gerar" icone="checkmark" click={() => processar() } />
                    }
                    <PettButton caption="Cancelar" icone="cancel" click={(e) => cancelar(e) } />
                </div>
            </PettModal.Footer>

        </PettModal>    
        <ClientesLoc showModal={showClientesLoc} onCloseModal={(data) => { selecionar(data, setRelatorio, mapaClientes); setShowClientesLoc(false); }}/>
        <ClientesLoc showModal={showSolicitantesLoc} onCloseModal={(data) => { selecionar(data, setRelatorio, mapaSolicitantes); setShowClientesLoc(false); }}/>
        <ConveniosLoc showModal={showConveniosLoc} onCloseModal={(data) => { selecionar(data, setRelatorio, mapaConvenios); setShowConveniosLoc(false); }}/>
        <ExamesTiposLoc showModal={showExamesTiposLoc} onCloseModal={(data) => { selecionar(data, setRelatorio, mapaExames); setShowExamesTiposLoc(false); }}/>
        <VendedoresLoc showModal={showMedicosLoc} onCloseModal={(data) => { selecionar(data, setRelatorio, mapaMedicos); setShowVendedoresLoc(false); }}/>
        </PettIf>
    </>
}

export default ConsultasRel;