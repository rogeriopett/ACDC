//Atualizacoes:
//2026.11.17 - Importados o CSS do pett-componentes e o tema purpledark (antes dos CSS do Brian, que continuam prevalecendo).
//2026.11.17 - Removidos os CSS do PrimeReact/primeicons e o stylesprime.css (o PrimeReact saiu do projeto).
//2026.11.18 - Incluido o PettMensagemProvider do pett-componentes (substitui o PettMensagem local com sweetalert2).
//2026.11.18 - Tema purpledark trocado pelos temas reddark/redlight, controlados pelo TemaProvider.
//2026.11.18 - SVG local (?react) do "Carregando..." trocado pelo PettIcon do pett-componentes.
//2026.11.18 - Removido o import do stylesbootstrap.css (a unica regra usada, .badge, foi para o Global.css).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Importados os CSS de todos os 22 temas do pett-componentes (escolha no ComboTemas da Home).
import { useContext } from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from "react-router-dom";

import { PettIcon } from 'pett-componentes';
import { PettMensagemProvider } from 'pett-componentes';

import { AuthProvider, AuthContext } from './Contextos/Auth';
import { ParametrosProvider } from './Contextos/Parametros';
import { TemaProvider } from './Contextos/Temas';
import Cliente from './Paginas/Cliente';
import Clientes from './Paginas/Clientes';
import ErrorPage from './Paginas/ErrorPage';
import Home from './Paginas/Home';
import Login from './Paginas/Login';
import Metas from './Paginas/Metas';
import Produto from './Paginas/Produto';
import Produtos from './Paginas/Produtos';
import ProdutoFotos from './Paginas/ProdutoFotos';
import ProdutoFotosEnviar from './Paginas/ProdutoFotosEnviar';
import Receber from './Paginas/Receber';
import ReceberId from './Paginas/ReceberId';
import Servico from './Paginas/Servico';
import Servicos from './Paginas/Servicos';
import TeleVendas from './Paginas/TeleVendas';
import TeleVenda from './Paginas/TeleVenda';
import Venda from './Paginas/Venda';
import VendaConferencia from './Paginas/VendaConferencia';
import Vendas from './Paginas/Vendas';
import VendasConferencias from './Paginas/VendasConferencias';
//pett-componentes: o tema ativo (data-pett-theme no <html>) é controlado pelo Contextos/Temas.jsx.
import 'pett-componentes/style.css';
import 'pett-componentes/temas/blackdark.css';
import 'pett-componentes/temas/blacklight.css';
import 'pett-componentes/temas/bluedark.css';
import 'pett-componentes/temas/bluelight.css';
import 'pett-componentes/temas/browndark.css';
import 'pett-componentes/temas/brownlight.css';
import 'pett-componentes/temas/graydark.css';
import 'pett-componentes/temas/graylight.css';
import 'pett-componentes/temas/greendark.css';
import 'pett-componentes/temas/greenlight.css';
import 'pett-componentes/temas/orangedark.css';
import 'pett-componentes/temas/orangelight.css';
import 'pett-componentes/temas/pinkdark.css';
import 'pett-componentes/temas/pinklight.css';
import 'pett-componentes/temas/purpledark.css';
import 'pett-componentes/temas/purplelight.css';
import 'pett-componentes/temas/reddark.css';
import 'pett-componentes/temas/redlight.css';
import 'pett-componentes/temas/tealdark.css';
import 'pett-componentes/temas/teallight.css';
import 'pett-componentes/temas/yellowdark.css';
import 'pett-componentes/temas/yellowlight.css';
import './Global.css'; //pett

function App() {
    const Privado = ({ children }) => {
        const { logado, usuarioStatus, carregando } = useContext(AuthContext);

        if (carregando) {
            return <>
                <div className="container limit-width vh-100 d-flex justify-content-center align-items-center">
                    <p className="text-center lead"><PettIcon name="wait" size="32" animado/><br/>Carregando...</p>
                </div>  
            </>
        }

        if (usuarioStatus==='I') {
            return <Navigate to='/confirmarcadastro' />
        }
        
        if (!logado) {
            return <Navigate to="/login" replace={true}/>
        }

        return children;
    };

    return (
        <TemaProvider>
        <Router>
            <PettMensagemProvider />
            <ParametrosProvider>
                <AuthProvider>
                    <Routes>
                        <Route exact path='/' element={<Navigate replace to="/home" />} /> 
                        <Route exact path='/login' element={<Login />} />
                        <Route exact path='/cliente/:id' element={<Privado><Cliente /></Privado>} />
                        <Route exact path='/clientes' element={<Privado><Clientes /></Privado>} />
                        <Route exact path='/metas' element={<Privado><Metas /></Privado>} />
                        <Route exact path='/produto/:id' element={<Privado><Produto /></Privado>} />
                        {/* <Route exact path='/produto/:id' element={<Produto />} /> */}
                        <Route exact path='/produtos' element={<Privado><Produtos /></Privado>} />
                        <Route exact path='/produtofotos/:id' element={<Privado><ProdutoFotos /></Privado>} />
                        <Route exact path='/produtofotosenviar/:id' element={<Privado><ProdutoFotosEnviar /></Privado>} />
                        <Route exact path='/receber' element={<Privado><Receber /></Privado>} />
                        <Route exact path='/receber/:id' element={<Privado><ReceberId /></Privado>} />
                        <Route exact path='/servicos' element={<Privado><Servicos /></Privado>} />
                        <Route exact path='/servico/:id' element={<Privado><Servico /></Privado>} />
                        <Route exact path='/televendas' element={<Privado><TeleVendas /></Privado>} />
                        <Route exact path='/televenda/:id' element={<Privado><TeleVenda /></Privado>} />
                        <Route exact path='/vendas' element={<Privado><Vendas /></Privado>} />
                        <Route exact path='/vendasconferencias' element={<Privado><VendasConferencias /></Privado>} />
                        <Route exact path='/venda/:id' element={<Privado><Venda /></Privado>} />
                        <Route exact path='/vendaconferencia/:id' element={<Privado><VendaConferencia /></Privado>} />
                        <Route exact path='/home' element={<Privado><Home /></Privado>} />
                        <Route path='*' element={<ErrorPage />} />
                    </Routes>
                </AuthProvider>
            </ParametrosProvider>
        </Router>
        </TemaProvider>
    )
}

export default App
