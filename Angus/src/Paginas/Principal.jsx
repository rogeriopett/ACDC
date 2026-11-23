import { useContext } from "react";
import { Link } from "react-router-dom";

import { PettIcon } from "pett-componentes";
import { AuthContext } from '../Contextos/Auth';
import BarraOpcoes from "../Componentes/BarraOpcoes";
import BarraSuperior from "../Componentes/BarraSuperior";
import Rodape from "../Componentes/Rodape";

function Principal() {
    const { logout } = useContext(AuthContext);
    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Dashboard" ></BarraOpcoes>
        <div className="p-3">
            <div className="container d-flex flex-wrap justify-content-center">
                <Link to="/clientes"><div className="atalho-box"><PettIcon name="team" size="36"/><span>Clientes</span></div></Link>
                <Link to="/fornecedores"><div className="atalho-box"><PettIcon name="factory" size="36"/><span>Fornecedores</span></div></Link>
                <Link to="/vendedores"><div className="atalho-box"><PettIcon name="administrator_male" size="36"/><span>Vendedores</span></div></Link>
                <Link to="/produtos"><div className="atalho-box"><PettIcon name="brick" size="36"/><span >Produtos</span></div></Link>
                <Link to="/estoque"><div className="atalho-box"><PettIcon name="move_stock" size="36"/><span >Movimentação Estoque</span></div></Link>
                <Link to="/vendas"><div className="atalho-box"><PettIcon name="shopping_cart" size="36"/><span >Pedidos de Vendas</span></div></Link>
                <Link to="/pagar"><div className="atalho-box"><PettIcon name="banknotes" size="36"/><span >Contas a Pagar</span></div></Link>
                <Link to="/receber"><div className="atalho-box"><PettIcon name="banknotes" size="36"/><span >Contas a Receber</span></div></Link>
                <Link to="/caixa"><div className="atalho-box"><PettIcon name="exchange" size="36"/><span >Fluxo de Caixa</span></div></Link>
                <Link to="/caixatransferencias"><div className="atalho-box"><PettIcon name="initiate_money_transfer" size="36"/><span >Transferências de Saldos</span></div></Link>
                <Link to="/consultas"><div className="atalho-box"><PettIcon name="today" size="36"/><span >Consultas</span></div></Link>
                <Link to="/consultasagenda"><div className="atalho-box"><PettIcon name="calendar_10" size="36"/><span >Agenda</span></div></Link>
            </div>
        </div>
        <div>
            {/* <List dividersIos outlineIos strongIos>
                <ListItem title="Link 1" link="#" />
                <ListItem title="Link 2" link="#" />
                <ListItem title="Link 3" link="#" />
            </List> */}
        </div>
        <Rodape/>
    </>
}

export default Principal;