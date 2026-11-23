import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';

function Aliquotas() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/aliquotas', 'Aliquotas listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ ALI_ESTADO: '', ALI_NOMEESTADO: '' });
    const vazio = {
        ALI_ALIQFCP: '',
        ALI_ALIQFCPST: '',
        ALI_ALIQICMSADICST: '',
        ALI_ALIQICMSINTER: '',
        ALI_ALIQICMSINTERPART: '',
        ALI_ALIQICMSRED: '',
        ALI_ALIQICMSST: '',
        ALI_ALIQUOTA: '',
        ALI_ESTADO: '',
        ALI_IEST: '',
        ALI_NOMEESTADO: '',
    };

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        // excluir,
        //inserir,
        operacao, 
        registro: aliquota,
        salvar,
        setOperacao,
        setRegistro: setAliquota,
        visualizar,
    } = useTabela('firenet/aliquotas', vazio, 'ALI_ESTADO', 'ALI_NOMEESTADO');

    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    // const hExcluir   = () => excluir(agrupador, () => listar(pesquisa, true));
    const hEditar    = () => editar(aliquota);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    // function reset() {
    //     const pesquisaVazia = { ALI_ESTADO: '', ALI_NOMEESTADO: '' };
    //     setPesquisa(pesquisaVazia);
    //     listar(pesquisaVazia, true);
    // };

    const onRowSelect = (event) => {
        visualizar(event.ALI_ESTADO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Aliquotas" linkBack="/">
            <PettButton caption="Listagem" icone="search"    click={hListagem}      condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"   icone="pencil"    click={hEditar}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"   icone="checkmark" click={hSalvar}        condicional={operacao==="inserir" || operacao==="atualizar"}/>              
            <PettButton caption="Cancelar" icone="cancel"    click={cancelarEdicao} condicional={operacao==="atualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ESTADO" name="ALI_ESTADO" value={aliquota.ALI_ESTADO} readOnly disabled/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-6" label="NOME" name="ALI_NOMEESTADO" value={aliquota.ALI_NOMEESTADO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-12" label="INSC. ESTADUAL ST" name="ALI_IEST" value={aliquota.ALI_IEST} set={setAliquota} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                    <div className="row g-1 mb-1">
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ICMS" name="ALI_ALIQUOTA" value={aliquota.ALI_ALIQUOTA} set={setAliquota} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ICMS INTERESTADUAL" name="ALI_ALIQICMSINTER" value={aliquota.ALI_ALIQICMSINTER} set={setAliquota} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ICMS ST" name="ALI_ALIQICMSST" value={aliquota.ALI_ALIQICMSST} set={setAliquota} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ICMS RED" name="ALI_ALIQICMSRED" value={aliquota.ALI_ALIQICMSRED} set={setAliquota} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                    <div className="row g-1">
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="MARGEM ADIC. ST." name="ALI_ALIQICMSADICST" value={aliquota.ALI_ALIQICMSADICST} set={setAliquota} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="FCP" name="ALI_ALIQFCP" value={aliquota.ALI_ALIQFCP} set={setAliquota} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="FCP ST" name="ALI_ALIQFCPST" value={aliquota.ALI_ALIQFCPST} set={setAliquota} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="PARTILHA INTERESTADUAL" name="ALI_ALIQICMSINTERPART" value={aliquota.ALI_ALIQICMSINTERPART} set={setAliquota} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <PettGrid className="my-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="ALI_ESTADO" header="Estado" sortable ></PettColumn>
                    <PettColumn field="ALI_NOMEESTADO" header="NOME" sortable ></PettColumn>
                    <PettColumn field="ALI_IEST" header="Insc. Estadual ST" sortable ></PettColumn>
                    <PettColumn field="ALI_ALIQUOTA" header="ICMS" align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="ALI_ALIQICMSINTER" header="Interestadual" align="right" alignHeader="right" ></PettColumn>
                    <PettColumn field="ALI_ALIQICMSST" header="ICMS ST" align="right" alignHeader="right" ></PettColumn>
                    <PettColumn field="ALI_ALIQICMSRED" header="ICMS Red." align="right" alignHeader="right" ></PettColumn>
                    <PettColumn field="ALI_ALIQICMSADICST" header="Margem Adic. ST." align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="ALI_ALIQFCP" header="FCP" align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="ALI_ALIQFCPST" header="FCP ST" align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="ALI_ALIQICMSINTERPART" header="Partilha Interestadual" align="right" alignHeader="right"></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>           
        <Rodape />
    </>
}

export default Aliquotas;