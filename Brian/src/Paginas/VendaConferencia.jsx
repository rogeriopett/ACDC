//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Campos de quantidade e código de barras (InputText do PrimeReact) trocados pelo PettFieldSearch.
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - PettMensagem local (sweetalert2) trocado pelo PettMensagem do pett-componentes.
//2026.11.18 - Quantidade em PettFieldSpin (numérica; antes era texto e a soma concatenava) e código de barras em PettFieldText.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.27 - Mensagem de registro nao encontrado com o componente local NaoEncontrado (PettIcon no lugar do fa-record-vinyl; sem vh-100).
//2026.11.27 - Loading enquanto busca o pedido (a tela nao tinha nenhum).
import { useCallback, useEffect, useState, useContext } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettFieldSpin } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import VendasItensConferencia from '../Componentes/VendasItensConferencia';
import Loading from '../Componentes/Loading';
import NaoEncontrado from '../Componentes/NaoEncontrado';
import { formatarDataStr, tratarCatch } from '../Funcoes';

function VendaConferencia(props) {
    const { logout } = useContext(AuthContext);
    const { id } = useParams();
    const navigate = useNavigate();
    const [ carregando, setCarregando ] = useState(false);
    const [ venda, setVenda ] = useState({});
    const [ itens, setItens ] = useState([]);
    const [ quantidade, setQuantidade ] = useState(1);
    const [ codigoBarras, setCodigoBarras ] = useState('');

    async function VerVenda() {
        setCarregando(true);
        var formData = new FormData();
        formData.set('op','visualizarConferencia');
        formData.set('VED_CODIGO',id);

        try {
            const response = await Api.post('firenet/vendas',formData);
            console.log('dddd',response.data);
            if (response.data.erro==='N') {
                setVenda(response.data.msg);
                setItens(response.data.msg.ITENS);
            } else {
                setVenda({VED_CODIGO:0});
                setItens({});
                if (response.data.token==='expirado') {
                    logout();
                }
            }
        } catch (error) {
            tratarCatch('VendaConferencia visualizar',error,logout);
        }
        setCarregando(false);
    }   
   
    useEffect(() => {
        VerVenda();
    },[]);

    async function finalizarConferencia() {
        const itensNaoConferidos = itens.filter(item => (item.STATUSCONFERENCIA === '---'));
        if (itensNaoConferidos.length > 0) {
            PettMensagem.erro('Ooops...','Ainda existem itens não conferidos!');
        } else {
            const confirmou = await PettMensagem.confirmar('Tudo conferido?','Finalizar a conferência do pedido '+venda.VED_CODIGO+'?');
            if (confirmou) {
                const formData = new FormData();
                formData.set('op','conferido');
                formData.set('VED_CODIGO',venda.VED_CODIGO || '');
                try {
                    const response = await Api.post('firenet/vendas',formData);
                    if (response.data.erro==='S') throw response;
                    PettMensagem.sucesso('Yessss!','Conferência finalizada com sucesso.');
                    setVenda(response.data.msg);
                } catch (error) {
                    tratarCatch('VendaConferencia finalizarConferencia',error,logout);
                }
            }
        }
    }

    const conferirItem = useCallback(() => {
        if (!codigoBarras) return;

        // 1. Limpeza e normalização do código de entrada
        const codigoAlvo = String(parseInt(codigoBarras));
        setCodigoBarras(''); // Limpa o input imediatamente

        // 2. Busca o item usando uma referência imutável
        const index = itens.findIndex(item => 
            String(item.VEI_PRODUTO) === codigoAlvo && 
            item.STATUSCONFERENCIA === '---'
        );

        // 3. Caso não encontre: Mensagem de erro com delay para não conflitar com o "Enter" do leitor
        if (index === -1) {
            setTimeout(() => {
                PettMensagem.aviso('Ooops...', 'Produto não encontrado ou já conferido.');
            }, 100);
            return;
        }

        // 4. Criação de novos estados de forma imutável (React Way)
        const novosItens = [...itens]; // Cópia do array
        const item = { ...novosItens[index] }; // Cópia do objeto a ser alterado

        // 5. Cálculos de quantidade (usando Math.min para simplificar a lógica de teto)
        const qtdeOriginal = parseFloat(item.VEI_QUANTIDADE) || 0;
        const qtdeAtual = parseFloat(item.QTDECONFERIDA) || 0;
        
        // Calcula a nova quantidade sem ultrapassar o total
        // quantidade vem numérica do PettFieldSpin (null se o campo ficar vazio: conta 1).
        const novaQtdeConferida = Math.min(qtdeAtual + (Number(quantidade) || 1), qtdeOriginal);

        // 6. Atualização das propriedades do item
        item.QTDECONFERIDA = novaQtdeConferida;
        item.STATUSCONFERENCIA = novaQtdeConferida >= qtdeOriginal ? 'OK!' : '---';

        // 7. Atualiza o array e mantém a ordenação original por VEI_SEQUENCIA
        novosItens[index] = item;
        
        // Ordenação simples e eficiente
        novosItens.sort((a, b) => a.VEI_SEQUENCIA - b.VEI_SEQUENCIA);

        setItens(novosItens);

    }, [codigoBarras, itens, quantidade]);

    const codigoBarrasKeyDown = (e) => {
        if (e.keyCode === 13) {
            conferirItem();
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
                    </div>
                </div>
            </div>
        </div>

        <Loading status={carregando}/>
        <NaoEncontrado show={!carregando && venda.VED_CODIGO<=0} mensagem="Não foi possível localizar o pedido."/>
        <PettIf condicional={venda.VED_CODIGO>0}>
            <div className="container-fluid limit-width pt-2">
                <ul className="list-group mb-3">  
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-4">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">CÓDIGO</sup></p><p className="lh-1 m-0">{venda.VED_CODIGO}</p>
                            </div>      
                            <div className="col-4">
                                <PettIf condicional={venda.VED_CONFERIDO==='N'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">CONFERIDO</sup></p><p className="lh-1 m-0 fw-bold texto-azul">NÃO</p>
                                </PettIf>
                                <PettIf condicional={venda.VED_CONFERIDO==='S'}>
                                    <p className="lh-1 m-0 mt-1"><sup className="texto-suave">CONFERIDO</sup></p><p className="lh-1 m-0 fw-bold texto-verde">SIM</p>
                                </PettIf>
                            </div>      
                            <div className="col-4">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">CONFERIDO POR</sup></p><p className="lh-1 m-0 fw-bold texto-azul">{venda.VED_CONFERIDOPOR}</p>
                            </div>
                        </div>  
                    </li> 
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">CLIENTE</sup></p><p className="lh-1 m-0">{venda.VED_CLIENTE+' - '+venda.VED_NOME}</p></li>  
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA CADASTRO</sup></p><p className="lh-1 m-0">{formatarDataStr(venda.VED_DTCADASTRO)} {venda.VED_HRCADASTRO}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA CONFERENCIA</sup></p><p className="lh-1 m-0">{formatarDataStr(venda.VED_CONFERIDODATA)}</p>
                            </div>    
                        </div>  
                    </li> 
                </ul>
            </div>
        </PettIf>

        <div className="container-fluid limit-width">
            <div className="row">
                <PettIf condicional={itens.length > 0 && venda.VED_CONFERIDO==='N'}>
                    <div className="col-12 mb-3">
                        <PettButton className="w-100" variant="blue" icone="done" caption="Finalizar Conferência" click={() => finalizarConferencia()}/>
                    </div>
                    <div className="col-12 d-flex justify-content-between align-items-center barra-secao limit-height">
                        <div className="d-flex flex-grow-1 align-items-center gap-1">
                            <PettFieldSpin size="col-4" label="QTDE" name="QUANTIDADE" value={quantidade} min={1} step={1} onChange={(valor) => setQuantidade(valor)}/>
                            <PettFieldText size="flex-grow-1" label="CÓDIGO DE BARRAS" name="CODIGOBARRAS" value={codigoBarras} setMap={(e) => setCodigoBarras(e.target.value)} onKeyDown={(e) => codigoBarrasKeyDown(e)}/>
                        </div>
                    </div>
                </PettIf>
                <PettIf condicional={itens.length > 0 && venda.VED_CONFERIDO==='S'}>
                    <div className="col-12 d-flex justify-content-between align-items-center barra-secao limit-height">
                        <div className="me-2"><p className="text-truncate fs-6 fw-bolder mt-3">Itens</p></div>
                    </div>
                </PettIf>
            </div>
        </div>

        <PettIf condicional={itens.length > 0}>
            <div className="container-fluid limit-width py-2">
                <div className="mb-5">
                    {                    
                        itens.map(item => (
                            <VendasItensConferencia
                                key={item.VEI_CODIGO}
                                VEI_PRODUTO={item.VEI_PRODUTO}
                                VEI_DESCRICAO={item.VEI_DESCRICAO}
                                VEI_QUANTIDADE={item.VEI_QUANTIDADE}
                                VEI_SEQUENCIA={item.VEI_SEQUENCIA}
                                VEI_UNIDADE={item.VEI_UNIDADE}
                                QTDECONFERIDA={item.QTDECONFERIDA}
                                STATUSCONFERENCIA={item.STATUSCONFERENCIA}
                            />
                        ))
                    }
                </div>             
            </div>             
        </PettIf>

    </>
}

export default VendaConferencia;