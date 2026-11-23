//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Campo de pesquisa (input do Bootstrap) trocado pelo PettFieldSearch do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
import { useContext, useEffect, useState } from 'react';
import { Link } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettFieldSearch } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { AuthContext } from '../Contextos/Auth';
import { ParametrosContext } from '../Contextos/Parametros';
import { useListagem } from '../Hooks/useListagem';
import ClientesForm from '../Componentes/ClientesForm';
import Sentinela from '../Componentes/Sentinela';

function Clientes() {
    const { logout } = useContext(AuthContext);
    const { parametros } = useContext(ParametrosContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/clientes', 'Clientes listar', logout);
    const [ carregandoRegistro, setCarregandoRegistro ] = useState(false);
    const [ pesquisa, setPesquisa ] = useState({ PESQUISA: '' });
    const [ showModal, setShowModal ] = useState(false);
    const [ operacao, setOperacao ] = useState('listar');
    const [ cliente, setCliente ] = useState({
        CLI_BAIRRO: '',
        CLI_CEP: '',
        CLI_CIDADE: '',
        CLI_CNPJ: '',
        CLI_CODIGO: '',
        CLI_COMPLEMENTO: '',
        CLI_CONTATO: '',
        CLI_CPF: '',
        CLI_DTATUALIZACAO: '',
        CLI_DTNASC: '',
        CLI_EMAIL: '',
        CLI_ENDERECO: '',
        CLI_ESTADO: '',
        CLI_FONE1: '',
        CLI_FONE2: '',
        CLI_FONE3: '',
        CLI_IE: '',   
        CLI_NOME: '',
        CLI_NUMERO: '',
        CLI_RG: '',
        CLI_STATUS: 'A',
        CLI_TABELAPRECO: 'V',
        CLI_TIPOPESSOA: 'J',
        CLI_USUARIO: ''        
    });

    function Pesquisar() {
        // setListagem([]);
        listar(pesquisa, true);
    };
    
    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    const localizarKeyDown = (e) => {
        if (e.keyCode === 13) {
            Pesquisar();
        }
    }  

    //https://bestofreactjs.com/repo/marekrozmus-react-swipeable-list-react-sortable-list
    // const leadingActions = ({id}) => (
    //     <LeadingActions>
    //         <SwipeAction destructive={false} onClick={() => console.info(id, 'clique estrela')}>
    //             <div className="d-flex align-items-center bg-success text-light text-center p-3"><i className="fa fa-fw fa-star texto-amarelo"></i> Estrela</div>
    //         </SwipeAction>     
    //     </LeadingActions>
    // );
      
    function closeClientesForm() {
        setShowModal(false);
    }
    
    function salvarClientesForm(clienteAtualizado) {
        setCliente(clienteAtualizado);
    }

    return <>
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div className="link-icone"><Link to='/home'><i className="fa fa-2x fa-fw fa-chevron-left"></i></Link></div>
                        <div className="flex-grow-1"><p className="text-truncate text-center fw-bold mt-3">CLIENTES</p></div>
                        <PettIf condicional={parametros.PAR_CLIINSERIR==="S"}>
                            <div className="link-icone"><Link to='' onClick={() => setShowModal(true)} ><i className="fa fa-2x fa-fw fa-edit"></i></Link></div>
                        </PettIf>
                    </div>
                </div>
            </div>
            <div className="container-fluid limit-width">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        {/* <PettFieldText size="col-12" label="PESQUISAR" name="TEXTO" value={pesquisa.TEXTO}/> */}
                        <PettFieldSearch size="w-100" name="PESQUISA" value={pesquisa.PESQUISA} placeholder="Localizar" set={setPesquisa} upper onKeyDown={(e) => localizarKeyDown(e)}/>
                        <div className="ms-2"><PettButton variant="green" caption="Filtrar" click={() => { Pesquisar(); }}/></div>
                    </div>
                </div>
            </div>
        </div>
        
        <PettIf condicional={ listagem.length > 0}>
            <div className="container limit-width p-0">
                {                     
                    listagem.map(cliente => (
                        <div className="lista-item w-100" key={cliente.CLI_CODIGO}>
                            <div className="card-body p-0">
                                <div className="col-12 pt-1 px-2 text-truncate">
                                    <Link to={"/cliente/"+cliente.CLI_CODIGO} className="lista-link stretched-link fw-bold">{cliente.CLI_NOME}</Link>
                                </div>
                                <div className="col-12 pb-1 px-2 text-truncate texto-suave small">
                                    {cliente.CLI_CODIGO+' - '+cliente.CLI_FONE1+' - '+cliente.CLI_FONE2}
                                </div>
                            </div>
                        </div>
                    ))
                }   
            </div>
        </PettIf>  
        <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
        <ClientesForm show={showModal} registro={cliente} fechar={closeClientesForm} salvar={salvarClientesForm}/>
    </>
}

export default Clientes;