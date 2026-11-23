//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal e a pesquisa do cabecalho pelo PettFieldSearch do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Rodape dos modais: btn-group trocado por d-flex gap-1 (espaco entre os botoes).
import { useContext, useState } from 'react';
import { Link } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettFieldSearch } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../Contextos/Auth';
import { useListagem } from '../Hooks/useListagem';
import Sentinela from './Sentinela';

function VendedoresLoc(props) {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/vendedores', 'VendedoresLoc listar', logout);
    const [ pesquisa, setPesquisa ] = useState({pesquisa: ''});
    const [ operacao, setOperacao ] = useState('listar');

    function Pesquisar() {
        listar(pesquisa,true);
    };
    
    function Cancelar(e) {
        let d={ 'LOC':false };
        // setData(d);
        props.onCloseModal(e,d);
        //setOpen(false);
    }
    
    function SelecionarVendedor(e,vendedor) {
        let d={ 'LOC': true, ...vendedor }
        // setData(d);
        props.onCloseModal(e,d);
    }

    const localizarKeyDown = (e) => {
        if (e.keyCode === 13) {
            Pesquisar();
        }
    } 

    return <>
        <PettModal show={props.showModal} fullscreen title="LOCALIZAR VENDEDOR" fechar={false}>
            <div className="container limit-width d-flex gap-1 mb-2 p-0">
                <PettFieldSearch size="flex-grow-1" name="texto" value={pesquisa.pesquisa} placeholder="Localizar" setMap={(e) => setPesquisa({...pesquisa, pesquisa: e.target.value.toUpperCase()})} upper onKeyDown={(e) => localizarKeyDown(e)}/>
                <PettButton variant="green" caption="Filtrar" click={() => { Pesquisar(); }}/>
            </div>
        
                <PettIf condicional={ listagem.length > 0}>
                    <div className="container limit-width mb-3 p-0">
                        {                     
                            listagem.map(vendedor => (
                                <div className="lista-item" key={vendedor.VEN_CODIGO}>
                                    <div className="card-body text-truncate p-2 py-2">
                                        <Link to="" onClick={ (e) => SelecionarVendedor(e,vendedor) } className="lista-link stretched-link">
                                            <span className="fw-bold">{vendedor.VEN_CODIGO+' - '+vendedor.VEN_NOME}</span>
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

export default VendedoresLoc;