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
//2026.11.18 - Defeito alegado e conserto efetuado vazios mostravam "null" (o nl2br converte null em texto); agora mostra "-".
//2026.11.18 - Itens com SwipeableList (react-swipeable-list) trocados pelo PettSwipeItem do pett-componentes (acao Excluir).
//2026.11.18 - Data de previsao: PettFieldMask trocado pelo PettFieldDate; enviada em aaaa-mm-dd (formatarDataIso).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
//2026.11.19 - Modais de formulario com a classe modal-campos (margem lateral menor, campos centralizados).
//2026.11.27 - Mensagem de registro nao encontrado com o componente local NaoEncontrado (PettIcon no lugar do fa-record-vinyl; sem vh-100).
import { useEffect, useState, useContext } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';
import { NumericFormat } from 'react-number-format';
import nl2br from 'nl2br';

import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';
import { PettSwipeItem } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import EquipamentosLoc from '../Componentes/EquipamentosLoc';
import Loading from '../Componentes/Loading';
import NaoEncontrado from '../Componentes/NaoEncontrado';
import ProdutosLoc from '../Componentes/ProdutosLoc';
import ServicosItens from '../Componentes/ServicosItens';
import VendedoresLoc from '../Componentes/VendedoresLoc';
import { formatarDataFb, formatarDataIso, formatarDataStr, tratarCatch } from '../Funcoes';

function Servico(props) {
    const { logout } = useContext(AuthContext);
    const { id } = useParams();
    const navigate = useNavigate();
    const [ disableFields, setDisableFields ] = useState(false); //false=tras aberto para edicao.
    const [ servico, setServico ] = useState({});
    const [ servicoModal, setServicoModal ] = useState({SER_DTPREVISAO: '12/12/1212'});
    // const [ servicoV, setServicoV ] = useState({SER_DTPREVISAO: '12/12/1215'});
    const [ itens, setItens ] = useState([]);
    const [ servicosItens, setServicosItens ] = useState({}); //usado no modal.
    const [ showModal, setShowModal ] = useState(false); //para inserir item.
    const [ showModalServico, setShowModalServico ] = useState(false); //para inserir item.
    const [ tituloModal, setTituloModal ] = useState('INSERIR ITEM'); //usado no modal.
    const [ opModal, setOpModal ] = useState('inseriritem'); //usado no modal.
    const [ carregando, setCarregando ] = useState(false);
    const [ showEquipamentosLoc, setShowEquipamentosLoc ] = useState(false);
    const [ showProdutosLoc, setShowProdutosLoc ] = useState(false);
    const [ showVendedoresLoc, setShowVendedoresLoc ] = useState(false);
    const selectAndamento = [
        // {value: "TODOS", label: "TODOS" },
        {value: "AGUARDANDO APROVACAO", label: "AGUARDANDO APROVACAO" },
        {value: "AGUARDANDO INICIO", label: "AGUARDANDO INICIO" },
        {value: "AGUARDANDO RETIRADA", label: "AGUARDANDO RETIRADA" },
        {value: "EM TRABALHO", label: "EM TRABALHO" },
        {value: "FINALIZADA", label: "FINALIZADA" },
        {value: "PAUSADA", label: "PAUSADA" },
    ];

    async function VerServico() {
        setCarregando(true);
        var formData = new FormData();
        formData.set('op', 'visualizar');
        formData.set('SER_CODIGO', id);
        try {
            const response = await Api.post('firenet/servicos',formData);
            if (response.data.erro==='S') throw response;
            setServico(response.data.msg);
            setItens(response.data.msg.ITENS);
            setCarregando(false);
        } catch (error) {
            tratarCatch('Servico visualizar',error,logout);
            setServico({SER_CODIGO:0});
            setItens({});
            setCarregando(false);
        }
    }   
   
    useEffect(() => {
        setDisableFields(false);
        VerServico();
        // eslint-disable-next-line
    },[]);

    async function salvar() {
        const formData = new FormData();
        formData.set('op','atualizar');
        formData.set('SER_ACESSORIOS',servicoModal.SER_ACESSORIOS ?? '');
        formData.set('SER_ANDAMENTO',servicoModal.SER_ANDAMENTO ?? '');
        formData.set('SER_CODIGO',servicoModal.SER_CODIGO ?? '');
        formData.set('SER_CONSERTO',servicoModal.SER_CONSERTO ?? '');
        formData.set('SER_DTPREVISAO',formatarDataIso(servicoModal.SER_DTPREVISAO));
        formData.set('SER_EQUIPAMENTO',servicoModal.SER_EQUIPAMENTO ?? '');
        formData.set('SER_KMATUAL',servicoModal.SER_KMATUAL ?? '');
        formData.set('SER_DEFEITO',servicoModal.SER_DEFEITO ?? '');
        formData.set('SER_TECNICO',servicoModal.SER_TECNICO ?? '');
        try {
            const response = await Api.post('firenet/servicos',formData);
            if (response.data.erro==='S') throw response;
            setServico(response.data.msg);
            setShowModalServico(false);
        } catch (error) {
            tratarCatch('Servico salvar',error,logout);
        }
    }

    async function salvarItem() {
        const formData = new FormData();
        //formData.set('op','inseriritem');
        formData.set('op',opModal);
        formData.set('SEI_SERVICO',servico.SER_CODIGO || '');
        formData.set('SEI_PRODUTO',servicosItens.SEI_PRODUTO || '');
        formData.set('SEI_DESCRICAO',servicosItens.SEI_DESCRICAO || '');
        formData.set('SEI_QUANTIDADE',servicosItens.SEI_QUANTIDADE || '');
        formData.set('SEI_DESCPORC',servicosItens.SEI_DESCPORC || '');
        // formData.set('SEI_DESCVALOR',servicosItens.SEI_DESCVALOR || '');
        formData.set('SEI_COMPLEMENTO',servicosItens.SEI_COMPLEMENTO || '');
        try {
            const response = await Api.post('firenet/servicos',formData);
            if (response.data.erro==='S') throw response;
            setServicosItens({});
            setServico(response.data.msg);
            setItens(response.data.msg.ITENS);
            setShowModal(false);
        } catch (error) {
            tratarCatch('Servico salvarItem',error,logout);
        }
    }

    //funcoes do modal de produtos.
    async function produtosLocalizar(e) {
        if (e.target.value!=='') {
            const formData = new FormData();
            formData.set('op','localizar');
            formData.set('PRO_CODIGO',e.target.value);
            try {
                const response = await Api.post('firenet/produtos',formData);
                if (response.data.erro==='S') throw response;
                const novo = {
                    ...servicosItens, 
                    SER_EQUIPAMENTO: e.target.value, 
                    SEI_PRODUTO: response.data.msg.PRO_CODIGO, 
                    SEI_DESCRICAO: response.data.msg.PRO_NOME, 
                    SEI_DESCMAX: response.data.msg.PRO_DESCMAX, 
                    SEI_VALORUNIT: response.data.msg.PRO_PRECOVENDA,
                    SEI_QUANTIDADE: '1'
                };
                setServicosItens(novo);
            } catch(error) {
                const novo = {
                    ...servicosItens, 
                    SEI_PRODUTO: '',
                    SEI_DESCRICAO: '',
                    SEI_DESCMAX: '',
                    SEI_VALORUNIT: '',
                    SEI_QUANTIDADE: '1'
                };
                setServicosItens(novo);
                tratarCatch('Servico produtosLocalizar',error,logout);
            }
        }
    }

    function produtosLocClose(event, data) {
        if (data.LOC===true) {
            setServicosItens({
                ...servicosItens, 
                SEI_PRODUTO: data.PRO_CODIGO, 
                SEI_DESCRICAO: data.PRO_NOME, 
                SEI_DESCMAX: data.PRO_DESCMAX, 
                SEI_VALORUNIT: data.PRO_PRECOVENDA,
                SEI_QUANTIDADE: '1'
            });
        }
        setShowProdutosLoc(false);
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
                const novo = {...servicoModal, SER_TECNICO: e.target.value, VEN_NOME: response.data.msg.VEN_NOME };
                setServicoModal(novo);
            } catch(error) {
                const novo = {...servicoModal, SER_TECNICO: '', VEN_NOME: '' };
                setServicoModal(novo);
                tratarCatch('Servico vendedoresLocalizar',error,logout);
            }
        }
    }

    function vendedoresLocClose(event, data) {
        if (data.LOC===true) {
            setServicoModal({...servicoModal, SER_TECNICO: data.VEN_CODIGO, VEN_NOME: data.VEN_NOME });
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
                    ...servicoModal, 
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
                setServicoModal(novo);
            } catch(error) {
                const novo = {
                    ...servicoModal, 
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
                setServicoModal(novo);
                tratarCatch('Servico equipamentosLocalizar',error,logout);
            }
        }
    }

    function equipamentosLocClose(event, data) {
        if (data.LOC===true) {
            setServicoModal({
                ...servicoModal, 
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

    //exclusao do item (acao do PettSwipeItem).
    async function excluirItem(item) {
        const confirmou = await PettMensagem.confirmar('Confirma Exclusão?','Tem certeza que deseja excluir '+item.SEI_DESCRICAO+'?');
        if (!confirmou) return;
        var formData = new FormData();
        formData.set('op', 'excluirItem');
        formData.set('SER_CODIGO', servico.SER_CODIGO);
        formData.set('SEI_CODIGO', item.SEI_CODIGO);
        try {
            const response = await Api.post('firenet/servicos',formData);
            if (response.data.erro==='S') throw response;
            setServico(response.data.msg);
            setItens(response.data.msg.ITENS);
        } catch (error) {
            tratarCatch('Servico excluirItem',error,logout);
        }
    }

    //acoes reveladas ao deslizar o item para a esquerda.
    const acoesItem = (item) => [
        { rotulo: 'Excluir', icone: 'trash_can', perigo: true, onClick: () => excluirItem(item) }
    ];

    //para abrir a insercao do item.
    function inserirItem(item) {
        setTituloModal('INSERIR ITEM');
        setOpModal('inserirItem');
        setServicosItens({});
        setShowModal(true);
    }

    function modalServico() {
        setShowModalServico(true);
    }

    useEffect(() => {
        setServicoModal(servico);
    },[servico])

    return <>    
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width p-0">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div>
                            <Link to="" onClick={() => navigate(-1)} className="link-icone"><i className="fa fa-2x fa-fw fa-chevron-left mx-2"></i></Link>
                        </div>
                        <div className="flex-grow-1 text-truncate"><p className="text-truncate fw-bold text-center mt-3">ORDEM DE SERVIÇO</p></div>
                        <div>
                            {/* <div className="link-icone me-3">&nbsp;</div> */}
                            {
                                servico.SER_STATUS==='A'
                                    ? <Link to="" onClick={() => modalServico()} className="link-icone"><i className="fa fa-2x fa-fw fa-pencil mx-2"></i></Link>
                                    : <span>&nbsp;</span>
                            }                                    
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <Loading status={carregando}/>
        <NaoEncontrado show={!carregando && servico.SER_CODIGO<=0} mensagem="Não foi possível localizar a O.S."/>
        <PettIf condicional={servico.SER_CODIGO>0}>
            <div className="container-fluid limit-width pt-2">
                <ul className="list-group mb-3">  
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-3">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">CÓDIGO</sup></p><p className="lh-1 m-0">{servico.SER_CODIGO}</p>
                            </div>      
                            <div className="col-3">
                                <PettIf condicional={servico.SER_STATUS==='A'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS</sup></p><p className="lh-1 m-0 fw-bold texto-azul">ABERTO</p>
                                </PettIf>
                                <PettIf condicional={servico.SER_STATUS==='F'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS</sup></p><p className="lh-1 m-0 fw-bold texto-verde">FINALIZADO</p>
                                </PettIf>
                                <PettIf condicional={servico.SER_STATUS==='B'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS</sup></p><p className="lh-1 m-0 fw-bold texto-vermelho">BAIXADO</p>
                                </PettIf>
                            </div>
                            <div className="col-6">
                                <PettIf condicional={servico.SER_ANDAMENTO==="AGUARDANDO APROVACAO"}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">ANDAMENTO</sup></p><p className="lh-1 m-0 fw-bold">{servico.SER_ANDAMENTO}</p>
                                </PettIf>
                                <PettIf condicional={servico.SER_ANDAMENTO==="AGUARDANDO INICIO"}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">ANDAMENTO</sup></p><p className="lh-1 m-0 fw-bold texto-azul">{servico.SER_ANDAMENTO}</p>
                                </PettIf>
                                <PettIf condicional={servico.SER_ANDAMENTO==="AGUARDANDO RETIRADA"}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">ANDAMENTO</sup></p><p className="lh-1 m-0 fw-bold texto-azul">{servico.SER_ANDAMENTO}</p>
                                </PettIf>
                                <PettIf condicional={servico.SER_ANDAMENTO==="EM TRABALHO"}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">ANDAMENTO</sup></p><p className="lh-1 m-0 fw-bold texto-amarelo">{servico.SER_ANDAMENTO}</p>
                                </PettIf>
                                <PettIf condicional={servico.SER_ANDAMENTO==="FINALIZADA"}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">ANDAMENTO</sup></p><p className="lh-1 m-0 fw-bold texto-verde">{servico.SER_ANDAMENTO}</p>
                                </PettIf>
                                <PettIf condicional={servico.SER_ANDAMENTO==="PAUSADA"}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">ANDAMENTO</sup></p><p className="lh-1 m-0 fw-bold texto-vermelho">{servico.SER_ANDAMENTO}</p>
                                </PettIf>
                            </div>
                        </div>  
                    </li> 
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">CLIENTE</sup></p><p className="lh-1 m-0">{servico.SER_CLIENTE+' - '+servico.CLI_NOME}</p></li>  
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">TÉCNICO</sup></p><p className="lh-1 m-0">{servico.SER_TECNICO+' - '+servico.VEN_NOME}</p></li>  
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">EQUIPAMENTO</sup></p><p className="lh-1 m-0">{servico.SER_EQUIPAMENTO+' - '+servico.EQP_DESCRICAO}</p></li>  
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">MARCA</sup></p><p className="lh-1 m-0">{servico.EQP_MARCA}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">MODELO</sup></p><p className="lh-1 m-0">{servico.EQP_MODELO}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">SERIE / PLACA</sup></p><p className="lh-1 m-0">{servico.EQP_SERIE}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">ACESSÓRIOS</sup></p><p className="lh-1 m-0">{servico.SER_ACESSORIOS}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA ENTRADA</sup></p><p className="lh-1 m-0">{formatarDataStr(servico.SER_DTENTRADA)}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA PREVISÃO</sup></p><p className="lh-1 m-0">{formatarDataStr(servico.SER_DTPREVISAO)}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DESCONTO</sup></p>
                                <p className="lh-1 m-0">
                                    <NumericFormat 
                                        value={parseFloat(servico.SER_DESCVALOR)}
                                        // isNumericString={true}
                                        displayType="text"
                                        prefix="R$ "
                                        thousandsGroupStyle="thousand"
                                        decimalSeparator=","
                                        decimalScale={2}
                                        fixedDecimalScale={true}
                                        thousandSeparator="."
                                        allowNegative={true}
                                    />
                                </p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">VALOR TOTAL (TABELA {servico.SER_TABELAPRECO})</sup></p>
                                <p className="lh-1 m-0 texto-vermelho">
                                    <NumericFormat 
                                        value={parseFloat(servico.SER_VALORTOTAL)}
                                        // isNumericString={true}
                                        displayType="text"
                                        prefix="R$ "
                                        thousandsGroupStyle="thousand"
                                        decimalSeparator=","
                                        decimalScale={2}
                                        fixedDecimalScale={true}
                                        thousandSeparator="."
                                        allowNegative={true}
                                    />
                                </p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">DEFEITO ALEGADO</sup></p><span className="lh-1 m-0"><section dangerouslySetInnerHTML={{ __html: nl2br(servico.SER_DEFEITO ?? '') || '-' }} /></span></li>
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">CONSERTO EFETUADO</sup></p><span className="lh-1 m-0"><section dangerouslySetInnerHTML={{ __html: nl2br(servico.SER_CONSERTO ?? '') || '-' }} /></span></li>
                </ul>
            </div>
        </PettIf>

        <div className="container-fluid limit-width">
            <div className="row">
                <div className="col-12 d-flex justify-content-between align-items-center barra-secao limit-height">
                    <div className="flex-grow-1"><p className="text-truncate fs-3 fw-bolder mt-3">Itens</p></div>
                    <div className="link-icone">
                        {
                            servico.SER_STATUS==='A'
                                ? <Link to="" onClick={() => inserirItem()}><i className="fa fa-2x fa-fw fa-plus"></i></Link>
                                : <span>&nbsp;</span>
                        }
                    </div>
                </div>
            </div>
        </div>

        <PettIf condicional={itens.length > 0}>
            <div className="container-fluid limit-width p-0 pb-2">
                <div className="mb-5">
                    {
                        itens.map(item => (
                            <PettSwipeItem key={item.SEI_CODIGO} acoes={acoesItem(item)} disabled={servico.SER_STATUS!=='A'}>
                                <ServicosItens
                                    SEI_PRODUTO={item.SEI_PRODUTO}
                                    SEI_DESCRICAO={item.SEI_DESCRICAO}
                                    SEI_QUANTIDADE={item.SEI_QUANTIDADE}
                                    SEI_SEQUENCIA={item.SEI_SEQUENCIA}
                                    SEI_UNIDADE={item.SEI_UNIDADE}
                                    SEI_VALORTOTAL={item.SEI_VALORTOTAL}
                                    SEI_VALORUNIT={item.SEI_VALORUNIT}
                                />
                            </PettSwipeItem>
                        ))
                    }
                </div>             
            </div>             
        </PettIf>

        <PettModal show={showModalServico} fullscreen title="EDITAR O.S." fechar={false} className="modal-campos">
                <div className="container limit-width p-0">
                    <div className="row g-1">
                        <PettFieldLoc size="col-4" label="TÉCNICO" name="SER_TECNICO" value={servicoModal.SER_TECNICO} keyfilter="int" set={setServicoModal} onClick={() => setShowVendedoresLoc(true)} onBlur={(e) => vendedoresLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-8" label="NOME TÉCNICO" name="VEN_NOME" value={servicoModal.VEN_NOME} readOnly disabled/>
                        <PettFieldLoc size="col-4" label="EQUIPAMENTO" name="SER_EQUIPAMENTO" value={servicoModal.SER_EQUIPAMENTO} keyfilter="int" set={setServicoModal} onClick={() => setShowEquipamentosLoc(true)} onBlur={(e) => equipamentosLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-8" label="DESCRIÇÃO EQUIPAMENTO" name="EQP_DESCRICAO" value={servicoModal.EQP_DESCRICAO} readOnly disabled/>                      
                        <PettFieldText size="col-6" label="MARCA" name="EQP_MARCA" value={servicoModal.EQP_MARCA} set={setServicoModal} readOnly disabled/>
                        <PettFieldText size="col-6" label="MODELO" name="EQP_MODELO" value={servicoModal.EQP_MODELO} set={setServicoModal} readOnly disabled/>
                        <PettFieldText size="col-6" label="SÉRIE / PLACA" name="EQP_SERIE" value={servicoModal.EQP_SERIE} set={setServicoModal} readOnly disabled/>
                        <PettFieldText size="col-6" label="CHASSI" name="EQP_CHASSI" value={servicoModal.EQP_CHASSI} set={setServicoModal} readOnly disabled/>
                        <PettFieldText size="col-6" label="COMBUSTÍVEL" name="EQP_COMBUSTIVEL" value={servicoModal.EQP_COMBUSTIVEL} set={setServicoModal} readOnly disabled/>
                        <PettFieldText size="col-6" label="COR" name="EQP_COR" value={servicoModal.EQP_COR} set={setServicoModal} readOnly disabled/>
                        <PettFieldText size="col-12" label="ACESSÓRIOS" name="SER_ACESSORIOS" value={servicoModal.SER_ACESSORIOS} set={setServicoModal} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-6" label="KM ATUAL" name="SER_KMATUAL" value={servicoModal.SER_KMATUAL} set={setServicoModal} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-6" label="DATA PREVISÃO" name="SER_DTPREVISAO" value={servicoModal.SER_DTPREVISAO} set={setServicoModal} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-12" label="ANDAMENTO" name="SER_ANDAMENTO" value={servicoModal.SER_ANDAMENTO} set={setServicoModal} options={selectAndamento} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldTextArea size="col-12" label="DEFEITO ALEGADO" name="SER_DEFEITO" value={servicoModal.SER_DEFEITO} set={setServicoModal} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldTextArea size="col-12" label="CONSERTO EFETUADO" name="SER_CONSERTO" value={servicoModal.SER_CONSERTO} set={setServicoModal} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </div>
            <PettModal.Footer>
                <div className="container limit-width d-flex gap-1 p-0">
                    <PettButton className="flex-fill" variant="red" size="lg" caption="Cancelar" click={() => setShowModalServico(false)}/>
                    <PettButton className="flex-fill" variant="green" size="lg" icone="done" caption="Salvar" click={() => salvar()}/>
                </div>
            </PettModal.Footer>
        </PettModal>

        <PettModal show={showModal} fullscreen title={tituloModal} fechar={false} className="modal-campos">
                <div className="container limit-width p-0">
                    <div className="row g-1">
                        <PettFieldLoc size="col-4" label="PRODUTO" name="SEI_PRODUTO" value={servicosItens.SEI_PRODUTO} keyfilter="int" set={setServicosItens} onClick={() => setShowProdutosLoc(true)} onBlur={(e) => produtosLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-8" label="DESCRIÇÃO PRODUTO" name="SEI_DESCRICAO" value={servicosItens.SEI_DESCRICAO} readOnly disabled/>
                        <PettFieldText size="col-12" label="COMPLEMENTO" name="SEI_COMPLEMENTO" value={servicosItens.SEI_COMPLEMENTO} set={setServicosItens} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-12" label="QUANTIDADE" name="SEI_QUANTIDADE" value={servicosItens.SEI_QUANTIDADE} set={setServicosItens} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldMoney size="col-12" label="VALOR UNITÁRIO" name="SEI_VALORUNIT" value={servicosItens.SEI_VALORUNIT} set={setServicosItens} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldFloat size="col-12" label="DESCONTO MÁXIMO" name="SEI_DESCMAX" value={servicosItens.SEI_DESCMAX} set={setServicosItens} readOnly disabled />
                        <PettFieldFloat size="col-12" label="% DESCONTO" name="SEI_DESCPORC" value={servicosItens.SEI_DESCPORC} set={setServicosItens} readOnly={disableFields} disabled={disableFields} />
                    </div>
                </div>
            <PettModal.Footer>
                <div className="container limit-width p-0">
                    <div className="d-flex gap-1 w-100">
                        <PettButton className="flex-fill" variant="red" size="lg" caption="Cancelar" click={() => setShowModal(false)}/>
                        <PettButton className="flex-fill" variant="green" size="lg" icone="done" caption="Salvar" click={() => salvarItem()}/>
                    </div>
                </div>
            </PettModal.Footer>
        </PettModal>

        <EquipamentosLoc showModal={showEquipamentosLoc} onCloseModal={equipamentosLocClose}/>
        <ProdutosLoc showModal={showProdutosLoc} onCloseModal={produtosLocClose}/>
        <VendedoresLoc showModal={showVendedoresLoc} onCloseModal={vendedoresLocClose}/>
    </>
}

export default Servico;