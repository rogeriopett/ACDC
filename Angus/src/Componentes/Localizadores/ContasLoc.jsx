import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import Sentinela from '../Sentinela';

function ContasLoc(props) {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/contas', 'ContasLoc listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ CON_CODIGO: '', CON_NOME: '' });
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hPesquisar = () => { listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { CON_CODIGO: '', CON_NOME: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const localizarKeyDown = (e) => {
        if (e.keyCode === 13) {
            listar(pesquisa,true);
        }
    } 

    function cancelar() {
        props.onCloseModal({ LOC: false });
    }

    function selecionar(item) {
        props.onCloseModal({ LOC: true, ...item });
    }

    const onRowSelect = (item) => {
        selecionar(item);
    };

    return <>
        <PettModal show={props.showModal} size="lg" position="top" title="Localizar Conta..." onHide={cancelar}>
            <div className="row g-1">
                <PettFieldText size="col-2 mb-1" label="CÓDIGO" name="CON_CODIGO" value={pesquisa.CON_CODIGO} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)} keyfilter="int"/>
                <PettFieldText size="col-10 mb-1" label="NOME" name="CON_NOME" value={pesquisa.CON_NOME} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)}/>
                <div className="col-12">
                    <div className="box shadow-sm">
                        <PettButton caption="Filtrar" icone="search" click={hPesquisar} />
                        <PettButton caption="Limpar" icone="reset" click={reset} />
                    </div>
                </div>
            </div>

            <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                <PettColumn field="CON_CODIGO" header="Código" sortable></PettColumn>
                <PettColumn field="CON_NOME" header="Nome" sortable></PettColumn>
            </PettGrid>
            <Sentinela onIntersect={() => carregarMais('listar', pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />

            <PettModal.Footer>
                <PettButton caption="Cancelar" icone="cancel" click={cancelar} />
            </PettModal.Footer>
        </PettModal>
    </>
}

export default ContasLoc;