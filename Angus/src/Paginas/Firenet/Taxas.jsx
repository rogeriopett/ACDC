import React, { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { selectAtivoInativo } from '../../Combox';
import { formatarAtivoInativo, formatarDataStr, formatarDataStr2 } from '../../Funcoes';

function Taxas() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/taxas', 'Taxas listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ TAX_CODIGO: '', TAX_DESCRICAO: '' });
    const vazio = { TAX_CODIGO: '', TAX_DESCRICAO: '', TAX_DTCADASTRO: '', TAX_STATUS: 'A', TAX_TIPO: 'V', TAX_VALOR: '0' };
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: taxa,
        salvar,
        setOperacao,
        setRegistro: setTaxa,
        visualizar,
    } = useTabela('firenet/taxas', vazio, 'TAX_CODIGO', 'TAX_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(taxa, () => listar(pesquisa, true));
    const hEditar    = () => editar(taxa);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { TAX_CODIGO: '', TAX_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const selectTipo = [
        { value: "V", label: "VALOR" },
        { value: "P", label: "PERCENTUAL" }
    ];

    const onRowSelect = (event) => {
        visualizar(event.TAX_CODIGO);
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
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Taxas" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={taxa.TAX_USUARIO} data={taxa.TAX_DTATUALIZACAO} hora={taxa.TAX_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="TAX_CODIGO" value={taxa.TAX_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="TAX_DTCADASTRO" value={formatarDataStr(taxa.TAX_DTCADASTRO)} readOnly disabled/>
                    </div>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="DESCRIÇÃO" name="TAX_DESCRICAO" value={taxa.TAX_DESCRICAO} set={setTaxa} readOnly={disableFields} disabled={disableFields} />
                    </div>
                    <div className="row g-1 mb-3">
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-4" label="TIPO" name="TAX_TIPO" value={taxa.TAX_TIPO} set={setTaxa} readOnly={disableFields} disabled={disableFields} options={selectTipo}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-4" label="STATUS" name="TAX_STATUS" value={taxa.TAX_STATUS} set={setTaxa} readOnly={disableFields} disabled={disableFields} options={selectAtivoInativo}/>
                        <PettIf condicional={taxa.TAX_TIPO==='V'}>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR" name="TAX_VALOR" value={taxa.TAX_VALOR} set={setTaxa} readOnly={disableFields} disabled={disableFields}/>
                        </PettIf>
                        <PettIf condicional={taxa.TAX_TIPO==='P'}>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="PORCENTAGEM" name="TAX_VALOR" value={taxa.TAX_VALOR} set={setTaxa} readOnly={disableFields} disabled={disableFields}/>
                        </PettIf>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="TAX_CODIGO" value={pesquisa.TAX_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO" name="TAX_DESCRICAO" value={pesquisa.TAX_DESCRICAO} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>                
                    <PettColumn field="TAX_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="TAX_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="TAX_VALOR" header="Valor" body={bodyValor} sortable align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="TAX_TIPO" header="Tipo" body={bodyTipo} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="TAX_STATUS" header="Status" body={(rowData) => formatarAtivoInativo(rowData,'TAX_STATUS')} sortable align="center" alignHeader="center" ></PettColumn>
                    <PettColumn field="TAX_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'TAX_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="TAX_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'TAX_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="TAX_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
    </>
}

export default Taxas;