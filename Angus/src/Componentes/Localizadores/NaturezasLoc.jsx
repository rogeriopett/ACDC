import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import Sentinela from '../Sentinela';

function NaturezasLoc(props) {
    const { logout } = useContext(AuthContext);
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/naturezas', 'NaturezasLoc listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ NAT_CODIGO: '', NAT_DESCRICAO: '' });
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hPesquisar = () => { listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { NAT_CODIGO: '', NAT_DESCRICAO: '' };
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

    const bodyEntradaSaida = (rowData) => {
        return <>
            <PettIf condicional={rowData.NAT_ENTRADASAIDA==='S'}>
                <span className="badge bg-success">SAIDA</span>
            </PettIf>
            <PettIf condicional={rowData.NAT_ENTRADASAIDA==='E'}>
                <span className="badge bg-primary">ENTRADA</span>
            </PettIf>
        </>
    }

    const bodyMovEstoque = (rowData) => {
        return <>
            <PettIf condicional={rowData.NAT_MOVIMENTAESTOQUE==='S'}>
                <span className="badge bg-success">SIM</span>
            </PettIf>
            <PettIf condicional={rowData.NAT_MOVIMENTAESTOQUE==='N'}>
                <span className="badge bg-danger">NÃO</span>
            </PettIf>
        </>
    }

    const bodyMovFinanceiro = (rowData) => {
        return <>
            <PettIf condicional={rowData.NAT_MOVIMENTAFINANCEIRO==='S'}>
                <span className="badge bg-success">SIM</span>
            </PettIf>
            <PettIf condicional={rowData.NAT_MOVIMENTAFINANCEIRO==='N'}>
                <span className="badge bg-danger">NÃO</span>
            </PettIf>
        </>
    }

    const bodyDescricao = (rowData) => {
        return <>
            <span className="text-wrap">{rowData.NAT_DESCRICAO}</span>
        </>
    }

    return <>
        <PettModal show={props.showModal} size="lg" position="top" title="Localizar Naturezas de Operação..." onHide={cancelar}>
            <div className="row g-1">
                <PettFieldText size="col-2 mb-1" label="CÓDIGO" name="NAT_CODIGO" value={pesquisa.NAT_CODIGO} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)} keyfilter="int"/>
                <PettFieldText size="col-10 mb-1" label="DESCRIÇÃO" name="NAT_DESCRICAO" value={pesquisa.NAT_DESCRICAO} set={setPesquisa} onKeyDown={(e) => localizarKeyDown(e)}/>
                <div className="col-12">
                    <div className="box shadow-sm">
                        <PettButton caption="Filtrar" icone="search" click={hPesquisar} />
                        <PettButton caption="Limpar" icone="reset" click={reset} />
                    </div>
                </div>
            </div>

            <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                <PettColumn field="NAT_CODIGO" header="Código" sortable></PettColumn>
                <PettColumn field="NAT_DESCRICAO" header="Descrição" body={bodyDescricao} sortable></PettColumn>
                <PettColumn field="NAT_ENTRADASAIDA" header="E/S" body={bodyEntradaSaida} align="center" alignHeader="center" sortable></PettColumn>
                <PettColumn field="NAT_MOVIMENTAESTOQUE" header="Mov.Est." body={bodyMovEstoque} align="center" alignHeader="center" sortable></PettColumn>
                <PettColumn field="NAT_MOVIMENTAFINANCEIRO" header="Mov.Fin." body={bodyMovFinanceiro} align="center" alignHeader="center" sortable></PettColumn>
            </PettGrid>
            <Sentinela onIntersect={() => carregarMais('listar', pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />

            <PettModal.Footer>
                <PettButton caption="Cancelar" icone="cancel" click={cancelar} />
            </PettModal.Footer>
        </PettModal>
    </>
}

export default NaturezasLoc;