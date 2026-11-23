import { useContext }  from 'react';
import { AuthContext } from '../Contextos/Auth';

import { PettButton } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

function Perfil() {
    const { logado, logout, usuario } = useContext(AuthContext);
    return <>
        <PettIf condicional={logado===true}>
            <div className="row g-0 mb-2">
                <div className="col-2">
                    <img src={usuario.avatar} className="img-fluid rounded" alt="..." style={{maxHeight: '70px'}} />
                </div>
                <div className="col-10">
                    <div className="card-body p-2">
                        <h5 className="card-title text-truncate m-0 p-0 fw-bold">{usuario.nome}</h5>
                        <p className="card-text text-truncate"><small className="text-secondary">{usuario.login}</small></p>
                    </div>
                </div>
            </div>
            <div className="g-0 bg-tema2 mb-2 p-2 rounded d-flex flex-row gap-1">
                <PettButton caption="Minha Conta" icone="customer" link="/profile"  className="w-100"/>
                <PettButton caption="Alterar Senha" icone="password" link="/alterarsenha"  className="w-100"/>
                <PettButton caption="Sair" icone="exit_sign" click={ () => logout() }  className="w-100"/>
            </div>
        </PettIf>     
    </>
}

export default Perfil;