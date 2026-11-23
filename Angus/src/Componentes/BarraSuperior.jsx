import { useContext, useState } from 'react';
import { Link } from 'react-router-dom';

import { PettAvatar } from 'pett-componentes';
import { PettButton} from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettMenuBar } from 'pett-componentes';
import { PettMenuSlider } from 'pett-componentes';
import { PettMenuSliderPerfil } from 'pett-componentes';
import { PettTopBar } from 'pett-componentes';

import { AuthContext } from '../Contextos/Auth';
import { useMenu } from '../Contextos/Menu';
import Configuracoes from './Configuracoes';
import Logomarca from './Logomarca';
import Logo from "../Imagens/logo_runtime_dark.svg";

/** Avatar do usuário: abre o painel de configurações. */
function AvatarConfig({ usuario, mostrarNome, onClick }) {
    return (
        <button type="button" aria-label="Configurações" onClick={onClick}
                style={{ background: 'none', border: 0, padding: 0, color: 'inherit', display: 'flex', alignItems: 'center', gap: 8 }}>
            <PettAvatar src={usuario.avatar} nome={usuario.nome} size="sm" anel />
            {/* <img src={usuario.avatar} className="rounded-circle" alt="" style={{ maxHeight: '35px' }} /> */}
            {mostrarNome && <span className="text-nowrap font-roboto">{usuario.nome}</span>}
        </button>
    );
}

function BarraSuperior() {
    const { logado, empresaSelecionada, logout, usuario } = useContext(AuthContext);
    const { menuData } = useMenu();
    const [ configAberto, setConfigAberto ] = useState(false);

    async function sair() {
        const confirmou = await PettMensagem.confirmar('Confirma','Quer sair do sistema?');
        if (confirmou) {
            logout();
        }
    }

    const abrirConfig = () => setConfigAberto(true);

    return <>
      <PettTopBar
            marca={<Link to="/" className="text-reset text-decoration-none d-flex"><Logomarca src={Logo} width="150" /></Link>}

            // Menu horizontal ao lado da marca; colapsado, some (quem abre o menu é o hambúrguer, na direita).
            esquerda={({ colapsado }) => colapsado ? null : <PettMenuBar data={menuData} />}

            direita={({ colapsado }) => (
                <div className="d-flex align-items-center gap-3">
                    {!colapsado && <span className="text-nowrap font-roboto">{empresaSelecionada.label}</span>}

                    {logado === true && <AvatarConfig usuario={usuario} mostrarNome={!colapsado} onClick={abrirConfig} />}

                    {!colapsado && <PettButton caption="Sair" icone="shutdown" click={sair} />}

                    {colapsado && (
                        <PettMenuSlider
                            data={menuData}
                            trigger={
                                <PettButton icone="menu" icoSize="25"/>
                                // <button type="button" aria-label="Menu" style={{ background: 'none', border: 0, padding: 4, color: 'inherit' }}>
                                //     <PettIcon name="menu" size="25" />
                                // </button>
                            }
                            cabecalho={<img src={Logo} height={28} />}
                            perfil={({ fechar }) =>
                                logado ? (
                                    <PettMenuSliderPerfil avatar={usuario.avatar} nome={usuario.nome} email={usuario.login}>
                                        <PettButton caption="Meus dados" link="/profile" onClick={fechar} />
                                        <PettButton caption="Sair" variant="red" onClick={() => { fechar(); sair(); }} />
                                    </PettMenuSliderPerfil>
                                ) : (
                                    <PettMenuSliderPerfil>
                                        <PettButton caption="Acessar" link="/login" onClick={fechar} />
                                        <PettButton caption="Criar conta" link="/cadastro" onClick={fechar} />
                                    </PettMenuSliderPerfil>
                                )
                            }
                        />
                    )}
                </div>
            )}
        />

        {/* O painel de configurações fica fora da barra: ele não tem botão próprio, quem abre é o avatar. */}
        <Configuracoes show={configAberto} onShow={abrirConfig} onHide={() => setConfigAberto(false)} />
    

       {/* <PettTopBar
            layout={{
                esquerda: ["marca", "menu"],
                direita: ["empresa", "avatar", "sair", "hamburguer"],
            }}
            marca={<Link to="/"><Logomarca src={Logo} width="150" /></Link>}
            menu={menuData}
            avatar={logado ? { src: usuario.avatar, nome: usuario.nome, mostrarNome: true, onClick: () => setConfigAberto(true) } : undefined}
            pecas={{
                empresa: <span className="text-nowrap">{empresaSelecionada.label}</span>,
                sair: <PettButton caption="Sair" icone="shutdown" click={sair} />,
            }}
            ocultarAoColapsar={["menu", "empresa", "sair"]}
            iconeMenu={<PettIcon name="menu" size="25" />}
            slider={{
                cabecalho: <img src={Logo} height={28} />,
                perfil: ({ fechar }) =>
                    logado ? (
                        <PettMenuSliderPerfil avatar={usuario.avatar} nome={usuario.nome} email={usuario.login}>
                            <PettButton caption="Meus dados" link="/profile" onClick={fechar} />
                            <PettButton caption="Sair" variant="red" onClick={() => { fechar(); sair(); }} />
                        </PettMenuSliderPerfil>
                    ) : (
                        <PettMenuSliderPerfil>
                            <PettButton caption="Acessar" link="/login" onClick={fechar} />
                            <PettButton caption="Criar conta" link="/cadastro" onClick={fechar} />
                        </PettMenuSliderPerfil>
                    ),
            }}
        />
        <Configuracoes show={configAberto} onShow={() => setConfigAberto(true)} onHide={() => setConfigAberto(false)} /> */}

        {/* <header className="barra sticky-top">
            <nav className="navbar navbar-expand-xl barra">
                <div className="container-fluid">
                    <Link className="navbar-brand" to="/">
                        <Logomarca src={Logo} width="150"/>
                    </Link>

                    <div className="d-flex align-items-center">
                        <PettIf condicional={logado===true}>
                            <a className="barra-link d-block d-xl-none" href="#" role="button" aria-label="Configurações" onClick={(e) => { e.preventDefault(); setConfigAberto(true); }}>
                                <img src={usuario.avatar} className='rounded-circle me-2' alt='' style={{maxHeight: '35px'}}/>
                            </a>
                        </PettIf> */}

                        {/* Hambúrguer: o próprio navbar-toggler é o trigger do slider (o Bootstrap o esconde acima do breakpoint) */}
                        {/* <PettMenuSlider
                            data={menuData}
                            trigger={<button className="navbar-toggler" type="button" aria-label="Menu"><PettIcon name="menu" size="25"/></button>}
                            cabecalho={<img src={Logo} height={28} />}
                            perfil={({ fechar }) =>
                                logado ? (
                                    <PettMenuSliderPerfil avatar={usuario.avatar} nome={usuario.nome} email={usuario.login}>
                                        <PettButton caption="Meus dados" link="/profile" onClick={fechar} >
                                        <PettButton caption="Sair" variant="red" onClick={() => { fechar(); sair(); }} >
                                    </PettMenuSliderPerfil>
                                ) : (
                                    <PettMenuSliderPerfil>
                                        <PettButton caption="Acessar" link="/login" onClick={fechar} >
                                        <PettButton caption="Criar conta" link="/cadastro" onClick={fechar} >
                                    </PettMenuSliderPerfil>
                                )
                            }
                        />
                    </div>

                    <div className="navbar-collapse collapse" id="barramenu2">
                        <div className="w-100 d-flex justify-content-between align-items-center">
                            <div className="me-auto">
                                <PettMenuBar data={menuData}/>
                            </div>
                            <span className="me-3 text-nowrap">{empresaSelecionada.label}</span>
                            <div className="text-nowrap me-2">
                                <Configuracoes show={configAberto} onShow={() => setConfigAberto(true)} onHide={() => setConfigAberto(false)}/>
                            </div>
                            <div className="d-flex align-items-center text-nowrap">
                                <PettButton caption="Sair" icone="shutdown" click={sair}/>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </header> */}
    </>
}

export default BarraSuperior;