//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal e a pesquisa do cabecalho pelo PettFieldSearch do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Rodape dos modais: btn-group trocado por d-flex gap-1 (espaco entre os botoes).
import { useContext, useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { NumericFormat } from "react-number-format";

import { PettButton } from 'pett-componentes';
import { PettFieldSearch } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../Contextos/Auth';
import { useListagem } from '../Hooks/useListagem';
import Sentinela from './Sentinela';

function ProdutosLoc(props) {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/produtos', 'ProdutosLoc listar', logout);
    const [ pesquisa, setPesquisa ] = useState({});
    const [ operacao, setOperacao ] = useState('listar');

    useEffect(() => {
        listar(pesquisa,true);        
    },[]); 
    
    function Pesquisar() {
        listar(pesquisa,true);
    };
    
    function Cancelar(e) {
        let d={ 'LOC':false };
        setPesquisa('');
        props.onCloseModal(e,d);
    }
    
    function SelecionarProduto(e,produto) {
        let d={ 'LOC': true, ...produto }
        setPesquisa('');
        props.onCloseModal(e,d);
    }

    const localizarKeyDown = (e) => {
        if (e.keyCode === 13) {
            Pesquisar();
        }
    } 

    return <>
        <PettModal show={props.showModal} fullscreen title="LOCALIZAR PRODUTO" fechar={false}>
            <div className="container limit-width d-flex gap-1 mb-2 p-0">
                <PettFieldSearch size="flex-grow-1" name="texto" value={pesquisa.pesquisa} placeholder="Localizar" setMap={(e) => setPesquisa({...pesquisa, pesquisa: e.target.value.toUpperCase()})} upper onKeyDown={(e) => localizarKeyDown(e)}/>
                <PettButton variant="green" caption="Filtrar" click={() => { Pesquisar(); }}/>
            </div>
                <PettIf condicional={ listagem.length > 0}>
                    <div className="container limit-width p-0">
                        {                     
                            listagem.map(produto => (
                                <div className="lista-item w-100" key={produto.PRO_CODIGO}>
                                    <div className="card-body p-1">
                                        <Link to="" onClick={ (e) => SelecionarProduto(e,produto) } className="lista-link stretched-link">
                                            <span className="fw-bold">{produto.PRO_NOME}</span>
                                        </Link>
                                        <div className="row g-0 mx-2 mb-1">
                                            <div className="col-2 texto-suave text-truncate small">{produto.PRO_CODIGO}</div>
                                            <div className="col-4 texto-suave text-truncate small">{produto.PRO_CODIGOBARRAS}</div>
                                            <div className="col-1 texto-suave text-truncate small">{produto.PRO_UNIDADE}</div>
                                            <div className="col-2 texto-verde text-truncate fw-bold small text-end">
                                                <NumericFormat 
                                                    value={parseFloat(produto.PRO_ESTOQUEATUAL)}
                                                    // isNumericString={true}
                                                    displayType="text"
                                                    prefix=""
                                                    thousandsGroupStyle="thousand"
                                                    decimalSeparator=","
                                                    decimalScale={4}
                                                    fixedDecimalScale={true}
                                                    thousandSeparator="."
                                                    allowNegative={true}
                                                />
                                            </div>
                                            <div className="col-3 texto-azul text-truncate fw-bold small text-end">
                                                <NumericFormat 
                                                    value={parseFloat(produto.PRO_PRECOVENDA)}
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
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            ))
                        }  
                    </div>
                </PettIf>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            <PettModal.Footer>
                <div className="container limit-width">
                    <div className="d-flex gap-1 w-100">
                        <PettButton className="flex-fill" variant="red" size="lg" caption="Cancelar" click={(e) => Cancelar(e)}/>
                    </div>
                </div>
            </PettModal.Footer>
        </PettModal>                    
    </>
}

export default ProdutosLoc;