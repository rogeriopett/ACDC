//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Trocados os PettField* locais pelos do pett-componentes (PettFieldLoc dividido em codigo + descricao).
//2026.11.17 - Campo de código de barras (InputText do PrimeReact) trocado pelo PettFieldSearch.
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal do pett-componentes.
//2026.11.18 - PettMensagem local (sweetalert2) trocado pelo PettMensagem do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Rodape dos modais: btn-group trocado por d-flex gap-1 (espaco entre os botoes).
//2026.11.18 - Observacoes vazias mostravam "null" (o nl2br converte null em texto); agora mostra "-".
//2026.11.18 - Itens com SwipeableList (react-swipeable-list) trocados pelo PettSwipeItem do pett-componentes (acoes Excluir e Editar).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
//2026.11.19 - Modais de formulario com a classe modal-campos (margem lateral menor, campos centralizados).
//2026.11.27 - Mensagem de registro nao encontrado com o componente local NaoEncontrado (PettIcon no lugar do fa-record-vinyl; sem vh-100).
//2026.11.27 - VerVenda liga o carregando (comecava com setCarregando(false) e o Loading nunca aparecia).
import { useEffect, useState, useContext } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';
import { NumericFormat } from 'react-number-format';
import nl2br from 'nl2br';

import { PettButton } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldSearch } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';
import { PettSwipeItem } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import CondicoesLoc from '../Componentes/CondicoesLoc';
import Loading from '../Componentes/Loading';
import NaoEncontrado from '../Componentes/NaoEncontrado';
import ProdutosLoc from '../Componentes/ProdutosLoc';
import VendasItens from '../Componentes/VendasItens';
import { formatarDataStr, formatarHora, tratarCatch } from '../Funcoes';

function Venda(props) {
    const { logout } = useContext(AuthContext);
    const { id } = useParams();
    const navigate = useNavigate();
    const [ carregando, setCarregando ] = useState(false);
    const [ enviando, setEnviando ] = useState(false);
    const [ envio, setEnvio ] = useState({ CLI_EMAIL: '' });
    const [ disableFields, setDisableFields ] = useState(false); //false=tras aberto para edicao.
    const [ venda, setVenda ] = useState({});
    const [ vendaModal, setVendaModal ] = useState({});
    const [ itens, setItens ] = useState([]);
    const [ vendasItens, setVendasItens ] = useState({}); //usado no modal.
    const [ showModal, setShowModal ] = useState(false); //para inserir item.
    const [ showModalPedido, setShowModalPedido ] = useState(false); //para inserir item.
    const [ showModalEnvio, setShowModalEnvio ] = useState(false); //para envio por email.
    const [ tituloModal, setTituloModal ] = useState('INSERIR ITEM'); //usado no modal.
    const [ opModal, setOpModal ] = useState('inserirItem'); //usado no modal.
    const [ codigoBarras, setCodigoBarras ] = useState(''); //para insercao rápida de item 

    const [ showProdutosLoc, setShowProdutosLoc ] = useState(false);
    const [ showCondicoesLoc, setShowCondicoesLoc ] = useState(false);

    async function VerVenda() {
        setCarregando(true);
        var formData = new FormData();
        formData.set('op', 'visualizar');
        formData.set('VED_CODIGO', id);

        try {
            const response = await Api.post('firenet/vendas',formData);
            if (response.data.erro==='S') throw response;
            setVenda(response.data.msg);
            setItens(response.data.msg.ITENS);
            setCarregando(false);
        } catch (error) {
            tratarCatch('Venda visualizar',error,logout);
            setVenda({VED_CODIGO:0});
            setItens({});
            setCarregando(false);
        }
    }   
   
    useEffect(() => {
        VerVenda();
        setDisableFields(false);
    },[]);

    async function salvarVenda() {
        const formData = new FormData();
        formData.set('op','atualizar');
        formData.set('VED_CODIGO',vendaModal.VED_CODIGO || '');
        formData.set('VED_CONDICAO',vendaModal.VED_CONDICAO || '');
        formData.set('VED_OBSERVACOES',vendaModal.VED_OBSERVACOES || '');
        try {
            const response = await Api.post('firenet/vendas',formData);
            if (response.data.erro==='S') throw response;
            setVenda(response.data.msg);
            setShowModalPedido(false);
        } catch (error) {
            tratarCatch('Venda salvarVenda',error,logout);
        }
    }

    async function salvarItem() {
        const formData = new FormData();
        formData.set('op',opModal); //pode ser inserirItem ou alterarItem.
        formData.set('VED_CODIGO',venda.VED_CODIGO || '');
        formData.set('VEI_CODIGO',vendasItens.VEI_CODIGO || '');
        formData.set('VEI_PRODUTO',vendasItens.VEI_PRODUTO || '');
        formData.set('VEI_DESCRICAO',vendasItens.VEI_DESCRICAO || '');
        formData.set('VEI_QUANTIDADE',vendasItens.VEI_QUANTIDADE || '');
        formData.set('VEI_DESCPORC',vendasItens.VEI_DESCPORC || '');
        formData.set('VEI_DESCVALOR',vendasItens.VEI_DESCVALOR || '');
        formData.set('VEI_COMPLEMENTO',vendasItens.VEI_COMPLEMENTO || '');
        formData.set('VEI_VALORUNIT',vendasItens.VEI_VALORUNIT || '');
        formData.set('ALTERAR_VALOR_UNITARIO',import.meta.env.VITE_ALTERAR_VALOR_UNITARIO || '');
        formData.set('DESCONTO_EM_VALOR',import.meta.env.VITE_DESCONTO_EM_VALOR || '');
        try {
            const response = await Api.post('firenet/vendas',formData);
            if (response.data.erro==='S') throw response;
            setVendasItens({});
            setVenda(response.data.msg);
            setItens(response.data.msg.ITENS);
            setShowModal(false);
        } catch (error) {
            tratarCatch('Venda salvarItem',error,logout);
        }
    }

    async function fecharPedido() {
        const confirmou = await PettMensagem.confirmar('Fechar o pedido?','Tem certeza que deseja fechar o pedido '+venda.VED_CODIGO+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','fecharVenda');
            formData.set('VED_CODIGO',venda.VED_CODIGO || '');
            try {
                const response = await Api.post('firenet/vendas',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!','Venda finalizada com sucesso.');
                setVenda(response.data.msg)
            } catch (error) {
                tratarCatch('Venda fecharPedido',error,logout);
            }
        }
    }

    async function inutilizarPedido() {
        const confirmou = await PettMensagem.confirmar('Inutilizar o pedido?','Tem certeza que deseja inutilizar o pedido '+venda.VED_CODIGO+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','inutilizar');
            formData.set('VED_CODIGO',venda.VED_CODIGO || '');
            try {
                const response = await Api.post('firenet/vendas',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!','Venda inutilizada com sucesso.');
                setVenda(response.data.msg)
            } catch (error) {
                tratarCatch('Venda inutilizarPedido',error,logout);
            }
        }
    }
    
    async function enviarEmail() {
        setEnviando(true);
        const formData = new FormData();
        formData.set('op','enviar');
        formData.set('VED_CODIGO',venda.VED_CODIGO || '');
        formData.set('CLI_EMAIL',envio.CLI_EMAIL || '');
        try {
            const response = await Api.post('firenet/vendas',formData);
            if (response.data.erro==='S') throw response;
            setShowModalEnvio(false);
            setEnviando(false);
        } catch (error) {
            tratarCatch('Venda enviarEmail',error,logout);
            setEnviando(false);
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
                    ...vendasItens, 
                    VEI_PRODUTO: e.target.value, 
                    VEI_DESCRICAO: response.data.msg.PRO_NOME, 
                    VEI_DESCMAX: response.data.msg.PRO_DESCMAX, 
                    VEI_VALORUNIT: response.data.msg.PRO_PRECOVENDA,
                    VEI_QUANTIDADE: '1'
                };
                setVendasItens(novo);
            } catch(error) {
                tratarCatch('Venda produtosLocalizar',error,logout);
                const novo = {
                    ...vendasItens,                       
                    VEI_PRODUTO: '', 
                    VEI_DESCRICAO: '',
                    VEI_DESCMAX: '', 
                    VEI_VALORUNIT: '',
                    VEI_QUANTIDADE: '1',
                };
                setVendasItens(novo);            }
        }
    }

    function produtosLocClose(event, data) {
        if (data.LOC===true) {
            setVendasItens({
                ...vendasItens, 
                VEI_PRODUTO: data.PRO_CODIGO, 
                VEI_DESCRICAO: data.PRO_NOME, 
                VEI_DESCMAX: data.PRO_DESCMAX, 
                VEI_VALORUNIT: data.PRO_PRECOVENDA,
                VEI_QUANTIDADE: '1'
            });
        }
        setShowProdutosLoc(false);
    }

    //funcoes do modal de condicoes.
    async function condicoesLocalizar(e) {
        if (e.target.value!=='') {
            const formData = new FormData();
            formData.set('op','localizar');
            formData.set('CPG_CODIGO',e.target.value);
            try {
                const response = await Api.post('firenet/condicoes',formData);
                if (response.data.erro==='S') throw response;
                const novo = {
                    ...vendaModal, 
                    VED_CONDICAO: e.target.value, 
                    VED_FORMAPAGTO: response.data.msg.CPG_FORMAPAGTO,
                    CPG_DESCRICAO: response.data.msg.CPG_DESCRICAO, 
                    CPG_MEIOPAGAMENTO: response.data.msg.CPG_MEIOPAGAMENTO,
                };
                setVendaModal(novo);
            } catch(error) {
                tratarCatch('Venda condicoesLocalizar',error,logout);
                const novo = {
                    ...vendaModal, 
                    VED_CONDICAO: '', 
                    // VED_FORMAPAGTO: '',
                    CPG_DESCRICAO: '', 
                    CPG_MEIOPAGAMENTO: '',
                };
                setVendaModal(novo);
            }
        }
    }

    function condicoesLocClose(event, data) {
        if (data.LOC===true) {
            setVendaModal({
                ...vendaModal, 
                VED_CONDICAO: data.CPG_CODIGO, 
                VED_FORMAPAGTO: data.CPG_FORMAPAGTO, 
                CPG_DESCRICAO: data.CPG_DESCRICAO, 
                CPG_MEIOPAGAMENTO: data.CPG_MEIOPAGAMENTO 
            });
        }
        setShowCondicoesLoc(false);
    }

    //exclusao do item (acao do PettSwipeItem).
    async function excluirItem(item) {
        const confirmou = await PettMensagem.confirmar('Confirma Exclusão?','Tem certeza que deseja excluir '+item.VEI_DESCRICAO+'?');
        if (!confirmou) return;
        var formData = new FormData();
        formData.set('op', 'excluirItem');
        formData.set('VED_CODIGO', venda.VED_CODIGO);
        formData.set('VEI_CODIGO', item.VEI_CODIGO);
        try {
            const response = await Api.post('firenet/vendas',formData);
            if (response.data.erro==='S') throw response;
            setVenda(response.data.msg);
            setItens(response.data.msg.ITENS);
        } catch (error) {
            tratarCatch('Venda excluirItem',error,logout);
        }
    }

    //acoes reveladas ao deslizar o item para a esquerda.
    const acoesItem = (item) => [
        { rotulo: 'Excluir', icone: 'trash_can', perigo: true, onClick: () => excluirItem(item) },
        { rotulo: 'Editar', icone: 'pencil', cor: 'var(--pett-btn-orange)', onClick: () => editarItem(item) }
    ];

    //para abrir a insercao do item.
    function inserirItem(item) {
        setTituloModal('INSERIR ITEM');
        setOpModal('inserirItem');
        setVendasItens({});
        setShowModal(true);
    }

    //para abrir a edicao do item.
    function editarItem(item) {
        if (venda.VED_STATUS==='A') {
            setTituloModal('EDITAR ITEM');
            setOpModal('atualizarItem');
            setVendasItens(item);
            setShowModal(true);
        }
    }

    function modalPedido() {
        setVendaModal(venda);
        setShowModalPedido(true);
    }

    function modalEnvio() {
        //setVendaModal(venda);
        setShowModalEnvio(true);
    }

    const codigoBarrasKeyDown = (e) => {
        if (e.keyCode === 13) {
            inserirItemPeloCodigo();
        }
    }  

    async function inserirItemPeloCodigo() {
        const formData = new FormData();
        formData.set('op','inserirItemCodigo');
        formData.set('VEI_CODIGO','0');
        formData.set('VED_CODIGO',venda.VED_CODIGO || '');
        formData.set('VEI_PRODUTO',codigoBarras || '');
        formData.set('VEI_DESCRICAO','');
        formData.set('VEI_QUANTIDADE','1');
        formData.set('VEI_DESCPORC','0');
        formData.set('VEI_DESCVALOR','0');
        formData.set('VEI_COMPLEMENTO','');
        formData.set('ALTERAR_VALOR_UNITARIO',import.meta.env.VITE_ALTERAR_VALOR_UNITARIO || '');
        formData.set('DESCONTO_EM_VALOR',import.meta.env.VITE_DESCONTO_EM_VALOR || '');
        try {
            const response = await Api.post('firenet/vendas',formData);
            if (response.data.erro==='S') throw response;
            setVenda(response.data.msg);
            setItens(response.data.msg.ITENS);
            setCodigoBarras('');
        } catch (error) {
            tratarCatch('Venda inserirItemPeloCodigo',error,logout);
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
                        <div className="flex-grow-1 text-truncate"><p className="text-truncate fw-bold text-center mt-3">PEDIDO DE VENDA</p></div>
                        <div className="link-icone me-2"><Link to='' onClick={() => modalEnvio()}><i className="fa fa-2x fa-fw fa-share"></i></Link></div>
                        <div>
                            {
                                venda.VED_STATUS==='A' && venda.VED_VIAINTERNETSTATUS==='A'
                                    ? <Link to="" onClick={() => modalPedido()} className="link-icone"><i className="fa fa-2x fa-fw fa-pencil mx-2"></i></Link>
                                    : <span className="link-icone"></span>
                            }                                    
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <Loading status={carregando}/>
        <NaoEncontrado show={!carregando && venda.VED_CODIGO<=0} mensagem="Não foi possível localizar o pedido."/>
        <PettIf condicional={venda.VED_CODIGO>0}>
            
            <div className="container-fluid limit-width mt-2">
                <ul className="list-group mb-3">  
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-4">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">CÓDIGO</sup></p><p className="lh-1 m-0">{venda.VED_CODIGO}</p>
                            </div>      
                            <div className="col-4">
                                <PettIf condicional={venda.VED_STATUS==='A'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS</sup></p><p className="lh-1 m-0 fw-bold texto-azul">ABERTO</p>
                                </PettIf>
                                <PettIf condicional={venda.VED_STATUS==='F'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS</sup></p><p className="lh-1 m-0 fw-bold texto-verde">FINALIZADO</p>
                                </PettIf>
                                <PettIf condicional={venda.VED_STATUS==='C'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS</sup></p><p className="lh-1 m-0 fw-bold texto-vermelho">CANCELADO</p>
                                </PettIf>
                                <PettIf condicional={venda.VED_STATUS==='I'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS</sup></p><p className="lh-1 m-0 fw-bold texto-amarelo">INUTILIZADO</p>
                                </PettIf>
                            </div>      
                            <div className="col-4">
                                <PettIf condicional={venda.VED_VIAINTERNETSTATUS==='A'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS MOBILE</sup></p><p className="lh-1 m-0 fw-bold texto-azul">ABERTO</p>
                                </PettIf>
                                <PettIf condicional={venda.VED_VIAINTERNETSTATUS==='F'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS MOBILE</sup></p><p className="lh-1 m-0 fw-bold texto-verde">FINALIZADO</p>
                                </PettIf>
                            </div>
                        </div>  
                    </li> 
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">CLIENTE</sup></p><p className="lh-1 m-0">{venda.VED_CLIENTE+' - '+venda.VED_NOME}</p></li>  
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">CONDIÇÃO</sup></p><p className="lh-1 m-0">{venda.VED_CONDICAO+' - '+venda.CPG_DESCRICAO}</p></li>  
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">VENDEDOR</sup></p><p className="lh-1 m-0">{venda.VED_VENDEDOR+' - '+venda.VEN_NOME}</p></li>  
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA CADASTRO</sup></p><p className="lh-1 m-0">{formatarDataStr(venda.VED_DTCADASTRO)} {formatarHora(venda.VED_HRCADASTRO)}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA ATUALIZAÇÃO</sup></p><p className="lh-1 m-0">{formatarDataStr(venda.VED_DTATUALIZACAO)} {formatarHora(venda.VED_HRATUALIZACAO)}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DESCONTO</sup></p>
                                <p className="lh-1 m-0">
                                    <NumericFormat 
                                        value={parseFloat(venda.VED_DESCVALOR)}
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
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">VALOR TOTAL (TABELA {venda.VED_TABELAPRECO})</sup></p>
                                <p className="lh-1 m-0 texto-vermelho">
                                    <NumericFormat 
                                        value={parseFloat(venda.VED_VALORTOTAL)}
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
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">OBSERVAÇÕES</sup></p><span className="lh-1 m-0"><section dangerouslySetInnerHTML={{ __html: nl2br(venda.VED_OBSERVACOES ?? '') || '-' }} /></span></li>
                </ul>
            </div>
        </PettIf>

        <div className="container-fluid limit-width">
            <div className="row">
                <PettIf condicional={itens.length > 0 && venda.VED_STATUS==='A' && venda.VED_VIAINTERNETSTATUS==='A'}>
                    <div className="col-6 mb-3 pe-1">
                        <PettButton className="w-100" variant="red" icone="cancel" caption="Inutilizar pedido" click={() => inutilizarPedido()}/>
                    </div>
                    <div className="col-6 mb-3 ps-1">
                        <PettButton className="w-100" variant="blue" icone="paper_plane" caption="Fechar e enviar pedido" click={() => fecharPedido()}/>
                    </div>
                </PettIf>
                <div className="col-12 d-flex justify-content-between align-items-center barra-secao">
                    <PettIf condicional={venda.VED_STATUS==='A' && venda.VED_VIAINTERNETSTATUS==='A'}>
                        <div className="me-2">
                            <p className="text-truncate fs-6 fw-bolder mt-3">Adicionar</p>
                        </div>
                        <div className="d-flex flex-grow-1 align-items-center">
                            <PettFieldSearch size="flex-grow-1" name="CODIGOBARRAS" placeholder="Digite o código e pressione ENTER" value={codigoBarras} setMap={(e) => setCodigoBarras(e.target.value)} onKeyDown={(e) => codigoBarrasKeyDown(e)}/>
                            <PettButton variant="green" icone="search" click={() => inserirItem()}/>
                        </div>
                    </PettIf>
                    <PettIf condicional={venda.VED_STATUS!=='A' || venda.VED_VIAINTERNETSTATUS!=='A'}>
                        <div className="me-2">
                            <p className="text-truncate fs-6 fw-bolder mt-3">Itens</p>
                        </div>
                    </PettIf>
                </div>
            </div>
        </div>

        <PettIf condicional={itens.length > 0}>
            <div className="container-fluid limit-width p-0 pb-2">
                <div className="mb-5">
                    {
                        itens.map(item => (
                            <PettSwipeItem key={item.VEI_CODIGO} acoes={acoesItem(item)} disabled={!(venda.VED_STATUS==='A' && venda.VED_VIAINTERNETSTATUS==='A')}>
                                <VendasItens
                                    VEI_PRODUTO={item.VEI_PRODUTO}
                                    VEI_DESCRICAO={item.VEI_DESCRICAO}
                                    VEI_QUANTIDADE={item.VEI_QUANTIDADE}
                                    VEI_SEQUENCIA={item.VEI_SEQUENCIA}
                                    VEI_UNIDADE={item.VEI_UNIDADE}
                                    VEI_VALORTOTAL={item.VEI_VALORTOTAL}
                                    VEI_VALORUNIT={item.VEI_VALORUNIT}
                                    edicao={()=>editarItem(item)}
                                />
                            </PettSwipeItem>
                        ))
                    }
                </div>             
            </div>             
        </PettIf>

        <PettModal show={showModalPedido} fullscreen title="EDITAR PEDIDO" fechar={false} className="modal-campos">
                <div className="container limit-width p-0">
                    <div className="row">
                        <PettFieldLoc size="col-4" label="CONDIÇÃO" name="VED_CONDICAO" value={vendaModal.VED_CONDICAO} keyfilter="int" set={setVendaModal} onClick={() => setShowCondicoesLoc(true)} onBlur={(e) => condicoesLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-8" label="DESCRIÇÃO CONDIÇÃO" name="CPG_DESCRICAO" value={vendaModal.CPG_DESCRICAO} readOnly disabled/>
                        <PettFieldTextArea size="col-lg-12" label="OBSERVAÇÕES" name="VED_OBSERVACOES" value={vendaModal.VED_OBSERVACOES} set={setVendaModal} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </div>
            <PettModal.Footer>
                <div className="container limit-width p-0">
                    <div className="d-flex gap-1 w-100">
                        <PettButton className="flex-fill" variant="red" size="lg" caption="Cancelar" click={() => setShowModalPedido(false)}/>
                        <PettButton className="flex-fill" variant="green" size="lg" icone="done" caption="Salvar" click={() => salvarVenda()}/>
                    </div>
                </div>
            </PettModal.Footer>
        </PettModal>

        <PettModal show={showModalEnvio} fullscreen title="ENVIAR PEDIDO" fechar={false} className="modal-campos">
                <div className="container limit-width p-0">
                    <div className="row">
                        <PettFieldText size="col-lg-12" label="EMAIL PARA ENVIO DO PEDIDO" name="CLI_EMAIL" value={envio.CLI_EMAIL} set={setEnvio} upper={false}/>
                    </div>
                </div>
            <PettModal.Footer>
                <div className="container limit-width p-0">
                    <div className="d-flex gap-1 w-100">
                        <PettButton className="flex-fill" variant="red" size="lg" caption="Cancelar" click={() => setShowModalEnvio(false)}/>
                        { enviando
                            ? <PettButton className="flex-fill" variant="green" size="lg" icone="loading_white" animado caption="Enviando..." disabled/>
                            : <PettButton className="flex-fill" variant="green" size="lg" icone="paper_plane" caption="Enviar" click={() => enviarEmail()}/>
                        }                      
                    </div>
                </div>
            </PettModal.Footer>
        </PettModal>

        <PettModal show={showModal} fullscreen title={tituloModal} fechar={false} className="modal-campos">
                <div className="container limit-width p-0">
                    <div className="row g-1">
                        <PettFieldLoc size="col-4" label="PRODUTO" name="VEI_PRODUTO" value={vendasItens.VEI_PRODUTO} keyfilter="int" set={setVenda} onClick={() => setShowProdutosLoc(true)} onBlur={(e) => produtosLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-8" label="DESCRIÇÃO PRODUTO" name="VEI_DESCRICAO" value={vendasItens.VEI_DESCRICAO} readOnly disabled/>
                        <PettFieldText size="col-12" label="COMPLEMENTO" name="VEI_COMPLEMENTO" value={vendasItens.VEI_COMPLEMENTO} set={setVendasItens} />
                        <PettFieldFloat size="col-12" label="QUANTIDADE" name="VEI_QUANTIDADE" value={vendasItens.VEI_QUANTIDADE} set={setVendasItens} minDigits={3} maxDigits={3} readOnly={disableFields} disabled={disableFields}/>
                        { import.meta.env.VITE_ALTERAR_VALOR_UNITARIO==="false"
                            ? <PettFieldMoney size="col-12" label="VALOR UNITÁRIO" name="VEI_VALORUNIT" value={vendasItens.VEI_VALORUNIT} set={setVendasItens} readOnly disabled/>
                            : <PettFieldMoney size="col-12" label="VALOR UNITÁRIO" name="VEI_VALORUNIT" value={vendasItens.VEI_VALORUNIT} set={setVendasItens} />
                        }
                        <PettFieldFloat size="col-12" label="DESCONTO MÁXIMO (%)" name="VEI_DESCMAX" value={vendasItens.VEI_DESCMAX} set={setVendasItens} readOnly disabled/>

                        {  import.meta.env.VITE_DESCONTO_EM_VALOR==="true"
                            ?   <PettFieldMoney size="col-12" label="VALOR DESCONTO" name="VEI_DESCVALOR" value={vendasItens.VEI_DESCVALOR} set={setVendasItens} readOnly={disableFields} disabled={disableFields}/>
                            :   <PettFieldFloat size="col-12" label="% DESCONTO" name="VEI_DESCPORC" value={vendasItens.VEI_DESCPORC} set={setVendasItens} readOnly={disableFields} disabled={disableFields} maxDigits={2} max={vendasItens.VEI_DESCMAX}/>
                        }
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

        <ProdutosLoc showModal={showProdutosLoc} onCloseModal={produtosLocClose}/>
        <CondicoesLoc showModal={showCondicoesLoc} onCloseModal={condicoesLocClose}/>
    </>
}

export default Venda;