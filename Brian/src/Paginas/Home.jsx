//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - PettSwitch para alternar o tema entre reddark e redlight; fundo e textos seguem as cores do tema.
//2026.11.18 - SVGs locais (?react) trocados pelo PettIcon do pett-componentes; logo importado como URL (<img>).
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Separador da linha de versao: hifen trocado por travessao.
//2026.11.18 - Logo da empresa (GET arquivo?op=logo do Cliff) no lugar da logo da Runtime; se nao carregar, volta para a da Runtime.
//2026.11.18 - Logo da empresa em SVG (GET arquivo?op=logosvg, EMP_LOGOSVG); se nao carregar, volta para a da Runtime. A PNG (op=logo) saiu.
//2026.11.18 - PettSwitch "TEMA CLARO" trocado pelo ComboTemas (todos os temas do pett-componentes).
//2026.11.18 - Logo da Runtime (sem logo da empresa) pelo componente LogoRuntime (texto na cor do tema).
import { useContext, useState } from 'react';
import { Link } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettIcon } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { AuthContext } from '../Contextos/Auth';
import CertificadoValidade from '../Componentes/CertificadoValidade';
import ComboTemas from '../Componentes/ComboTemas';
import LogoRuntime from '../Componentes/LogoRuntime';

function Home () {

    const { logado, logout, usuarioNome, empresa, versaoBase } = useContext(AuthContext);
    // logomarca SVG da empresa servida pelo Cliff (EMP_LOGOSVG); se nao carregar, a da Runtime.
    const [ semLogoEmpresa, setSemLogoEmpresa ] = useState(false);

    return <>
        <PettIf condicional={logado===true}>
            <div className="min-vh-100">
                <div className="container-fluid limit-width py-5 text-center">
                    {semLogoEmpresa
                        ? <LogoRuntime className="mb-2 d-block mx-auto" style={{maxWidth: '280px'}}/>
                        : <img src={import.meta.env.VITE_URL_API+'arquivo?op=logosvg'} alt={empresa} style={{maxWidth: '280px'}} className="img-fluid mb-2" onError={() => setSemLogoEmpresa(true)}/>
                    }
                    <div className="col-12 mb-2 texto-suave">
                        <span className="fw-bold">{empresa}</span><br/>{usuarioNome}
                        {/* {import.meta.env.VITE_URL_API} */}
                    </div>
                    <ul className="list-group mb-2 text-start">
                        <li className="list-group-item d-flex justify-content-between align-items-center"><Link to='/clientes' className="lista-link stretched-link w-100"><PettIcon name="user_group" size="25" className="me-3"/> Clientes</Link></li>
                        <li className="list-group-item d-flex justify-content-between align-items-center"><Link to='/produtos' className="lista-link stretched-link w-100"><PettIcon name="brick" size="25" className="me-3"/> Produtos</Link></li>
                        <li className="list-group-item d-flex justify-content-between align-items-center"><Link to='/receber' className='lista-link stretched-link w-100'><PettIcon name="paper_money" size="25" className="me-3"/> Contas a Receber</Link></li>
                        <li className="list-group-item d-flex justify-content-between align-items-center"><Link to='/vendas' className='lista-link stretched-link w-100'><PettIcon name="shopping_cart" size="25" className="me-3"/> Pedido de Vendas</Link></li>
                        <li className="list-group-item d-flex justify-content-between align-items-center"><Link to='/vendasconferencias' className='lista-link stretched-link w-100'><PettIcon name="barcode_scanner" size="25" className="me-3"/> Conferência de Pedido de Vendas</Link></li>
                        <li className="list-group-item d-flex justify-content-between align-items-center"><Link to='/servicos' className='lista-link stretched-link w-100'><PettIcon name="drill" size="25" className="me-3"/> Ordens de Serviço</Link></li>
                        <li className="list-group-item d-flex justify-content-between align-items-center"><Link to='/televendas' className='lista-link stretched-link w-100'><PettIcon name="online_support" size="25" className="me-3"/> Televendas</Link></li>
                        <li className="list-group-item d-flex justify-content-between align-items-center"><Link to='/metas' className='lista-link stretched-link w-100'><PettIcon name="increase" size="25" className="me-3"/> Minhas Metas</Link></li>
                    </ul>
                    <div className="col-12 mb-3 texto-suave">
                        {'Versão Base: ' + versaoBase + ' – Versão App: '+import.meta.env.VITE_APP_VER}
                        <CertificadoValidade/>
                    </div>
                    <div className="row mb-4 text-start">
                        <ComboTemas/>
                    </div>
                    <div className="col-12">
                        <PettButton className="w-100" variant="red" size="lg" icone="shutdown_branco" caption="DESCONECTAR" click={logout}/>
                    </div>
                </div>
            </div>
        </PettIf>
    </>
}

export default Home;