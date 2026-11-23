import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import Sentinela from '../Sentinela';
import { formatarAtivoInativo } from '../../Funcoes';

function VendedoresLoc(props) {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/vendedores', 'VendedoresLoc listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ VEN_CODIGO: '', VEN_NOME: '', VEN_EMAIL: '' });
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hPesquisar = () => { listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { VEN_CODIGO: '', VEN_NOME: '', VEN_EMAIL: '' };
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
        <PettModal show={props.showModal} size="lg" position="top" title="Localizar Vendedores..." onHide={cancelar}>
            <div className="row g-1">
                <PettFieldText size="col-2 mb-1" label="CÓDIGO" name="VEN_CODIGO" value={pesquisa.VEN_CODIGO} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)} keyfilter="int"/>
                <PettFieldText size="col-10 mb-1" label="DESCRIÇÃO" name="VEN_NOME" value={pesquisa.VEN_NOME} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)}/>
                <div className="col-12">
                    <div className="box shadow-sm">
                        <PettButton caption="Filtrar" icone="search" click={hPesquisar} />
                        <PettButton caption="Limpar" icone="reset" click={reset} />
                    </div>
                </div>
            </div>

            <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                <PettColumn field="VEN_CODIGO" header="Código" sortable></PettColumn>
                <PettColumn field="VEN_NOME" header="Nome" sortable></PettColumn>
                <PettColumn field="VEN_STATUS" header="Status" body={(rowData) => formatarAtivoInativo(rowData,'VEN_STATUS')} sortable align="center" alignHeader="center"></PettColumn>
                {/* <Column body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></Column> */}
            </PettGrid>
            <Sentinela onIntersect={() => carregarMais('listar', pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />

            <PettModal.Footer>
                <PettButton caption="Cancelar" icone="cancel" click={cancelar} />
            </PettModal.Footer>
        </PettModal>
    </>
}

export default VendedoresLoc;