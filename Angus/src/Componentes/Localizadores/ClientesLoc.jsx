import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import Sentinela from '../Sentinela';

function ClientesLoc(props) {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/clientes', 'ClientesLoc listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ CLI_CNPJ: '', CLI_CODIGO: '', CLI_CONTATO: '', CLI_CPF: '', CLI_EMAIL: '', CLI_NOME: '' });
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hPesquisar = () => { listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { CLI_CNPJ: '', CLI_CODIGO: '', CLI_CONTATO: '', CLI_CPF: '', CLI_EMAIL: '', CLI_NOME: '' };
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
        <PettModal show={props.showModal} size="lg" position="top" title="Localizar Clientes..." onHide={cancelar}>
            <div className="row g-1">
                <PettFieldText size="col-2 mb-1" label="CÓDIGO" name="CLI_CODIGO" value={pesquisa.CLI_CODIGO} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)} keyfilter="int"/>
                <PettFieldText size="col-10 mb-1" label="NOME" name="CLI_NOME" value={pesquisa.CLI_NOME} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)}/>
                <div className="col-12">
                    <div className="box shadow-sm">
                        <PettButton caption="Filtrar" icone="search" click={hPesquisar} />
                        <PettButton caption="Limpar" icone="reset" click={reset} />
                    </div>
                </div>
            </div>

            <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                <PettColumn field="CLI_CODIGO" header="Código" sortable></PettColumn>
                <PettColumn field="CLI_NOME" header="Nome" sortable></PettColumn>
                <PettColumn field="CLI_DTATUALIZACAO" header="Dt. Atualização" sortable align="center" alignHeader="center"></PettColumn>
                {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
            </PettGrid>
            <Sentinela onIntersect={() => carregarMais('listar', pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />

            <PettModal.Footer>
                <PettButton caption="Cancelar" icone="cancel" click={cancelar} />
            </PettModal.Footer>
        </PettModal>
    </>
}

export default ClientesLoc;