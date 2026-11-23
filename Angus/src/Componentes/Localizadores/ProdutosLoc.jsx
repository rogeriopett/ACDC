import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import Sentinela from '../Sentinela';
import { formatarMoeda } from '../../Funcoes';

function ProdutosLoc(props) {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/produtos', 'ProdutosLoc listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ PRO_CODIGO: '', PRO_NOME: '', PRO_LOCALIZACAO: '', GRU_DESCRICAO: '', FAM_DESCRICAO: '' });
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hPesquisar = () => { listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { PRO_CODIGO: '', PRO_NOME: '', PRO_LOCALIZACAO: '', GRU_DESCRICAO: '', FAM_DESCRICAO: '' };
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
        <PettModal show={props.showModal} size="lg" position="top" title="Localizar Produtos..." onHide={cancelar}>
            <div className="row g-1">
                <PettFieldText size="col-2 mb-1" label="CÓDIGO" name="PRO_CODIGO" value={pesquisa.PRO_CODIGO} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)} keyfilter="int"/>
                <PettFieldText size="col-10 mb-1" label="DESCRIÇÃO" name="PRO_NOME" value={pesquisa.PRO_NOME} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)}/>
                <div className="col-12">
                    <div className="box shadow-sm">
                        <PettButton caption="Filtrar" icone="search" click={hPesquisar} />
                        <PettButton caption="Limpar" icone="reset" click={reset} />
                    </div>
                </div>
            </div>

            <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                <PettColumn field="PRO_CODIGO" header="Código" sortable></PettColumn>
                <PettColumn field="PRO_NOME" header="Nome" sortable></PettColumn>
                <PettColumn field="PRO_ESTOQUEATUAL" header="Estoque Atual" align="right" alignHeader="right"></PettColumn>
                <PettColumn field="PRO_PRECOVENDA" header="Preço" body={(rowData) => formatarMoeda(rowData,'PRO_PRECOVENDA')} align="right" alignHeader="right"></PettColumn>
            </PettGrid>
            <Sentinela onIntersect={() => carregarMais('listar', pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />

            <PettModal.Footer>
                <PettButton caption="Cancelar" icone="cancel" click={cancelar} />
            </PettModal.Footer>
        </PettModal>

    </>
}

export default ProdutosLoc;