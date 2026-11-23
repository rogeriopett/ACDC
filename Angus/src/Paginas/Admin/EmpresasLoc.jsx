import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import Sentinela from '../../Componentes/Sentinela';

function EmpresasLoc(props) {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('admin/empresas', 'EmpresasLoc listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ EMP_NOME: '' });
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hPesquisar = () => { listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { EMP_NOME: '' };
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
        <PettModal show={props.showModal} title="Localizar Empresas..." size="lg" fechar={false}>
            <div className="row g-1">
                <PettFieldText size="col-12" label="NOME" name="EMP_NOME" value={pesquisa.EMP_NOME} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)}/>
                <div className="col-12">
                    <div className="box shadow-sm">
                        <PettButton caption="Filtrar" icone="search" click={hPesquisar} />
                        <PettButton caption="Limpar" icone="reset" click={reset} />
                    </div>
                </div>
            </div>

            <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                <PettColumn field="EMP_CODIGO" header="Código" sortable></PettColumn>
                <PettColumn field="EMP_CNPJ" header="CNPJ" sortable></PettColumn>
                <PettColumn field="EMP_NOME" header="Nome" sortable></PettColumn>
                <PettColumn field="EMP_STATUS" header="Status" sortable></PettColumn>
            </PettGrid>
            <Sentinela onIntersect={() => carregarMais('listar', pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />

            <PettModal.Footer>
                <PettButton caption="Cancelar" icone="cancel" click={(e) => cancelar(e) } />           
            </PettModal.Footer>
        </PettModal>
    </>
}

export default EmpresasLoc;