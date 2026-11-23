//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Trocados os PettField* locais pelos do pett-componentes (PettFieldLoc dividido em codigo + descricao).
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal do pett-componentes.
//2026.11.18 - PettMensagem local (sweetalert2) trocado pelo PettMensagem do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Rodape dos modais: btn-group trocado por d-flex gap-1 (espaco entre os botoes).
//2026.11.18 - Datas (filtros e proximo contato): PettFieldMask trocado pelo PettFieldDate; enviadas em aaaa-mm-dd (filtrosParaApi/formatarDataIso).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
//2026.11.19 - Modais de formulario com a classe modal-campos (margem lateral menor, campos centralizados).
import React, { useContext, useEffect, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import { useListagem } from '../Hooks/useListagem';
import ClientesForm from '../Componentes/ClientesForm';
import ClientesLoc from '../Componentes/ClientesLoc';
import MotivosLoc from '../Componentes/MotivosLoc';
import Sentinela from '../Componentes/Sentinela';
import ViasLoc from '../Componentes/ViasLoc';
import { filtrosParaApi, formatarData, formatarDataIso, formatarDataStr, formatarHoraStr, primeiroDiaMes, primeiroDiaMesPassado, tratarCatch, ultimoDiaMes, ultimoDiaMesSeguinte } from '../Funcoes';

function useFiltros(chave = "filtros_televendas") {
    const [filtros, setFiltros] = React.useState(() => {
        const armazenado = localStorage.getItem(chave);
        if (armazenado) {
            const parsed = JSON.parse(armazenado);
            return {
                ...parsed,
                dataInicial: parsed.dataInicial ? parsed.dataInicial : formatarData(primeiroDiaMesPassado),
                dataFinal: parsed.dataFinal ? parsed.dataFinal : formatarData(ultimoDiaMesSeguinte),
            }
        }
        // const hoje = new Date();
        const dataInicial = formatarData(primeiroDiaMesPassado);
        const dataFinal = formatarData(ultimoDiaMesSeguinte);
        return { dataInicial, dataFinal, andamento: "TODOS", status: "TODOS", pesquisa: "" };
    });      

    React.useEffect(() => {
        localStorage.setItem(chave, JSON.stringify(filtros));
    }, [filtros, chave]);

    return [filtros, setFiltros];
}

function TeleVendas() {
    const [ filtros, setFiltros ] = useFiltros();
    const { logout } = useContext(AuthContext);
    const navigate = useNavigate();
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/televendas', 'Televendas listar', logout);
    const [ disableFields, setDisableFields ] = useState(false); //false=tras aberto para edicao.
    const [ televenda, setTelevenda ] = useState({TEV_CLIENTE: '', TEV_DESCRICAO: '', TEV_MOTIVO: '', TEV_VIA: '', CLI_NOME: '', MOT_DESCRICAO: '', VIA_DESCRICAO: ''});
    const [ operacao, setOperacao ] = useState('listar');

    const selectStatus = [
        {value: "TODOS", label: "TODOS" },
        {value: "A", label: "ABERTOS" },
        {value: "B", label: "BAIXADOS" },
    ];

    const [ showModal, setShowModal ] = useState(false); //para novo pedido.
    const [ showModalFiltros, setShowModalFiltros ] = useState(false); //para os filtros.
    const [ showClientesLoc, setShowClientesLoc ] = useState(false);
    const [ showViasLoc, setShowViasLoc ] = useState(false);
    const [ showMotivosLoc, setShowMotivosLoc ] = useState(false);
    const [ showClientesForm, setShowClientesForm ] = useState(false);

    useEffect(() => {
        setDisableFields(false);
        listar(filtrosParaApi(filtros),true);      
    },[]);

    function Pesquisar() {
        listar(filtrosParaApi(filtros),true);
        setShowModalFiltros(false);
    };
    
    async function salvar() {
        const formData = new FormData();
        formData.set('op','inserir');
        formData.set('TEV_CLIENTE',televenda.TEV_CLIENTE ?? '');
        formData.set('TEV_DATAPROX',formatarDataIso(televenda.TEV_DATAPROX));
        formData.set('TEV_HORAPROX',televenda.TEV_HORAPROX ?? '');
        formData.set('TEV_DESCRICAO',televenda.TEV_DESCRICAO ?? '');
        formData.set('TEV_MOTIVO',televenda.TEV_MOTIVO ?? '');
        formData.set('TEV_VIA',televenda.TEV_VIA ?? '');
        formData.set('TEV_OBSERVACOES',televenda.TEV_OBSERVACOES ?? '');
        try {
            const response = await Api.post('firenet/televendas',formData);
            console.log('vvvvvvvvvvvv',response.data);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yessss!','Registro televenda gerado com sucesso!');
            setShowModal(false);
            navigate('/televenda/'+response.data.msg.TEV_CODIGO);
        } catch (error) {
            tratarCatch('Televendas salvar',error,logout);            
        }
    }    

    function localizarKeyDown(e) {
        if (e.keyCode === 13) {
            Pesquisar();
        }
    } 

    function resetarFiltros() {
        // const hoje = new Date();
        // const dataInicial = new Date(hoje.getFullYear(), hoje.getMonth(), 1);
        // const dataFinal = new Date(hoje.getFullYear(), hoje.getMonth() +1, 0);
        const dataInicial = formatarData(primeiroDiaMes);
        const dataFinal = formatarData(ultimoDiaMes);
        const status = 'TODOS';
        const pesquisa = '';
        setFiltros({ dataInicial, dataFinal, status, pesquisa });
    }

    //funcoes do modal de clientes.
    async function clientesLocalizar(e) {
        if (e.target.value!=='') {
            const formData = new FormData();
            formData.set('op','localizar');
            formData.set('CLI_CODIGO',e.target.value);
            try {
                const response = await Api.post('firenet/clientes',formData);
                if (response.data.erro==='S') throw response;
                const novo = {...televenda, TEV_CLIENTE: e.target.value, CLI_NOME: response.data.msg.CLI_NOME };
                setTelevenda(novo);
            } catch(error) {
                const novo = {...televenda, TEV_CLIENTE: '', CLI_NOME: '' };
                setTelevenda(novo);
                tratarCatch('Televendas clientesLocalizar',error,logout);
            }
        }
    }

    function clientesLocClose(event, data) {
        if (data.LOC===true) {
            setTelevenda({...televenda, TEV_CLIENTE: data.CLI_CODIGO, CLI_NOME: data.CLI_NOME });
        }
        setShowClientesLoc(false);
    }

    //funcoes do modal de vendedores.
    async function motivosLocalizar(e) {
        if (e.target.value!=='') {
            const formData = new FormData();
            formData.set('op','localizar');
            formData.set('MOT_CODIGO',e.target.value);
            try {
                const response = await Api.post('firenet/motivos',formData);
                if (response.data.erro==='S') throw response;
                const novo = {...televenda, TEV_MOTIVO: e.target.value, MOT_DESCRICAO: response.data.msg.MOT_DESCRICAO };
                setTelevenda(novo);
            } catch(error) {
                const novo = {...televenda, TEV_MOTIVO: '', MOT_DESCRICAO: '' };
                setTelevenda(novo);
                tratarCatch('Televendas motivosLocalizar',error,logout);
            }
        }
    }

    function motivosLocClose(event, data) {
        if (data.LOC===true) {
            setTelevenda({...televenda, TEV_MOTIVO: data.MOT_CODIGO, MOT_DESCRICAO: data.MOT_DESCRICAO });
        }
        setShowMotivosLoc(false);
    }    

    //funcoes do modal de equipamentos.
    async function viasLocalizar(e) {
        if (e.target.value!=='') {
            const formData = new FormData();
            formData.set('op','localizar');
            formData.set('VIA_CODIGO',e.target.value);
            try {
                const response = await Api.post('firenet/vias',formData);
                if (response.data.erro==='S') throw response;
                const novo = {...televenda, TEV_VIA: e.target.value, VIA_DESCRICAO: response.data.msg.VIA_DESCRICAO };
                setTelevenda(novo);
            } catch(error) {
                const novo = {...televenda, TEV_VIA: '', VIA_DESCRICAO: '' };
                setTelevenda(novo);
                tratarCatch('Televendas viasLocalizar',error,logout);
            }
        }
    }

    function viasLocClose(event, data) {
        if (data.LOC===true) {
            setTelevenda({...televenda, TEV_VIA: data.VIA_CODIGO, VIA_DESCRICAO: data.VIA_DESCRICAO });
        }
        setShowViasLoc(false);
    }        

    function clientesFormClose() {
        setShowClientesForm(false);
    }
        
    function clientesFormSave(clienteAtualizado) {
        setTelevenda({...televenda, SER_CLIENTE: clienteAtualizado.CLI_CODIGO, CLI_NOME: clienteAtualizado.CLI_NOME });
    }

    return <>
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div className="link-icone"><Link to='/home'><i className="fa fa-2x fa-fw fa-chevron-left"></i></Link></div>
                        <div className="flex-grow-1"><p className="text-truncate text-center fw-bolder mt-3">TELEVENDAS</p></div>
                        <div className="link-icone me-3"><Link to='' onClick={() => setShowModal(true)}><i className="fa fa-2x fa-fw fa-plus"></i></Link></div>
                        <div className="link-icone"><Link to='' onClick={() => setShowModalFiltros(true)}><i className="fa fa-2x fa-fw fa-sliders-h"></i></Link></div>
                    </div>
                </div>
            </div>
        </div>

        <PettIf condicional={ listagem.length > 0}>
            <div className={'container limit-width p-0'}>
                {                    
                    listagem.map(televenda => (
                        <div className="lista-item w-100" key={televenda.TEV_CODIGO}>
                            <div className="row px-2 ">
                                <div className="col-12 text-truncate d-flex justify-content-between">
                                    <div className="text-truncate">
                                        <Link to={"/televenda/"+televenda.TEV_CODIGO} className="lista-link stretched-link">
                                            <span className="fw-bold">{televenda.CLI_NOME}</span>
                                        </Link>
                                    </div>
                                </div>
                                <div className="col-12 text-truncate d-flex justify-content-between align-items-center">
                                    <span className="small">{formatarDataStr(televenda.TEV_DATAPROX)+" "+formatarHoraStr(televenda.TEV_HORAPROX)}</span>
                                    <span className="small">{televenda.TEV_DESCRICAO}</span>
                                </div>
                                <div className="col-12 mb-1 lh-1 d-flex justify-content-between align-items-center">
                                    <span className="small">{televenda.VEN_NOME}</span>
                                    <div>
                                        <PettIf condicional={televenda.TEV_STATUS==="A"}><span className="text-light badge bg-primary rounded-pill">ABERTO</span></PettIf>
                                        <PettIf condicional={televenda.TEV_STATUS==="B"}><span className="text-light badge bg-success rounded-pill">BAIXADO</span></PettIf>
                                    </div>
                                </div>
                            </div>
                        </div>
                    ))
                }   
            </div>
        </PettIf>        
        <Sentinela onIntersect={() => carregarMais(operacao, filtrosParaApi(filtros))} carregando={carregando} final={final} length={listagem.length} erro={erro} />

        <PettModal show={showModal} fullscreen title="NOVO ATENDIMENTO" fechar={false} className="modal-campos">
            <div className="container limit-width d-flex gap-1 mb-2 p-0">
                <PettButton className="flex-fill" variant="green" caption="Cadastrar Cliente" click={() => setShowClientesForm(true)}/>
            </div>
                <div className="container limit-width p-0">
                    <div className="row g-1">
                        <PettFieldLoc size="col-4" label="CLIENTE" name="SER_CLIENTE" value={televenda.TEV_CLIENTE} keyfilter="int" set={setTelevenda} onClick={() => setShowClientesLoc(true)} onBlur={(e) => clientesLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-8" label="NOME CLIENTE" name="CLI_NOME" value={televenda.CLI_NOME} readOnly disabled/>
                        <PettFieldLoc size="col-4" label="MOTIVO" name="TEV_MOTIVO" value={televenda.TEV_MOTIVO} keyfilter="int" set={setTelevenda} onClick={() => setShowMotivosLoc(true)} onBlur={(e) => motivosLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-8" label="DESCRIÇÃO MOTIVO" name="MOT_DESCRICAO" value={televenda.MOT_DESCRICAO} readOnly disabled/>
                        <PettFieldLoc size="col-4" label="VIA CONTATO" name="TEV_VIA" value={televenda.TEV_VIA} keyfilter="int" set={setTelevenda} onClick={() => setShowViasLoc(true)} onBlur={(e) => viasLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-8" label="DESCRIÇÃO VIA CONTATO" name="VIA_DESCRICAO" value={televenda.VIA_DESCRICAO} readOnly disabled/>
                        <PettFieldText size="col-12" label="DESCRICAO" name="TEV_DESCRICAO" value={televenda.TEV_DESCRICAO} set={setTelevenda} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-6" label="DATA PRÓX." name="TEV_DATAPROX" value={televenda.TEV_DATAPROX} set={setTelevenda} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMask size="col-6" label="HORA PRÓX." name="TEV_HORAPROX" value={televenda.TEV_HORAPROX} set={setTelevenda} readOnly={disableFields} disabled={disableFields} mask="99:99"/>
                        <PettFieldTextArea size="col-12" label="OBSERVAÇÕES" name="TEV_OBSERVACOES" value={televenda.TEV_OBSERVACOES} set={setTelevenda} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </div>
            <PettModal.Footer>
                <div className="container limit-width d-flex gap-1 p-0">
                    <PettButton className="flex-fill" variant="red" size="lg" caption="Cancelar" click={() => setShowModal(false)}/>
                    <PettButton className="flex-fill" variant="green" size="lg" icone="done" caption="Salvar" click={() => salvar()}/>
                </div>
            </PettModal.Footer>
        </PettModal>

        <PettModal show={showModalFiltros} fullscreen title="FILTROS" fechar={false} className="modal-campos">
                <div className="container limit-width p-0">
                    <div className="row g-1">
                        <PettFieldDrop size="col-12" label="STATUS" name="status" value={filtros.status} set={setFiltros} options={selectStatus} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-12" label="DATA INICIAL" name="dataInicial" value={filtros.dataInicial} set={setFiltros} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-12" label="DATA FINAL" name="dataFinal" value={filtros.dataFinal} set={setFiltros} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-12" label="LOCALIZAR" name="pesquisa" value={filtros.pesquisa} set={setFiltros} onKeyDown={(e) => localizarKeyDown(e)} readOnly={disableFields} disabled={disableFields}/>                                               
                    </div>
                </div>
            <PettModal.Footer>
                <div className="container limit-width p-0">
                    <div className="d-flex gap-1 w-100">
                        <PettButton className="flex-fill" variant="red" size="lg" caption="Cancelar" click={() => setShowModalFiltros(false)}/>
                        <PettButton className="flex-fill" variant="yellow" size="lg" caption="Resetar" click={() => resetarFiltros(false)}/>
                        <PettButton className="flex-fill" variant="green" size="lg" icone="done" caption="Filtrar" click={() => Pesquisar()}/>
                    </div>
                </div>
            </PettModal.Footer>
        </PettModal>

        <ClientesLoc showModal={showClientesLoc} onCloseModal={clientesLocClose}/>
        <ViasLoc showModal={showViasLoc} onCloseModal={viasLocClose}/>
        <MotivosLoc showModal={showMotivosLoc} onCloseModal={motivosLocClose}/>
        <ClientesForm show={showClientesForm} registro={null} fechar={clientesFormClose} salvar={clientesFormSave} />
    </>
}

export default TeleVendas;