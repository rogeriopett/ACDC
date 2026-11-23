import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import Sentinela from '../Sentinela';
import { formatarDataStr2 } from '../../Funcoes';

function AgrupadoresLoc(props) {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/agrupadores', 'AgrupadoresLoc listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ AGR_CODIGO: '', AGR_DESCRICAO: '' });
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hPesquisar = () => { listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { AGR_CODIGO: '', AGR_DESCRICAO: '' };
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
        <PettModal show={props.showModal} size="lg" position="top" title="Localizar Agrupadores..." onHide={cancelar}>
            <div className="row g-1">
                <PettFieldText size="col-2" label="CÓDIGO" name="AGR_CODIGO" value={pesquisa.AGR_CODIGO} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)} keyfilter="int"/>
                <PettFieldText size="col-10" label="DESCRIÇÃO" name="AGR_DESCRICAO" value={pesquisa.AGR_DESCRICAO} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)}/>
                <div className="col-12 mt-4">
                    <div className="box shadow-sm">
                        <PettButton caption="Filtrar" icone="search" click={hPesquisar} />
                        <PettButton caption="Limpar" icone="reset" click={reset} />
                    </div>
                </div>
            </div>

            <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                <PettColumn field="AGR_CODIGO" header="Código" sortable></PettColumn>
                <PettColumn field="AGR_DESCRICAO" header="Descrição" sortable></PettColumn>
                <PettColumn field="AGR_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'AGR_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
            </PettGrid>
            <Sentinela onIntersect={() => carregarMais('listar', pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />

            <PettModal.Footer>
                <PettButton caption="Cancelar" icone="cancel" click={cancelar} />
            </PettModal.Footer>
        </PettModal>
    </>
}

export default AgrupadoresLoc;