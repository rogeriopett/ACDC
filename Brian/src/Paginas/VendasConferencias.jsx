//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Campo de pesquisa (input do Bootstrap) trocado pelo PettFieldSearch do pett-componentes.
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
import { useState, useContext } from 'react';
import { Link } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettFieldSearch } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import Sentinela from '../Componentes/Sentinela';
import { formatarDataStr, tratarCatch } from '../Funcoes';

function VendasConferencias() {
    const { logout } = useContext(AuthContext);
    const [ listagem, setListagem ] = useState([]);
    const [ carregando, setCarregando ] = useState(false);
    const [ erro, setErro ] = useState(false);
    const [ pagina, setPagina ] = useState(0);
    const [ final, setFinal ] = useState(false);
    const [ pesquisa, setPesquisa ] = useState('');
    const [ filtros, setFiltros ] = useState('visually-hidden');

    async function listarVendasConferencias(nPagina,bFinal,bLimpar) {
        if (!bFinal) {
            setCarregando(true);    
            const novaPagina=nPagina+1;
            //setPagina((paginaInsideState) => paginaInsideState+1);
                        
            var formData = new FormData();
            formData.set('op','listarConferencia'); //colocar no plural.
            formData.set('pagina',novaPagina);
            formData.set('pesquisa',pesquisa);
            
            try {
                const response = await Api.post('firenet/vendas',formData)
                if (response.data.erro==='S') throw response;
                const novaListagem = [];
                if (response.data.contador > 0) {
                    if (!bLimpar){
                        //const novaListagem = [...listagem] //novalistagem recebe listagem atual.
                        novaListagem.push(...listagem); //novalistagem recebe listagem atual.
                        setListagem([]);
                    }
                    novaListagem.push(...response.data.msg); //novalistagem recebe mais a nova listagem.
                } else {
                    //se ja tem uma listagem, continua com ela
                    //se a pesquisa retornou 20 registros, ao dar scroll para a pagina 2 que retorna com 0 registros, continua com a listagem atual.
                    if (novaPagina > 1) { 
                        novaListagem.push(...listagem); 
                    }
                }

                //verifica se pode conter mais registros. 
                //se retornou com 20 registros, pode ser que ainda tenha mais.
                //se retornou com menos de 20 registros, é pq chegou no final da lista.
                if (response.data.contador < response.data.rpp) {
                    setFinal(true);
                }

                setListagem(novaListagem);
                setCarregando(false);
                setPagina(novaPagina);
                setErro(false);
            } catch (error) {
                tratarCatch('VendasConferencia listar',error,logout);
                setCarregando(false);
                setErro(true);
            }
        }
    }

    function carregarMais() {
        if (!carregando && !final) {
            listarVendasConferencias(pagina,final,false);
        }
    }
    
    function Pesquisar() {
        setPagina(0);
        setFinal(false);
        setListagem([]);      
        listarVendasConferencias(0,false,true);
        showFiltros();
    };
    
    function showFiltros() {
        const filtro2=filtros===""?"visually-hidden":"";
        setFiltros(filtro2);    
    }

    const localizarKeyDown = (e) => {
        if (e.keyCode === 13) {
            Pesquisar();
        }
    }  

    return <>
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div className="link-icone"><Link to='/home'><i className="fa fa-2x fa-fw fa-chevron-left"></i></Link></div>
                        <div className="flex-grow-1"><p className="text-truncate text-center fw-bolder mt-3">CONFERÊNCIAS DE PEDIDOS</p></div>
                        <div className="link-icone"><Link to='' onClick={() => showFiltros()}><i className="fa fa-2x fa-fw fa-sliders-h"></i></Link></div>
                    </div>
                </div>
            </div>
            <div className={"container-fluid limit-width "+filtros}>
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <PettFieldSearch size="w-100" name="texto" value={pesquisa} placeholder="Código do pedido ou nome cliente" setMap={(e) => setPesquisa(e.target.value)} upper onKeyDown={(e) => localizarKeyDown(e)}/>
                        <div className="ms-2"><PettButton variant="green" caption="Filtrar" click={() => { Pesquisar(); }}/></div>
                    </div>
                </div>
            </div>
        </div>

        <PettIf condicional={ listagem.length > 0}>
            <div className="container limit-width p-0">
                {                    
                    listagem.map(venda => (
                        <div className="lista-item w-100" key={venda.VED_CODIGO}>
                            <div className="row">
                                <div className="col-12 px-3 pt-1 text-truncate">
                                    <Link to={"/vendaconferencia/"+venda.VED_CODIGO} className="lista-link stretched-link">
                                        <span className="fw-bold">{venda.VED_CLIENTE} - {venda.VED_NOME}</span>
                                    </Link>
                                </div>
                                <div className="row">                               
                                    <div className="col-12 mx-2 pb-2 lh-1 d-flex justify-content-between align-items-center">
                                        <span className="small">{venda.VED_CODIGO}</span>
                                        <span className="texto-suave small">{formatarDataStr(venda.VED_DTEMISSAO)}</span>
                                        <span className="texto-suave small">{venda.VED_CONFERIDOPOR}</span>
                                        <span className="texto-suave small">{formatarDataStr(venda.VED_CONFERIDODATA)}</span>
                                        <span className="texto-vermelho fw-bold small">
                                            <PettIf condicional={venda.VED_CONFERIDO==="N"}>
                                                <span className="text-light badge bg-primary">NAO CONFERIDO</span>
                                            </PettIf>
                                            <PettIf condicional={venda.VED_CONFERIDO==="S"}>
                                                <span className="text-light badge bg-success">CONFERIDO</span>
                                            </PettIf>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    ))
                }   
            </div>
        </PettIf>           
        {/* <Sentinela onIntersect={() => carregarMais} carregando={carregando} final={final} length={listagem.length} erro={erro}/> */}
        <Sentinela onIntersect={carregarMais} carregando={carregando} final={final} length={listagem.length} erro={erro}/>
        {/* <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} /> */}

    </>
}

export default VendasConferencias;