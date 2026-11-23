import React, { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import Sentinela from '../Sentinela';

function TaxasLoc(props) {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/taxas', 'TaxasLoc listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ TAX_CODIGO: '', TAX_DESCRICAO: '' });
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hPesquisar = () => { listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { TAX_CODIGO: '', TAX_DESCRICAO: '' };
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

    const bodyTipo = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.TAX_TIPO==='V'}>
                    <span className="badge bg-primary">VALOR</span>
                </PettIf>
                <PettIf condicional={rowData.TAX_TIPO==='P'}>
                    <span className="badge bg-info text-dark">PORCENTAGEM</span>
                </PettIf>
            </React.Fragment>
        );
    }

    const bodyValor = (rowData) => {
        if (rowData.TAX_TIPO==='V') {
            return parseFloat(rowData.TAX_VALOR).toLocaleString('pt-BR', {
                style: 'currency',
                currency: 'BRL'
            });
        } else {
            return rowData.TAX_VALOR;
        }
    }

    return <>
        <PettModal show={props.showModal} size="lg" position="top" title="Localizar Taxas..." onHide={cancelar}>
            <div className="row g-1">
                <PettFieldText size="col-2 mb-1" label="CÓDIGO" name="TAX_CODIGO" value={pesquisa.TAX_CODIGO} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)} keyfilter="int"/>
                <PettFieldText size="col-10 mb-1" label="DESCRIÇÃO" name="TAX_DESCRICAO" value={pesquisa.TAX_DESCRICAO} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)}/>
                <div className="col-12">
                    <div className="box shadow-sm">
                        <PettButton caption="Filtrar" icone="search" click={hPesquisar} />
                        <PettButton caption="Limpar" icone="reset" click={reset} />
                    </div>
                </div>
            </div>

            <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                <PettColumn field="TAX_CODIGO" header="Código" sortable></PettColumn>
                <PettColumn field="TAX_DESCRICAO" header="Descrição" sortable></PettColumn>
                <PettColumn field="TAX_TIPO" header="Tipo" body={bodyTipo} sortable align="center" alignHeader="center"></PettColumn>
                <PettColumn field="TAX_VALOR" header="Valor" body={bodyValor} sortable align="right" alignHeader="right"></PettColumn>
            </PettGrid>
            <Sentinela onIntersect={() => carregarMais('listar', pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />

            <PettModal.Footer>
                <PettButton caption="Cancelar" icone="cancel" click={cancelar} />
            </PettModal.Footer>
        </PettModal>
    </>
}

export default TaxasLoc;