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

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import Sentinela from './Sentinela';
import { tratarCatch } from '../Funcoes';

function ClientesLoc(props) {
    const { logout } = useContext(AuthContext);
    const [ listagem, setListagem ] = useState([]);
    const [ carregando, setCarregando ] = useState(false);
    const [ erro, setErro ] = useState(false);
    const [ pagina, setPagina ] = useState(0);
    const [ final, setFinal ] = useState(false);
    const [ pesquisa, setPesquisa ] = useState('');   

    async function listarClientes(nPagina,bFinal,bLimpar) {
        if (!bFinal) {
            setCarregando(true);    
            const novaPagina=nPagina+1;
            //setPagina((paginaInsideState) => paginaInsideState+1);
                        
            var formData = new FormData();
            formData.set('op', 'listar');
            formData.set('pagina', novaPagina);
            formData.set('pesquisa', pesquisa);
                       
            try {
                const response = await Api.post('firenet/clientes',formData);
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
                    //se a pesquisa retornou 30 registros, ao dar scroll para a pagina 2 que retorna com 0 registros, continua com a listagem atual.
                    if (novaPagina > 1) { 
                        novaListagem.push(...listagem); 
                    }
                }

                //verifica se pode conter mais registros. 
                //se retornou com 20 registros, pode ser que ainda tenha mais.
                //se retornou com menos de 30 registros, é pq chegou no final da lista.
                if (response.data.contador < response.data.rpp) {
                    setFinal(true);
                }

                setListagem(novaListagem);
                setCarregando(false);
                setPagina(novaPagina);
                setErro(false);
            } catch (error) {
                tratarCatch('ClientesLoc listar',error,logout);
                setCarregando(false);
                setErro(true);
            }
        }
    }

    function carregarMais() {
        listarClientes(pagina,final,false);
    }

    function Pesquisar() {
        setPagina(0);
        setFinal(false);
        setListagem([]);      
        listarClientes(0,false,true);
    };
    
    function Cancelar(e) {
        let d={ 'LOC':false };
        // setData(d);
        props.onCloseModal(e,d);
        //setOpen(false);
    }
    
    function SelecionarCliente(e,cliente) {
        let d={ 'LOC': true, ...cliente }
        // setData(d);
        props.onCloseModal(e,d);
    }

    const localizarKeyDown = (e) => {
        if (e.keyCode === 13) {
            Pesquisar();
        }
    } 

    return <>
        <PettModal show={props.showModal} fullscreen title="LOCALIZAR CLIENTE" fechar={false}>
            <div className="container limit-width d-flex gap-1 mb-2 p-0">
                <PettFieldSearch size="flex-grow-1" name="texto" value={pesquisa} placeholder="Localizar" setMap={(e) => setPesquisa(e.target.value.toUpperCase())} upper onKeyDown={(e) => localizarKeyDown(e)}/>
                <PettButton variant="green" caption="Filtrar" click={() => { Pesquisar(); }}/>
            </div>

                <PettIf condicional={ listagem.length > 0}>
                    <div className="p-0">
                        <div className="container limit-width mb-3 p-0">
                            {                     
                                listagem.map(cliente => (
                                    <div className="lista-item" key={cliente.CLI_CODIGO}>
                                        <div className="card-body text-truncate py-1 px-2">
                                            <Link to="" onClick={ (e) => SelecionarCliente(e,cliente) } className="lista-link stretched-link">
                                                <span className="fw-bold">{cliente.CLI_NOME}</span><br />
                                                <span className="texto-suave small">{cliente.CLI_CODIGO} - {cliente.CLI_FONE1} - {cliente.CLI_FONE2}</span>
                                            </Link>
                                        </div>
                                    </div>
                                ))
                            }   
                        </div>
                    </div>
                </PettIf>           
                <Sentinela onIntersect={carregarMais} carregando={carregando} final={final} length={listagem.length} erro={erro}/>
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

export default ClientesLoc;