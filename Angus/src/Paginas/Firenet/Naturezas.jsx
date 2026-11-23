import React, { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
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
import { selectSimNao } from '../../Combox';
import { formatarSimNao, formatarDataStr, formatarDataStr2 } from '../../Funcoes';

function Naturezas() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/naturezas', 'Naturezas listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ NAT_CODIGO: '', NAT_DESCRICAO: '' });
    const vazio = {
        NAT_CALCULACOMISSAO: 'N',
        NAT_CALCULACREDITOSN: 'N',
        NAT_CODIGO: '',
        NAT_DESCRICAO: '',
        NAT_DESTACARIMPOSTOS: 'N',
        NAT_ENTRADASAIDA: 'S',
        NAT_INFORMADIFAL: 'N',
        NAT_MOVIMENTAESTOQUE: 'S',
        NAT_MOVIMENTAFINANCEIRO: 'S',
        NAT_OBSERVACOES: '',
        NAT_DTCADASTRO: '',
    };

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: natureza,
        salvar,
        setOperacao,
        setRegistro: setNatureza,
        visualizar,
    } = useTabela('firenet/naturezas', vazio, 'NAT_CODIGO', 'NAT_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(natureza, () => listar(pesquisa, true));
    const hEditar    = () => editar(natureza);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { NAT_CODIGO: '', NAT_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };
    
    const selectEntradaSaida = [
        { value: "E", label: "ENTRADA" },
        { value: "S", label: "SAÍDA" }
    ];

    const onRowSelect = (event) => {
        visualizar(event.NAT_CODIGO);
    };

    const bodyEntradaSaida = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.NAT_ENTRADASAIDA==='E'}>
                    <span className="badge bg-warning text-dark">ENTRADA</span>
                </PettIf>
                <PettIf condicional={rowData.NAT_ENTRADASAIDA==='S'}>
                    <span className="badge bg-primary">SAÍDA</span>
                </PettIf>
            </React.Fragment>
        );
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Naturezas de Operação" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={natureza.NAT_USUARIO} data={natureza.NAT_DTATUALIZACAO} hora={natureza.NAT_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettIf condicional={operacao==='inserir'}>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="NAT_CODIGO" value={natureza.NAT_CODIGO} set={setNatureza} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        </PettIf>
                        <PettIf condicional={operacao==='atualizar' || operacao==="visualizar"}>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="NAT_CODIGO" value={natureza.NAT_CODIGO} readOnly disabled keyfilter="int"/>
                        </PettIf>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="NAT_DTCADASTRO" value={formatarDataStr(natureza.NAT_DTCADASTRO)} readOnly disabled/>
                    </div>
                    <div className="row mb-3 g-1">
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="NAT_DESCRICAO" value={natureza.NAT_DESCRICAO} set={setNatureza} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="ENTRADA/SAÍDA" name="NAT_ENTRADASAIDA" value={natureza.NAT_ENTRADASAIDA} set={setNatureza} readOnly={disableFields} disabled={disableFields} options={selectEntradaSaida}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="MOVIMENTA ESTOQUE" name="NAT_MOVIMENTAESTOQUE" value={natureza.NAT_MOVIMENTAESTOQUE} set={setNatureza} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="MOVIMENTA FINANCEIRO" name="NAT_MOVIMENTAFINANCEIRO" value={natureza.NAT_MOVIMENTAFINANCEIRO} set={setNatureza} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="CALCULA COMISSÃO" name="NAT_CALCULACOMISSAO" value={natureza.NAT_CALCULACOMISSAO} set={setNatureza} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="CALCULA CRÉDITO SN" name="NAT_CALCULACREDITOSN" value={natureza.NAT_CALCULACREDITOSN} set={setNatureza} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="DESTACAR IMPOSTOS" name="NAT_DESTACARIMPOSTOS" value={natureza.NAT_DESTACARIMPOSTOS} set={setNatureza} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="INFORMA DIFAL" name="NAT_INFORMADIFAL" value={natureza.NAT_INFORMADIFAL} set={setNatureza} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="OBSERVAÇÕES" name="NAT_OBSERVACOES" value={natureza.NAT_OBSERVACOES} set={setNatureza} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="NAT_CODIGO" value={pesquisa.NAT_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO" name="NAT_DESCRICAO" value={pesquisa.NAT_DESCRICAO} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="NAT_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="NAT_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="NAT_ENTRADASAIDA" body={bodyEntradaSaida} header="Entrada/Saída" sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="NAT_CALCULACOMISSAO" header="Calcula Comissão" body={(rowData) => formatarSimNao(rowData,'NAT_CALCULACOMISSAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="NAT_CALCULACREDITOSN" header="Calcula Crédito SN" body={(rowData) => formatarSimNao(rowData,'NAT_CALCULACREDITOSN')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="NAT_DESTACARIMPOSTOS" header="Dest. Impostos" body={(rowData) => formatarSimNao(rowData,'NAT_DESTACARIMPOSTOS')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="NAT_MOVIMENTAESTOQUE" header="Mov. Estoque" body={(rowData) => formatarSimNao(rowData,'NAT_MOVIMENTAESTOQUE')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="NAT_MOVIMENTAFINANCEIRO" header="Mov. Financeiro" body={(rowData) => formatarSimNao(rowData,'NAT_MOVIMENTAFINANCEIRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="NAT_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'NAT_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="NAT_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'NAT_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="NAT_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
    </>
}

export default Naturezas;