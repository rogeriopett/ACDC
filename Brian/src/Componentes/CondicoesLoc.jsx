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

import { PettButton } from 'pett-componentes';
import { PettFieldSearch } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../Contextos/Auth';
import { useListagem } from '../Hooks/useListagem';
import Sentinela from './Sentinela';

function CondicoesLoc(props) {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/condicoes', 'Condicoes listar', logout);
    const [ pesquisa, setPesquisa ] = useState({CPG_DESCRICAO: ''});
    const [ operacao, setOperacao ] = useState('listar');

    useEffect(() => {
        listar(pesquisa,true);
    },[]);

    function Pesquisar() {
        listar(pesquisa,true);
    };
    
    function Cancelar(e) {
        let d={ 'LOC':false };
        props.onCloseModal(e,d);
    }
    
    function SelecionarCondicao(e,condicao) {
        let d={ 'LOC': true, ...condicao }
        props.onCloseModal(e,d);
    }

    const localizarKeyDown = (e) => {
        if (e.keyCode === 13) {
            Pesquisar();
        }
    } 

    return <>
        <PettModal show={props.showModal} fullscreen title="LOCALIZAR CONDIÇÃO" fechar={false}>
            <div className="container limit-width d-flex gap-1 mb-2 p-0">
                <PettFieldSearch size="flex-grow-1" name="texto" value={pesquisa.CPG_DESCRICAO} placeholder="Localizar" setMap={(e) => setPesquisa({...pesquisa, CPG_DESCRICAO: e.target.value.toUpperCase()})} upper onKeyDown={(e) => localizarKeyDown(e)}/>
                <PettButton variant="green" caption="Filtrar" click={() => { Pesquisar(); }}/>
            </div>
                <PettIf condicional={ listagem.length > 0}>
                    <div className="container limit-width p-0">
                        {                     
                            listagem.map(condicao => (
                                <div className="lista-item w-100" key={condicao.CPG_CODIGO}>
                                    <div className="card-body text-truncate p-1">
                                        <Link to="" onClick={ (e) => SelecionarCondicao(e,condicao) } className="lista-link stretched-link">
                                            <span className="fw-bold">{condicao.CPG_DESCRICAO}</span>
                                        </Link>
                                    </div>
                                </div>
                            ))
                        }   
                    </div>
                </PettIf>           
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            <PettModal.Footer>
                <div className="container limit-width p-0">
                    <div className="d-flex gap-1 w-100">
                        <PettButton className="flex-fill" variant="red" size="lg" caption="Cancelar" click={(e) => Cancelar(e)}/>
                    </div>
                </div>
            </PettModal.Footer>
        </PettModal>                    
    </>
}

export default CondicoesLoc;