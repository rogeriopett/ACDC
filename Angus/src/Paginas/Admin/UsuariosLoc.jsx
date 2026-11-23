import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import Sentinela from '../../Componentes/Sentinela';

function UsuariosLoc(props) {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('admin/usuarios', 'UsuariosLoc listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ USU_NOME: '' });

    // Handlers que chamam os métodos do Hook passando contexto local
    const hPesquisar = () => { listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { USU_NOME: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const localizarKeyDown = (e) => {
        if (e.keyCode === 13) {
            listar(pesquisa,true);
        }
    } 

    function cancelar(e) {
        let d={ 'LOC': false };
        props.onCloseModal(e,d);
    }
    
    function selecionar(e,item) {
        let d={ 'LOC': true, ...item }
        props.onCloseModal(e,d);
    }

    const onRowSelect = (event) => {
        selecionar(event,event);
    };

    return <>
        <PettModal show={props.showModal} size="lg" position="top" title="Localizar Usuários...">
            <div className="row g-1">
                <PettFieldText size="col-12 mb-1" label="NOME" name="USU_NOME" value={pesquisa.USU_NOME} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)} upper={false}/>
                <div className="col-12">
                    <div className="box shadow-sm">
                        <PettButton caption="Filtrar" icone="search" click={hPesquisar} />
                        <PettButton caption="Limpar" icone="reset" click={reset} />
                    </div>
                </div>
            </div>

            <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                <PettColumn field="USU_CODIGO" header="Código" sortable></PettColumn>
                <PettColumn field="USU_CNPJ" header="CNPJ" sortable></PettColumn>
                <PettColumn field="USU_NOME" header="Nome" sortable></PettColumn>
                <PettColumn field="USU_STATUS" header="Status" sortable></PettColumn>
            </PettGrid>
            <Sentinela onIntersect={() => carregarMais('listar', pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />

            <PettModal.Footer>
                <PettButton caption="Cancelar" icone="cancel" click={(e) => cancelar(e) } />           
            </PettModal.Footer>
        </PettModal>
    </>
}

export default UsuariosLoc;