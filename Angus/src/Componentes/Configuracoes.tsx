import { useContext } from 'react';

import { PettButton } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettSideBar } from 'pett-componentes';

import { AuthContext } from '../Contextos/Auth';
import ComboEmpresas from './ComboEmpresas';
import ComboTemas from './ComboTemas';
import Perfil from './Perfil';

interface ConfiguracoesProps {
    /** Opcional: controla a abertura de fora (ex.: o avatar da barra colapsada). Sem isso, abre só pelo trigger. */
    show?: boolean;
    onShow?: () => void;
    onHide?: () => void;
}

function Configuracoes({ show, onShow, onHide }: ConfiguracoesProps) {
    const { logado, usuario } = useContext(AuthContext);        

    return <>      
        <PettIf condicional={logado===true}>
            <PettSideBar
                lado="direita" titulo="Configurações" largura="min(420px, 90vw)"
                show={show} onShow={onShow} onHide={onHide}
                trigger={show === undefined
                    ? <span><img src={usuario.avatar} className='rounded-circle me-2' alt='' style={{maxHeight: '35px'}}/> {usuario.nome}</span>
                    : undefined}
            >
            {/* <PettSideBar
                lado="direita" titulo="Configurações" largura="min(420px, 90vw)"
                show={show} onShow={onShow} onHide={onHide}
                trigger={<span><img src={usuario.avatar} className='rounded-circle me-2' alt='' style={{maxHeight: '35px'}}/> {usuario.nome}</span>}
            > */}
                <div className="g-0 m-2">
                    <Perfil/>
                </div>

                <div className="m-2">
                    <div className="bg-tema2 p-3 rounded">
                        <h6 className="offcanvas-title mb-3">Minhas Empresas</h6>
                        <ComboEmpresas/>
                        <PettButton caption="Gerenciar" icone="gear" link="/minhasempresas"  className="w-100"/>
                    </div>
                </div>

                <div className="m-2">
                    <div className="bg-tema2 p-3 rounded">
                        <h6 className="offcanvas-title mb-3">Tema</h6>
                        <ComboTemas/>
                    </div>
                </div>

            </PettSideBar>    

        </PettIf>
    </>
}

export default Configuracoes;