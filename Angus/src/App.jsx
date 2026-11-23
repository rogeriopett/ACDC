import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

import { PettMensagemProvider } from 'pett-componentes';

//contextos.
import { TemaProvider } from './Contextos/Temas';
import { AuthProvider } from './Contextos/Auth';
import { MenuProvider } from './Contextos/Menu';
import { UnidadeProvider } from './Contextos/Unidades';

//componentes.
// import PettMenuSlider from './Componentes/PettMenu/PettMenuSlider';

//paginas simples.
// import Empresas from './Paginas/Empresas';
import Home from './Paginas/Home';
import ErrorPage from './Paginas/ErrorPage';
import Principal from './Paginas/Principal';

//paginas do usuario.
import AlterarSenha from './Paginas/Usuario/AlterarSenha';
import Cadastro from './Paginas/Usuario/Cadastro/Cadastro';
import Confirmar from './Paginas/Usuario/Confirmar/Confirmar';
import Login from './Paginas/Usuario/Login/Login';
import MinhasEmpresas from './Paginas/Usuario/Empresas/MinhasEmpresas';
import Profile from './Paginas/Usuario/Profile';
import ResetSenha from './Paginas/Usuario/ResetSenha/ResetSenha';

//paginas do sistema.
import Agrupadores from './Paginas/Firenet/Agrupadores';
import Aliquotas from './Paginas/Firenet/Aliquotas';
import Almoxarifados from './Paginas/Firenet/Almoxarifados';
import Atividades from './Paginas/Firenet/Atividades';
import Bancos from './Paginas/Firenet/Bancos';
import Beneficios from './Paginas/Firenet/Beneficios';
import Caixa from './Paginas/Firenet/Caixa';
import Classfiscal from './Paginas/Firenet/Classfiscal';
import Clientes from './Paginas/Firenet/Clientes';
import Condicoes from './Paginas/Firenet/Condicoes';
import ConsultasAgenda from './Paginas/Firenet/ConsultasAgenda';
import Consultas from './Paginas/Firenet/Consultas';
import Contas from './Paginas/Firenet/Contas';
import Convenios from './Paginas/Firenet/Convenios';
import Despesas from './Paginas/Firenet/Despesas';
import EmailsContas from './Paginas/Firenet/EmailsContas';
import EmpresaPerfil from './Paginas/Firenet/EmpresaPerfil';
import Estoque from './Paginas/Firenet/Estoque';
import ExamesTipos from './Paginas/Firenet/ExamesTipos';
import Familias from './Paginas/Firenet/Familias';
import Fornecedores from './Paginas/Firenet/Fornecedores';
import Grupos from './Paginas/Firenet/Grupos';
import Icms from './Paginas/Firenet/Icms';
import Ipi from './Paginas/Firenet/Ipi';
import Iss from './Paginas/Firenet/Iss';
import Locais from './Paginas/Firenet/Locais';
import Mailings from './Paginas/Firenet/Mailings';
import Marcas from './Paginas/Firenet/Marcas';
import Markups from './Paginas/Firenet/Markups';
import Mensalidades from './Paginas/Firenet/Mensalidades';
import Metas from './Paginas/Firenet/Metas';
import Motivos from './Paginas/Firenet/Motivos';
import Naturezas from './Paginas/Firenet/Naturezas';
import Nfes from './Paginas/Firenet/Nfes';
import Pagar from './Paginas/Firenet/Pagar';
import Piscofins from './Paginas/Firenet/Piscofins';
import Producao from './Paginas/Firenet/Producao';
import Produtos from './Paginas/Firenet/Produtos';
import Receber from './Paginas/Firenet/Receber';
import Receitas from './Paginas/Firenet/Receitas';
import Recibos from './Paginas/Firenet/Recibos';
import TabelaPrecos from './Paginas/Firenet/TabelaPrecos';
import Taxas from './Paginas/Firenet/Taxas';
import CaixaTransferencias from './Paginas/Firenet/CaixaTransferencias';
import Unidades from './Paginas/Firenet/Unidades';
import Vendas from './Paginas/Firenet/Vendas';
import Vendedores from './Paginas/Firenet/Vendedores';
import Vias from './Paginas/Firenet/Vias';

//paginas do admin.
import Empresas from './Paginas/Admin/Empresas';
import EmpresasUsuarios from './Paginas/Admin/EmpresasUsuarios';
import MenuAdmin from './Paginas/Admin/Menu/MenuAdmin';
import MenuDrop from './Paginas/Admin/Menu/MenuDrop';
import MenuGestor from './Paginas/Admin/Menu/MenuGestor';
import MenuUsuario from './Paginas/Admin/Menu/MenuUsuario';
import Parametros from './Paginas/Admin/Parametros';
import Usuarios from './Paginas/Admin/Usuarios';
import UsuariosEmpresas from './Paginas/Admin/UsuariosEmpresas';

//outras importações.
import { Empresa, Privado, Admin, UnLogged } from './Protecoes';

import './stylesbootstrap.css';

//importacoes dos temas do pacote pett-componentes.
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
import './Temas/TemaBlackDark.css';
import './Temas/TemaBlackLight.css';
import './Temas/TemaBlueDark.css';
import './Temas/TemaBlueLight.css';
import './Temas/TemaBrownDark.css';
import './Temas/TemaBrownLight.css';
import './Temas/TemaGrayDark.css';
import './Temas/TemaGrayLight.css';
import './Temas/TemaGreenDark.css';
import './Temas/TemaGreenLight.css';
import './Temas/TemaOrangeDark.css';
import './Temas/TemaOrangeLight.css';
import './Temas/TemaPinkDark.css';
import './Temas/TemaPinkLight.css';
import './Temas/TemaPurpleDark.css';
import './Temas/TemaPurpleLight.css';
import './Temas/TemaRedDark.css';
import './Temas/TemaRedLight.css';
import './Temas/TemaTealDark.css';
import './Temas/TemaTealLight.css';
import './Temas/TemaYellowDark.css';
import './Temas/TemaYellowLight.css';


function App() {

    // Aplica o tema no <html> (ancestral de tudo, inclusive do <body>)
    // useEffect(() => {
    //     document.documentElement.setAttribute('data-pett-theme', 'greendark');
    // }, []);
    
    // Criamos um subcomponente interno para usar o hook useMenu
    const AppContent = () => {
        return (
            <>
                <Routes>
                    <Route exact path='/' element={<Privado><Empresa><Principal /></Empresa></Privado>} /> 
                    <Route exact path='/login' element={<Login />} /> 
                    <Route exact path='/alterarsenha' element={<Privado><AlterarSenha /></Privado>} /> 
                    <Route exact path='/cadastro' element={<UnLogged msg="Para fazer um novo cadastro, primeiro finalize a sua sessão atual."><Cadastro /></UnLogged>} /> 
                    <Route exact path='/confirmar' element={<Confirmar />} /> 
                    {/* <Route exact path='/empresas' element={<Privado><Empresas /></Privado>} />  */}
                    <Route exact path='/minhasempresas' element={<Privado><MinhasEmpresas /></Privado>} /> 
                    <Route exact path='/profile' element={<Privado><Profile /></Privado>} /> 
                    <Route exact path='/reset' element={<UnLogged msg="Impossível resetar senha quando já se está logado no sistema."><ResetSenha /></UnLogged>} /> 

                    {/* Páginas do sistema. */}
                    <Route exact path='/agrupadores' element={<Privado><Empresa><Agrupadores /></Empresa></Privado>} /> 
                    <Route exact path='/aliquotas' element={<Privado><Empresa><Aliquotas /></Empresa></Privado>} /> 
                    <Route exact path='/almoxarifados' element={<Privado><Empresa><Almoxarifados /></Empresa></Privado>} /> 
                    <Route exact path='/atividades' element={<Privado><Empresa><Atividades /></Empresa></Privado>} /> 
                    <Route exact path='/bancos' element={<Privado><Empresa><Bancos /></Empresa></Privado>} /> 
                    <Route exact path='/beneficiosfiscais' element={<Privado><Empresa><Beneficios /></Empresa></Privado>} /> 
                    <Route exact path='/caixa' element={<Privado><Empresa><Caixa /></Empresa></Privado>} /> 
                    <Route exact path='/caixatransferencias' element={<Privado><Empresa><CaixaTransferencias /></Empresa></Privado>} /> 
                    <Route exact path='/classificacoesfiscais' element={<Privado><Empresa><Classfiscal /></Empresa></Privado>} /> 
                    <Route exact path='/clientes' element={<Privado><Empresa><Clientes /></Empresa></Privado>} /> 
                    <Route exact path='/condicoes' element={<Privado><Empresa><Condicoes /></Empresa></Privado>} /> 
                    <Route exact path='/consultas' element={<Privado><Empresa><Consultas /></Empresa></Privado>} /> 
                    <Route exact path='/consultasagenda' element={<Privado><Empresa><ConsultasAgenda /></Empresa></Privado>} /> 
                    <Route exact path='/contas' element={<Privado><Empresa><Contas /></Empresa></Privado>} /> 
                    <Route exact path='/convenios' element={<Privado><Empresa><Convenios /></Empresa></Privado>} /> 
                    <Route exact path='/despesas' element={<Privado><Empresa><Despesas /></Empresa></Privado>} /> 
                    <Route exact path='/emailscontas' element={<Privado><Empresa><EmailsContas /></Empresa></Privado>} /> 
                    <Route exact path='/empresa' element={<Privado><Empresa><EmpresaPerfil /></Empresa></Privado>} /> 
                    <Route exact path='/estoque' element={<Privado><Empresa><Estoque /></Empresa></Privado>} /> 
                    <Route exact path='/examestipos' element={<Privado><Empresa><ExamesTipos /></Empresa></Privado>} /> 
                    <Route exact path='/familias' element={<Privado><Empresa><Familias /></Empresa></Privado>} /> 
                    <Route exact path='/fornecedores' element={<Privado><Empresa><Fornecedores /></Empresa></Privado>} /> 
                    <Route exact path='/grupos' element={<Privado><Empresa><Grupos /></Empresa></Privado>} /> 
                    <Route exact path='/icms' element={<Privado><Empresa><Icms /></Empresa></Privado>} /> 
                    <Route exact path='/ipi' element={<Privado><Empresa><Ipi /></Empresa></Privado>} /> 
                    <Route exact path='/iss' element={<Privado><Empresa><Iss /></Empresa></Privado>} /> 
                    <Route exact path='/locais' element={<Privado><Empresa><Locais /></Empresa></Privado>} /> 
                    <Route exact path='/mailings' element={<Privado><Empresa><Mailings /></Empresa></Privado>} /> 
                    <Route exact path='/marcas' element={<Privado><Empresa><Marcas /></Empresa></Privado>} /> 
                    <Route exact path='/markups' element={<Privado><Empresa><Markups /></Empresa></Privado>} /> 
                    <Route exact path='/mensalidades' element={<Privado><Empresa><Mensalidades /></Empresa></Privado>} /> 
                    <Route exact path='/metas' element={<Privado><Empresa><Metas /></Empresa></Privado>} /> 
                    <Route exact path='/motivos' element={<Privado><Empresa><Motivos /></Empresa></Privado>} /> 
                    <Route exact path='/naturezas' element={<Privado><Empresa><Naturezas /></Empresa></Privado>} /> 
                    <Route exact path='/nfes' element={<Privado><Empresa><Nfes /></Empresa></Privado>} /> 
                    <Route exact path='/nfes/:id' element={<Privado><Empresa><Nfes /></Empresa></Privado>} /> 
                    <Route exact path='/pagar' element={<Privado><Empresa><Pagar /></Empresa></Privado>} /> 
                    <Route exact path='/piscofins' element={<Privado><Empresa><Piscofins /></Empresa></Privado>} /> 
                    <Route exact path='/producao' element={<Privado><Empresa><Producao /></Empresa></Privado>} /> 
                    <Route exact path='/produtos' element={<Privado><Empresa><Produtos /></Empresa></Privado>} /> 
                    <Route exact path='/receber' element={<Privado><Empresa><Receber /></Empresa></Privado>} /> 
                    <Route exact path='/receitas' element={<Privado><Empresa><Receitas /></Empresa></Privado>} /> 
                    <Route exact path='/recibos' element={<Privado><Empresa><Recibos /></Empresa></Privado>} /> 
                    <Route exact path='/tabelaprecos' element={<Privado><Empresa><TabelaPrecos /></Empresa></Privado>} /> 
                    <Route exact path='/taxas' element={<Privado><Empresa><Taxas /></Empresa></Privado>} /> 
                    <Route exact path='/unidades' element={<Privado><Empresa><Unidades /></Empresa></Privado>} /> 
                    <Route exact path='/vendedores' element={<Privado><Empresa><Vendedores /></Empresa></Privado>} /> 
                    <Route exact path='/vendas' element={<Privado><Empresa><Vendas /></Empresa></Privado>} /> 
                    <Route exact path='/vias' element={<Privado><Empresa><Vias /></Empresa></Privado>} />                             
                    
                    {/* Páginas do admin. */}
                    <Route exact path='/admin/empresas' element={<Privado><Admin><Empresas /></Admin></Privado>} /> 
                    <Route exact path='/admin/empresasusuarios/:empresa_id' element={<Privado><Admin><EmpresasUsuarios /></Admin></Privado>} /> 
                    <Route exact path='/admin/menuadmin' element={<Privado><Admin><MenuAdmin /></Admin></Privado>} /> 
                    <Route exact path='/admin/menudrop' element={<Privado><Admin><MenuDrop /></Admin></Privado>} /> 
                    <Route exact path='/admin/menugestor' element={<Privado><Admin><MenuGestor /></Admin></Privado>} /> 
                    <Route exact path='/admin/menuusuario' element={<Privado><Admin><MenuUsuario /></Admin></Privado>} /> 
                    <Route exact path='/admin/parametros' element={<Privado><Admin><Parametros /></Admin></Privado>} /> 
                    <Route exact path='/admin/usuarios' element={<Privado><Admin><Usuarios /></Admin></Privado>} /> 
                    <Route exact path='/admin/usuariosempresas/:usuario_id' element={<Privado><Admin><UsuariosEmpresas /></Admin></Privado>} /> 
                    
                    <Route path='*' element={<ErrorPage />} />
                </Routes>
            </>
        );
    };

    return (
        <Router>
            <TemaProvider>
                <AuthProvider>
                    <UnidadeProvider>
                        <MenuProvider>
                            <AppContent/>
                            <PettMensagemProvider />
                        </MenuProvider>
                    </UnidadeProvider>
                </AuthProvider>
            </TemaProvider>
        </Router>
    ) 
}

export default App;