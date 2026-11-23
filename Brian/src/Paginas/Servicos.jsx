//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Trocados os PettField* locais pelos do pett-componentes (PettFieldLoc dividido em codigo + descricao).
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal do pett-componentes.
//2026.11.18 - Incluido o import do PettMensagem do pett-componentes (era usado sem import).
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Rodape dos modais: btn-group trocado por d-flex gap-1 (espaco entre os botoes).
//2026.11.18 - Datas (filtros e previsao): PettFieldMask trocado pelo PettFieldDate; enviadas em aaaa-mm-dd (filtrosParaApi/formatarDataIso).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
//2026.11.19 - Modal NOVA O.S.: classe modal-campos (margem lateral menor) e botoes de cadastro na largura dos campos.
//2026.11.19 - Modal FILTROS tambem com a classe modal-campos.
import React, { useContext, useEffect, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import moment from 'moment';

import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
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
import EquipamentosForm from '../Componentes/EquipamentosForm';
import EquipamentosLoc from '../Componentes/EquipamentosLoc';
import Sentinela from '../Componentes/Sentinela';
import VendedoresLoc from '../Componentes/VendedoresLoc';
import { filtrosParaApi, formatarData, formatarDataIso, formatarDataStr, primeiroDiaMes, primeiroDiaMesPassado, tratarCatch, ultimoDiaMes, ultimoDiaMesSeguinte } from '../Funcoes';

function useFiltros(chave = "filtros_servicos") {
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
        const hoje = new Date();
        const dataInicial = formatarData(primeiroDiaMesPassado);
        const dataFinal = formatarData(ultimoDiaMesSeguinte);
        return { dataInicial, dataFinal, andamento: "TODOS", status: "TODOS", pesquisa: "" };
    });      

    React.useEffect(() => {
        localStorage.setItem(chave, JSON.stringify(filtros));
    }, [filtros, chave]);

    return [filtros, setFiltros];
}

function Servicos() {
    const [ filtros, setFiltros ] = useFiltros();
    const { logout } = useContext(AuthContext);
    const navigate = useNavigate();
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/servicos', 'Servicos listar', logout);
    const [ disableFields, setDisableFields ] = useState(false); //false=tras aberto para edicao.
    const [ servico, setServico ] = useState({'SER_CLIENTE': '', 'CLI_NOME':'', 'SER_DTENTRADA': moment().format('DD/MM/YYYY'), SER_KMATUAL: ''});
    const [ operacao, setOperacao ] = useState('listar');

    const selectAndamento = [
        {value: "TODOS", label: "TODOS" },
        {value: "AGUARDANDO APROVACAO", label: "AGUARDANDO APROVACAO" },
        {value: "AGUARDANDO INICIO", label: "AGUARDANDO INICIO" },
        {value: "AGUARDANDO RETIRADA", label: "AGUARDANDO RETIRADA" },
        {value: "EM TRABALHO", label: "EM TRABALHO" },
        {value: "FINALIZADA", label: "FINALIZADA" },
        {value: "PAUSADA", label: "PAUSADA" },
    ];
    const selectStatus = [
        {value: "TODOS", label: "TODOS" },
        {value: "A", label: "ABERTOS" },
        {value: "B", label: "BAIXADOS" },
        {value: "F", label: "FINALIZADOS" },
    ];

    const [ showModal, setShowModal ] = useState(false); //para novo pedido.
    const [ showModalFiltros, setShowModalFiltros ] = useState(false); //para os filtros.
    const [ showClientesLoc, setShowClientesLoc ] = useState(false);
    const [ showEquipamentosLoc, setShowEquipamentosLoc ] = useState(false);
    const [ showVendedoresLoc, setShowVendedoresLoc ] = useState(false);
    const [ showClientesForm, setShowClientesForm ] = useState(false);
    const [ showEquipamentosForm, setShowEquipamentosForm ] = useState(false);

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
        formData.set('SER_ACESSORIOS',servico.SER_ACESSORIOS || '');
        formData.set('SER_CLIENTE',servico.SER_CLIENTE || '');
        formData.set('SER_DEFEITO',servico.SER_DEFEITO || '');
        formData.set('SER_DTPREVISAO',formatarDataIso(servico.SER_DTPREVISAO));
        formData.set('SER_EQUIPAMENTO',servico.SER_EQUIPAMENTO || '');
        formData.set('SER_KMATUAL',servico.SER_KMATUAL || '');
        formData.set('SER_TECNICO',servico.SER_TECNICO || '');
        try {
            const response = await Api.post('firenet/servicos',formData);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yessss!','Ordem de serviço gerada com sucesso!');
            setShowModal(false);
            navigate('/servico/'+response.data.msg.SER_CODIGO);
        } catch (error) {
            tratarCatch('Servicos salvar',error,logout);            
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
                const novo = {...servico, SER_CLIENTE: e.target.value, CLI_NOME: response.data.msg.CLI_NOME };
                setServico(novo);
            } catch(error) {
                const novo = {...servico, SER_CLIENTE: '', CLI_NOME: '' };
                setServico(novo);
                tratarCatch('Servicos clientesLocalizar',error,logout);
            }
        }
    }

    function clientesLocClose(event, data) {
        if (data.LOC===true) {
            setServico({...servico, SER_CLIENTE: data.CLI_CODIGO, CLI_NOME: data.CLI_NOME });
        }
        setShowClientesLoc(false);
    }

    //funcoes do modal de vendedores.
    async function vendedoresLocalizar(e) {
        if (e.target.value!=='') {
            const formData = new FormData();
            formData.set('op','localizar');
            formData.set('VEN_CODIGO',e.target.value);
            try {
                const response = await Api.post('firenet/vendedores',formData);
                if (response.data.erro==='S') throw response;
                const novo = {...servico, SER_TECNICO: e.target.value, VEN_NOME: response.data.msg.VEN_NOME };
                setServico(novo);
            } catch(error) {
                const novo = {...servico, SER_TECNICO: '', VEN_NOME: '' };
                setServico(novo);
                tratarCatch('Servicos vendedoresLocalizar',error,logout);
            }
        }
    }

    function vendedoresLocClose(event, data) {
        if (data.LOC===true) {
            setServico({...servico, SER_TECNICO: data.VEN_CODIGO, VEN_NOME: data.VEN_NOME });
        }
        setShowVendedoresLoc(false);
    }    

    //funcoes do modal de equipamentos.
    async function equipamentosLocalizar(e) {
        if (e.target.value!=='') {
            const formData = new FormData();
            formData.set('op','localizar');
            formData.set('EQP_CODIGO',e.target.value);
            try {
                const response = await Api.post('firenet/equipamentos',formData);
                if (response.data.erro==='S') throw response;
                const novo = {
                    ...servico, 
                    SER_EQUIPAMENTO: e.target.value, 
                    EQP_ANOFAB: response.data.msg.EQP_ANOFAB, 
                    EQP_ANOMOD: response.data.msg.EQP_ANOMOD, 
                    EQP_CHASSI: response.data.msg.EQP_CHASSI, 
                    EQP_COMBUSTIVEL: response.data.msg.EQP_COMBUSTIVEL, 
                    EQP_COR: response.data.msg.EQP_COR, 
                    EQP_DESCRICAO: response.data.msg.EQP_DESCRICAO, 
                    EQP_MARCA: response.data.msg.EQP_MARCA, 
                    EQP_MODELO: response.data.msg.EQP_MODELO, 
                    EQP_SERIE: response.data.msg.EQP_SERIE, 
                };
                setServico(novo);
            } catch(error) {
                const novo = {
                    ...servico, 
                    SER_EQUIPAMENTO: '', 
                    EQP_ANOFAB: '',
                    EQP_ANOMOD: '',
                    EQP_CHASSI: '',
                    EQP_COMBUSTIVEL: '',
                    EQP_COR: '',
                    EQP_DESCRICAO: '',
                    EQP_MARCA: '',
                    EQP_MODELO: '',
                    EQP_SERIE: ''
                };
                setServico(novo);
                tratarCatch('Servicos equipamentosLocalizar',error,logout);
            }
        }
    }

    function equipamentosLocClose(event, data) {
        if (data.LOC===true) {
            setServico({
                ...servico, 
                SER_EQUIPAMENTO: data.EQP_CODIGO, 
                EQP_ANOFAB: data.EQP_ANOFAB, 
                EQP_ANOMOD: data.EQP_ANOMOD, 
                EQP_CHASSI: data.EQP_CHASSI, 
                EQP_COMBUSTIVEL: data.EQP_COMBUSTIVEL, 
                EQP_COR: data.EQP_COR, 
                EQP_DESCRICAO: data.EQP_DESCRICAO, 
                EQP_MARCA: data.EQP_MARCA, 
                EQP_MODELO: data.EQP_MODELO, 
                EQP_SERIE: data.EQP_SERIE,                 
            });
        }
        setShowEquipamentosLoc(false);
    }        

    function clientesFormClose() {
        setShowClientesForm(false);
    }
        
    function clientesFormSave(clienteAtualizado) {
        setServico({...servico, SER_CLIENTE: clienteAtualizado.CLI_CODIGO, CLI_NOME: clienteAtualizado.CLI_NOME });
    }

    function equipamentosFormClose() {
        setShowEquipamentosForm(false);
    }
        
    function equipamentosFormSave(equipamentoAtualizado) {
        setServico({
            ...servico, 
            SER_EQUIPAMENTO: equipamentoAtualizado.EQP_CODIGO, 
            EQP_CHASSI: equipamentoAtualizado.EQP_CHASSI,
            EQP_COMBUSTIVEL: equipamentoAtualizado.EQP_COMBUSTIVEL,
            EQP_COR: equipamentoAtualizado.EQP_COR,
            EQP_DESCRICAO: equipamentoAtualizado.EQP_DESCRICAO,
            EQP_MARCA: equipamentoAtualizado.EQP_MARCA,
            EQP_MODELO: equipamentoAtualizado.EQP_MODELO,
            EQP_SERIE: equipamentoAtualizado.EQP_SERIE,
        });
    }

    return <>
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div className="link-icone"><Link to='/home'><i className="fa fa-2x fa-fw fa-chevron-left"></i></Link></div>
                        <div className="flex-grow-1"><p className="text-truncate text-center fw-bolder mt-3">ORDENS DE SERVIÇO</p></div>
                        <div className="link-icone me-3"><Link to='' onClick={() => setShowModal(true)}><i className="fa fa-2x fa-fw fa-plus"></i></Link></div>
                        <div className="link-icone"><Link to='' onClick={() => setShowModalFiltros(true)}><i className="fa fa-2x fa-fw fa-sliders-h"></i></Link></div>
                    </div>
                </div>
            </div>
        </div>

        <PettIf condicional={ listagem.length > 0}>
            <div className={'container limit-width p-0'}>
                {                    
                    listagem.map(servico => (
                        <div className="lista-item w-100" key={servico.SER_CODIGO}>
                            <div className="row px-2 my-2">
                                <div className="col-12 text-truncate d-flex justify-content-between">
                                    <div className="text-truncate">
                                    <Link to={"/servico/"+servico.SER_CODIGO} className="lista-link stretched-link">
                                        <span className="fw-bold">{servico.CLI_NOME}</span>
                                    </Link>
                                    </div>
                                    {/* <span className="fw-bold small badge bg-primary rounded-pill">{servico.EQP_SERIE}</span> */}
                                </div>
                                <div className="col-12 text-truncate d-flex justify-content-between align-items-center">
                                    <span className="small">{servico.EQP_DESCRICAO}</span>
                                </div>
                                <div className="col-12 mb-1 lh-1 d-flex justify-content-between align-items-center">
                                    <span className="small">{servico.VEN_NOME}</span>
                                    <div>
                                        <span className="fw-bold small badge bg-primary rounded-pill">{servico.EQP_SERIE}</span>&nbsp;
                                        <PettIf condicional={servico.SER_ANDAMENTO==="AGUARDANDO APROVACAO"}><span className="text-light badge bg-dark rounded-pill">{servico.SER_ANDAMENTO}</span></PettIf>
                                        <PettIf condicional={servico.SER_ANDAMENTO==="AGUARDANDO INICIO"}><span className="text-light badge bg-primary rounded-pill">{servico.SER_ANDAMENTO}</span></PettIf>
                                        <PettIf condicional={servico.SER_ANDAMENTO==="AGUARDANDO RETIRADA"}><span className="text-light badge bg-info rounded-pill">{servico.SER_ANDAMENTO}</span></PettIf>
                                        <PettIf condicional={servico.SER_ANDAMENTO==="EM TRABALHO"}><span className="text-light badge bg-warning rounded-pill">{servico.SER_ANDAMENTO}</span></PettIf>
                                        <PettIf condicional={servico.SER_ANDAMENTO==="FINALIZADA"}><span className="text-light badge bg-success rounded-pill">{servico.SER_ANDAMENTO}</span></PettIf>
                                        <PettIf condicional={servico.SER_ANDAMENTO==="PAUSADA"}><span className="text-light badge bg-danger rounded-pill">{servico.SER_ANDAMENTO}</span></PettIf>
                                    </div>
                                </div>
                            </div>
                        </div>
                    ))
                }   
            </div>
        </PettIf>        
        <Sentinela onIntersect={() => carregarMais(operacao, filtrosParaApi(filtros))} carregando={carregando} final={final} length={listagem.length} erro={erro} />

        <PettModal show={showModal} fullscreen title="NOVA O.S." fechar={false} className="modal-campos">
            <div className="container limit-width d-flex gap-1 mb-2 p-0">
                <PettButton className="flex-fill" variant="green" caption="Cadastrar Cliente" click={() => setShowClientesForm(true)}/>
                <PettButton className="flex-fill" variant="green" caption="Cadastrar Equipamento" click={() => setShowEquipamentosForm(true)}/>
            </div>
            <div className="container limit-width p-0">
                <div className="row g-1">
                    <PettFieldLoc size="col-4" label="CLIENTE" name="SER_CLIENTE" value={servico.SER_CLIENTE} keyfilter="int" set={setServico} onClick={() => setShowClientesLoc(true)} onBlur={(e) => clientesLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-8" label="NOME CLIENTE" name="CLI_NOME" value={servico.CLI_NOME} readOnly disabled/>
                    <PettFieldLoc size="col-4" label="TÉCNICO" name="SER_TECNICO" value={servico.SER_TECNICO} keyfilter="int" set={setServico} onClick={() => setShowVendedoresLoc(true)} onBlur={(e) => vendedoresLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-8" label="NOME TÉCNICO" name="VEN_NOME" value={servico.VEN_NOME} readOnly disabled/>
                    <PettFieldLoc size="col-4" label="EQUIPAMENTO" name="SER_EQUIPAMENTO" value={servico.SER_EQUIPAMENTO} keyfilter="int" set={setServico} onClick={() => setShowEquipamentosLoc(true)} onBlur={(e) => equipamentosLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-8" label="DESCRIÇÃO EQUIPAMENTO" name="EQP_DESCRICAO" value={servico.EQP_DESCRICAO} readOnly disabled/>
                    <PettFieldText size="col-6" label="MARCA" name="EQP_MARCA" value={servico.EQP_MARCA} set={setServico} readOnly disabled/>
                    <PettFieldText size="col-6" label="MODELO" name="EQP_MODELO" value={servico.EQP_MODELO} set={setServico} readOnly disabled/>
                    <PettFieldText size="col-6" label="SÉRIE / PLACA" name="EQP_SERIE" value={servico.EQP_SERIE} set={setServico} readOnly disabled/>
                    <PettFieldText size="col-6" label="CHASSI" name="EQP_CHASSI" value={servico.EQP_CHASSI} set={setServico} readOnly disabled/>
                    <PettFieldText size="col-6" label="COMBUSTÍVEL" name="EQP_COMBUSTIVEL" value={servico.EQP_COMBUSTIVEL} set={setServico} readOnly disabled/>
                    <PettFieldText size="col-6" label="COR" name="EQP_COR" value={servico.EQP_COR} set={setServico} readOnly disabled/>
                    <PettFieldText size="col-12" label="ACESSÓRIOS" name="SER_ACESSORIOS" value={servico.SER_ACESSORIOS} set={setServico} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-6" label="KM ATUAL" name="SER_KMATUAL" value={servico.SER_KMATUAL} set={setServico} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldDate size="col-6" label="DATA PREVISÃO" name="SER_DTPREVISAO" value={servico.SER_DTPREVISAO} set={setServico} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldDrop size="col-12" label="ANDAMENTO" name="SER_ANDAMENTO" value={servico.SER_ANDAMENTO} set={setServico} options={selectAndamento} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldTextArea size="col-12" label="DEFEITO ALEGADO" name="SER_DEFEITO" value={servico.SER_DEFEITO} set={setServico} readOnly={disableFields} disabled={disableFields}/>
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
                        <PettFieldDrop size="col-12" label="ANDAMENTO" name="andamento" value={filtros.andamento} set={setFiltros} options={selectAndamento} readOnly={disableFields} disabled={disableFields}/>
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
        <EquipamentosLoc showModal={showEquipamentosLoc} onCloseModal={equipamentosLocClose}/>
        <VendedoresLoc showModal={showVendedoresLoc} onCloseModal={vendedoresLocClose}/>
        <ClientesForm show={showClientesForm} registro={null} fechar={clientesFormClose} salvar={clientesFormSave} />
        <EquipamentosForm show={showEquipamentosForm} registro={servico} fechar={equipamentosFormClose} salvar={equipamentosFormSave} />
    </>
}

export default Servicos;