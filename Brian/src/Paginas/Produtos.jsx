//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - SVGs locais (?react) trocados pelo PettIcon do pett-componentes.
//2026.11.18 - Campo de pesquisa (input do Bootstrap) trocado pelo PettFieldSearch do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (barra-tema no lugar do bg-dark; icone de oferta em mono).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
import { useState, useEffect, useContext } from 'react';
import { Link } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettFieldSearch } from 'pett-componentes';
import { PettIcon } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { AuthContext } from '../Contextos/Auth';
import { useListagem } from '../Hooks/useListagem';
import ProdutoCard from '../Componentes/ProdutoCard';
import Sentinela from '../Componentes/Sentinela';

function Produtos() {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/produtos', 'Produtos listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ PESQUISA: '', OFERTA: '0' });
    const [ operacao, setOperacao ] = useState('listar');
    
    useEffect(() => {
        listar(pesquisa,true);        
    },[]); 

    function Pesquisar() {
        listar(pesquisa,true);
    }

    function onOfertaClick() {
        const novaOferta = pesquisa.OFERTA==='0' ? '1' : '0';
        const novosDados = { PESQUISA: '', OFERTA: novaOferta };
        setPesquisa(novosDados);
        listar(novosDados, true);
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
                        <div className="flex-grow-1"><p className="text-truncate text-center fw-bold mt-3">PRODUTOS</p></div>
                        <div className="link-icone">
                            <Link to="" onClick={onOfertaClick}>
                                <PettIf condicional={pesquisa.OFERTA==="0"}>
                                    <PettIcon name="discount_branco" size="25" mono/>
                                </PettIf>
                                <PettIf condicional={pesquisa.OFERTA==="1"}>
                                    <PettIcon name="discount_verde" size="25"/>
                                </PettIf>
                            </Link>
                        </div>
                    </div>
                </div>
            </div>
            <div className="container-fluid limit-width">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <PettFieldSearch size="w-100" name="PESQUISA" value={pesquisa.PESQUISA} placeholder="Código ou nome do produto" set={setPesquisa} upper onKeyDown={(e) => localizarKeyDown(e)}/>
                        <div className="ms-2"><PettButton variant="green" caption="Filtrar" click={() => { Pesquisar(); }}/></div>
                    </div>
                </div>
            </div>
        </div>
        <PettIf condicional={ listagem.length > 0}>
            {/* <div className="container limit-width pb-2"></div> */}
            <div className="container limit-width p-0">
                {                     
                    listagem.map(produto => (
                        <ProdutoCard 
                            key={produto.PRO_CODIGO}
                            GRU_DESCRICAO={produto.GRU_DESCRICAO}
                            PRF_ARQUIVO={produto.PRF_ARQUIVO}
                            PRO_CODIGO={produto.PRO_CODIGO}
                            PRO_ESTOQUEATUAL={produto.PRO_ESTOQUEATUAL}
                            PRO_NOME={produto.PRO_NOME}
                            PRO_OFERTA={produto.PRO_OFERTA}
                            PRO_UNIDADE={produto.PRO_UNIDADE}
                            PRO_PRECOVENDA={produto.PRO_PRECOVENDA}
                        />                   
                    ))
                }   
            </div>
        </PettIf>  
        <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
    </>
}

export default Produtos;