import React, { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';

import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor.jsx';
import BarraOpcoes from '../../Componentes/BarraOpcoes.jsx';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import ContasLoc from '../../Componentes/Localizadores/ContasLoc';
import DespesasLoc from '../../Componentes/Localizadores/DespesasLoc';
import FornecedoresLoc from '../../Componentes/Localizadores/FornecedoresLoc';
import Loading from '../../Componentes/Loading';
import PagarBaixar from './PagarBaixar';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { selectTipoDocto } from '../../Combox';
import { primeiroDiaMesPassado, ultimoDiaMesSeguinte, formatarDataFb, formatarDataStr, hoje, formatarMoeda, tratarCatch, formatarDataStr2 } from '../../Funcoes';
import { useLocalizar, CONTAS, DESPESAS, FORNECEDORES } from '../../Hooks/useLocalizar';

const mapaContas       = { PAG_CONTA: 'CON_CODIGO', CON_NOME: 'CON_NOME' };
const mapaDespesas     = { PAG_DESPESA: 'DES_CODIGO', DES_DESCRICAO: 'DES_DESCRICAO' };
const mapaFornecedores = { PAG_FORNECEDOR: 'FOR_CODIGO', FOR_NOME: 'FOR_NOME' };

function Pagar() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/pagar', 'Pagar listar', logout);
    const [ pesquisa, setPesquisa ] = useState({
        data: 'VENCIMENTO',
        datainicial: formatarDataFb(primeiroDiaMesPassado()),
        datafinal: formatarDataFb(ultimoDiaMesSeguinte()),
        PAG_FORNECEDOR: '',
        PAG_CODIGO: '',
        PAG_STATUS: 'TODAS',
        FOR_NOME: ''
    });
    const formatarDadosFB = (dados) => {
        return {
            ...dados,
            PAG_DTEMISSAO: formatarDataFb(pagar.PAG_DTEMISSAO) || '',
            PAG_DTJUROSAPOS: formatarDataFb(pagar.PAG_DTJUROSAPOS) || '',
            PAG_DTVENCIMENTO: formatarDataFb(pagar.PAG_DTVENCIMENTO) || '',
        };
    };

    const vazio = {
        PAG_BAIXADOPOR: '',
        PAG_FORNECEDOR: '',
        PAG_CODIGO: '0',
        PAG_CONTA: '',
        PAG_DESCPORC: '',
        PAG_DESCRICAO: '',
        PAG_DESCVALOR: '',
        PAG_DESPESA: '',
        PAG_DIASATRASO: '',
        PAG_DIASPRAZO: '',
        PAG_DTATUALIZACAO: hoje,
        PAG_DTCADASTRO: hoje,
        PAG_DTEMISSAO: '',
        PAG_DTJUROSAPOS: '',
        PAG_DTPAGAMENTO: '',
        PAG_DTVENCIMENTO: '',
        PAG_JUROSPAGO: '',
        PAG_MULTAPAGO: '',
        PAG_NOVOCODIGO: '',
        PAG_NUMDOCTO: '',
        PAG_OBSERVACOES: '',
        PAG_PARCELANUM: '',
        PAG_PARCELAQTDE: '',
        PAG_PORCJUROS: '',
        PAG_STATUS: 'A',
        PAG_TIPOBAIXA: '',
        PAG_TIPODOCTO: 'BOLETO',
        PAG_USUARIO: '',
        PAG_VALOR: '',
        PAG_VALORJUROS: '0',
        PAG_VALORMULTA: '0',
        PAG_VALORORIGINAL: '0',
        PAG_VALORPAGO: '',
        CON_NOME: '',
        DES_DESCRICAO: '',
        FOR_NOME: '',
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
        registro: pagar,
        salvar,
        setOperacao,
        setRegistro: setPagar,
        visualizar,
    } = useTabela('firenet/pagar', vazio, 'PAG_CODIGO', 'PAG_DESCRICAO', formatarDadosFB);
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(pagar, () => listar(pesquisa, true));
    const hEditar    = () => editar(pagar);
    // const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { 
            data: 'VENCIMENTO',
            datainicial: formatarDataFb(primeiroDiaMesPassado()),
            datafinal: formatarDataFb(ultimoDiaMesSeguinte()),
            PAG_FORNECEDOR: '',
            PAG_CODIGO: '',
            PAG_STATUS: 'TODAS',
            FOR_NOME: ''
        };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const [ showFornecedoresLoc, setShowFornecedoresLoc ] = useState(false);
    const [ showContasLoc, setShowContasLoc ] = useState(false);
    const [ showDespesasLoc, setShowDespesasLoc ] = useState(false);
    const [ showPagarBaixar, setShowPagarBaixar ] = useState(false);
    
    const selectStatusConta = [
        { value: "TODAS", label: "TODAS" },
        { value: "A", label: "ABERTAS" }, 
        { value: "B", label: "BAIXADAS" },
        { value: "C", label: "CANCELADAS" }
    ];

    const selectData = [
        { value: "EMISSAO", label: "EMISSÃO" },
        { value: "VENCIMENTO", label: "VENCIMENTO" }, 
        { value: "PAGAMENTO", label: "PAGAMENTO" },
    ];

    function pagarBaixarClose(response) {
        setShowPagarBaixar(false);
        if (response.data) {
            setPagar(response.data.msg);
        }
    }

    async function estornar(item) {
        const confirmou = await PettMensagem.confirmar('Reabrir Conta a Pagar?','Tem certeza que deseja estornar a conta de '+item.nome+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','estornar');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('PAG_CODIGO',item.codigo);
            try {
                const response = await Api.post('firenet/pagar',formData);
                if (response.data.erro==='S') throw response
                PettMensagem.sucesso('Yessss!','Conta estornada com sucesso.');
                setPagar(response.data.msg);
            } catch (error) {
                tratarCatch('Pagar estornar',error,logout);
            }
        }
    }

    async function cancelar(item) { 
        const confirmou = await PettMensagem.confirmar('Confirma Cancelamento?','Tem certeza que deseja cancelar a conta de '+item.nome+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','cancelar');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('PAG_CODIGO',item.codigo || '');
            try {
                const response = await Api.post('firenet/pagar',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!','Conta cancelada com suceeso.');
                setPagar(response.data.msg);
            } catch (error) {
                tratarCatch('Pagar cancelar',error,logout);
            }
        }
    }

    const onRowSelect = (event) => {
        visualizar(event.PAG_CODIGO);
    };

    const statusBody = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.PAG_STATUS==='A'}>
                    <span className="badge bg-primary">ABERTO</span>
                </PettIf>
                <PettIf condicional={rowData.PAG_STATUS==='B'}>
                    <span className="badge bg-success">BAIXADO</span>
                </PettIf>
                <PettIf condicional={rowData.PAG_STATUS==='C'}>
                    <span className="badge bg-danger">CANCELADO</span>
                </PettIf>                
            </React.Fragment>
        );
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Contas a Pagar" linkBack="/">
            <PettButton caption="Localizar" icone="search"      click={hPesquisar}                       condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"        click={inserir}                          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"       click={hExcluir}                         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"      click={hEditar}                          condicional={operacao==="visualizar" && pagar.PAG_STATUS==="A"}/>
            <PettButton caption="Baixar"    icone="flash_green" click={ () => setShowPagarBaixar(true) } condicional={operacao==="visualizar" && pagar.PAG_STATUS==="A"}/>
            <PettButton caption="Cancelar"  icone="flash_red"   click={ () => cancelar({codigo: pagar.PAG_CODIGO, nome: pagar.FOR_NOME}) } condicional={operacao==="visualizar" && pagar.PAG_STATUS==="A"}/>
            <PettButton caption="Estornar"  icone="undo"        click={ () => estornar({codigo: pagar.PAG_CODIGO, nome: pagar.FOR_NOME}) } condicional={operacao==="visualizar" && pagar.PAG_STATUS==="B"}/>
            <PettButton caption="Salvar"    icone="checkmark"   click={hSalvar}                           condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"      click={cancelarInsercao}                  condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"      click={cancelarEdicao}                    condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={pagar.PAG_USUARIO} data={pagar.PAG_DTATUALIZACAO} hora={pagar.PAG_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="PAG_CODIGO" value={pagar.PAG_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="PAG_DTCADASTRO" value={formatarDataStr(pagar.PAG_DTCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA ATUALIZAÇÃO" name="PAG_DTATUALIZACAO" value={formatarDataStr(pagar.PAG_DTATUALIZACAO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="STATUS" name="PAG_STATUS" value={pagar.PAG_STATUS} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="TIPO BAIXA" name="PAG_TIPOBAIXA" value={pagar.PAG_TIPOBAIXA} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="NOVO CÓDIGO" name="PAG_NOVOCODIGO" value={pagar.PAG_NOVOCODIGO} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="TIPO DOCTO" name="PAG_TIPODOCTO" value={pagar.PAG_TIPODOCTO} set={setPagar} options={selectTipoDocto} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="NÚM DOCTO." name="PAG_NUMDOCTO" value={pagar.PAG_NUMDOCTO} set={setPagar} length={20} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-lg-2 col-md-3 col-sm-6" label="DT. EMISSÃO" name="PAG_DTEMISSAO" value={pagar.PAG_DTEMISSAO} set={setPagar} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PARCELA NUM." name="PAG_PARCELANUM" value={pagar.PAG_PARCELANUM} set={setPagar} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PARCELA QTDE." name="PAG_PARCELAQTDE" value={pagar.PAG_PARCELAQTDE} set={setPagar} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                    </div>
                    <div className="row mb-3 g-1">
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="FORNECEDOR" name="PAG_FORNECEDOR" value={pagar.PAG_FORNECEDOR} set={setPagar} onClick={() => setShowFornecedoresLoc(true)} onBlur={(e) => localizar(FORNECEDORES, e.target.value, setPagar, mapaFornecedores)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME FORNECEDOR" name="FOR_NOME" value={pagar.FOR_NOME} readOnly disabled/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="DESPESA" name="PAG_DESPESA" value={pagar.PAG_DESPESA} set={setPagar} onClick={() => setShowDespesasLoc(true)} onBlur={(e) => localizar(DESPESAS, e.target.value, setPagar, mapaDespesas)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO DESPESA" name="DES_DESCRICAO" value={pagar.DES_DESCRICAO} readOnly disabled/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CONTA" name="PAG_CONTA" value={pagar.PAG_CONTA} set={setPagar} onClick={() => setShowContasLoc(true)} onBlur={(e) => localizar(CONTAS, e.target.value, setPagar, mapaContas)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME CONTA" name="CON_NOME" value={pagar.CON_NOME} readOnly disabled/>
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="PAG_DESCRICAO" value={pagar.PAG_DESCRICAO} set={setPagar} length={120} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="OBSERVAÇÕES" name="PAG_OBSERVACOES" value={pagar.PAG_OBSERVACOES} set={setPagar} readOnly={disableFields} disabled={disableFields} rows={10}/>
                    </div>

                    <strong>Dados do Vencimento</strong>
                    <div className="row mb-3 g-1">
                        <PettFieldDate size="col-lg-2 col-md-3 col-sm-6" label="DT. VENCIMENTO" name="PAG_DTVENCIMENTO" value={pagar.PAG_DTVENCIMENTO} set={setPagar} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-lg-2 col-md-3 col-sm-6" label="DT. JUROS APÓS" name="PAG_DTJUROSAPOS" value={pagar.PAG_DTJUROSAPOS} set={setPagar} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="% JUROS" name="PAG_PORCJUROS" value={pagar.PAG_PORCJUROS} set={setPagar} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR JUROS" name="PAG_VALORJUROS" value={pagar.PAG_VALORJUROS} readOnly disabled />
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR MULTA" name="PAG_VALORMULTA" value={pagar.PAG_VALORMULTA} set={setPagar} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR" name="PAG_VALOR" value={pagar.PAG_VALOR} set={setPagar} readOnly={disableFields} disabled={disableFields} />
                    </div>

                    <strong>Dados do Pagamento</strong>
                    <div className="row mb-5 g-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DT. PAGAMENTO" name="PAG_DTPAGAMENTO" value={formatarDataStr(pagar.PAG_DTPAGAMENTO)} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="JUROS PAGO" name="PAG_JUROSPAGO" value={pagar.PAG_JUROSPAGO} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="MULTA PAGO" name="PAG_MULTAPAGO" value={pagar.PAG_MULTAPAGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="% DESCONTO" name="PAG_DESCPORC" value={pagar.PAG_DESCPORC} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR DESCONTO" name="PAG_DESCVALOR" value={pagar.PAG_DESCVALOR} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR PAGO" name="PAG_VALORPAGO" value={pagar.PAG_VALORPAGO} readOnly disabled/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CÓDIGO" name="PAG_CODIGO" value={pesquisa.PAG_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldDrop size="col-lg-2 col-md-2 col-sm-6" label="STATUS" name="PAG_STATUS" value={pesquisa.PAG_STATUS} set={setPesquisa} options={selectStatusConta}/>
                    <PettFieldDrop size="col-lg-2 col-md-2 col-sm-6" label="DATA" name="data" value={pesquisa.data} set={setPesquisa} options={selectData}/>
                    <PettFieldDate size="col-lg-2 col-md-2 col-sm-6" label="DATA INICIAL" name="datainicial" value={pesquisa.datainicial} set={setPesquisa}/>
                    <PettFieldDate size="col-lg-2 col-md-2 col-sm-6" label="DATA FINAL" name="datafinal" value={pesquisa.datafinal} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CÓD. FORNECEDOR" name="PAG_FORNECEDOR" value={pesquisa.PAG_FORNECEDOR} set={setPesquisa} />
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="FORNECEDOR" name="FOR_NOME" value={pesquisa.FOR_NOME} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="PAG_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="PAG_FORNECEDOR" header="Fornecedor" sortable ></PettColumn>
                    <PettColumn field="FOR_NOME" header="Nome Fornecedor" sortable ></PettColumn>
                    <PettColumn field="PAG_STATUS" header="Status" body={statusBody} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="PAG_PARCELANUM" header="Parcela" align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="PAG_PARCELAQTDE" header="Qtde" align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="PAG_DTEMISSAO" header="Emissão" body={(rowData) => formatarDataStr2(rowData,'PAG_DTEMISSAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="PAG_DTVENCIMENTO" header="Vencimento" body={(rowData) => formatarDataStr2(rowData,'PAG_DTVENCIMENTO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="PAG_DTPAGAMENTO" header="Pagamento" body={(rowData) => formatarDataStr2(rowData,'PAG_DTPAGAMENTO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="PAG_VALOR" header="Valor" body={(rowData) => formatarMoeda(rowData,'PAG_VALOR')} sortable align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="PAG_VALORPAGO" header="Valor Pago" body={(rowData) => formatarMoeda(rowData,'PAG_VALORPAGO')} sortable align="right" alignHeader="right"></PettColumn>
                    {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
        <FornecedoresLoc showModal={showFornecedoresLoc} onCloseModal={(data) => { selecionar(data, setPagar, mapaFornecedores); setShowFornecedoresLoc(false); }}/>
        <ContasLoc showModal={showContasLoc} onCloseModal={(data) => { selecionar(data, setPagar, mapaContas); setShowContasLoc(false); }}/>
        <DespesasLoc showModal={showDespesasLoc} onCloseModal={(data) => { selecionar(data, setPagar, mapaDespesas); setShowDespesasLoc(false); }}/>
        <PagarBaixar showModal={showPagarBaixar} pagar={pagar} onCloseModal={pagarBaixarClose}/>
    </>
}

export default Pagar;