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
import { PettModal } from 'pett-componentes';

import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ClientesLoc from '../../Componentes/Localizadores/ClientesLoc';
import ColunaCentral from '../../Componentes/ColunaCentral';
import ContasLoc from '../../Componentes/Localizadores/ContasLoc';
import Loading from '../../Componentes/Loading';
import ReceberBaixar from './ReceberBaixar';
import ReceitasLoc from '../../Componentes/Localizadores/ReceitasLoc';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import VendedoresLoc from '../../Componentes/Localizadores/VendedoresLoc';
import { selectTipoDocto } from '../../Combox';
import { primeiroDiaMesPassado, ultimoDiaMesSeguinte, formatarData, formatarDataFb, formatarDataStr, hoje, formatarMoeda, formatarDataStr2, tratarCatch } from '../../Funcoes';
import { useLocalizar, CLIENTES, CONTAS, RECEITAS, VENDEDORES } from '../../Hooks/useLocalizar';

const mapaClientes   = { REE_CLIENTE: 'CLI_CODIGO', CLI_NOME: 'CLI_NOME' };
const mapaContas     = { REE_CONTA: 'CON_CODIGO', CON_NOME: 'CON_NOME' };
const mapaReceitas   = { REE_RECEITA: 'REC_CODIGO', REC_DESCRICAO: 'REC_DESCRICAO' };
const mapaVendedores = { REE_VENDEDOR: 'VEN_CODIGO', VEN_NOME: 'VEN_NOME' };

function Receber() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/receber', 'Receber listar', logout);
    const [ pesquisa, setPesquisa ] = useState({
        data: 'VENCIMENTO',
        datainicial: formatarDataFb(primeiroDiaMesPassado()),
        datafinal: formatarDataFb(ultimoDiaMesSeguinte()),
        REE_CLIENTE: '',
        REE_CODIGO: '',
        REE_STATUS: 'TODAS',
        CLI_NOME: ''
    });
    const vazio = {
        REE_ACRESCIMOPORC: '',
        REE_ACRESCIMOPORCPAGO: '',
        REE_ACRESCIMOVALOR: '',
        REE_ACRESCIMOVALORPAGO: '',
        REE_BAIXADOPOR: '',
        REE_BOLETO: '',
        REE_CLIENTE: '',
        REE_CODIGO: '0',
        REE_CONTA: '',
        REE_DESCPORC: '',
        REE_DESCPORCVENCIMENTO: '',
        REE_DESCRICAO: '',
        REE_DESCVALOR: '',
        REE_DIASATRASO: '',
        REE_DIASPRAZO: '',
        REE_DTATUALIZACAO: hoje,
        REE_DTCADASTRO: hoje,
        REE_DTEMISSAO: hoje,
        REE_DTJUROSAPOS: '',
        REE_DTPAGAMENTO: '',
        REE_DTVENCIMENTO: '',
        REE_JUROSPAGO: '',
        REE_MULTAPAGO: '',
        REE_NOVOCODIGO: '',
        REE_NUMDOCTO: '',
        REE_OBSERVACOES: '',
        REE_PARCELANUM: '',
        REE_PARCELAQTDE: '',
        REE_PORCJUROS: '',
        REE_RECEITA: '',
        REE_STATUS: 'A',
        REE_TIPOBAIXA: '',
        REE_TIPODOCTO: 'BOLETO',
        REE_USUARIO: '',
        REE_VALOR: '',
        REE_VALORACESSORIAS: '0',
        REE_VALORJUROS: '0',
        REE_VALORMULTA: '0',
        REE_VALORORIGINAL: '0',
        REE_VALORPAGO: '',
        REE_VALORSEMDESCONTO: '',
        REE_VENDA: '',
        REE_VENDEDOR: '',
        CLI_NOME: '',
        CON_NOME: '',
        REC_DESCRICAO: '',
        VEN_NOME: ''
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
        registro: receber,
        salvar,
        setOperacao,
        setRegistro: setReceber,
        visualizar,
    } = useTabela('firenet/receber', vazio, 'REE_CODIGO', 'CLI_NOME');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(receber, () => listar(pesquisa, true));
    const hEditar    = () => editar(receber);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = {
            data: 'VENCIMENTO',
            datainicial: formatarDataFb(primeiroDiaMesPassado()),
            datafinal: formatarDataFb(ultimoDiaMesSeguinte()),
            REE_CLIENTE: '',
            REE_CODIGO: '',
            REE_STATUS: 'TODAS',
            CLI_NOME: ''
         };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const [ showClientesLoc, setShowClientesLoc ] = useState(false);
    const [ showContasLoc, setShowContasLoc ] = useState(false);
    const [ showReceitasLoc, setShowReceitasLoc ] = useState(false);
    const [ showVendedoresLoc, setShowVendedoresLoc ] = useState(false);
    const [ showReceberBaixar, setShowReceberBaixar ] = useState(false);
    const [ multiplicar, setMultiplicar ] = useState({ quantidade: '1' });
    const [ listagemMultiplicacao, setListagemMultiplicacao ] = useState([]);
    const [ showModalMultiplicar, setShowModalMultiplicar ] = useState(false);
   
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

    function receberBaixarClose(response) {
        setShowReceberBaixar(false);
        if (response.data) {
            setReceber(response.data.msg);
        }
    }

    async function estornar(item) {
        const confirmou = await PettMensagem.confirmar('Reabrir Conta a Receber?','Tem certeza que deseja estornar a conta de '+item.nome+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','estornar');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('REE_CODIGO',item.codigo);
            try {
                const response = await Api.post('firenet/receber',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!','Conta estornada com sucesso.');
                setReceber(response.data.msg);
            } catch (error) {
                tratarCatch('Receber estornar',error,logout);
            }
        }
    }

    async function cancelar(item) { 
        const confirmou = await PettMensagem.confirmar('Confirma Cancelamento?','Tem certeza que deseja cancelar a conta de '+item.nome+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','cancelar');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('REE_CODIGO',item.codigo || '');
            try {
                const response = await Api.post('firenet/receber',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!','Conta cancelada com suceeso.');
                setReceber(response.data.msg);
            } catch (error) {
                tratarCatch('Receber cancelar',error,logout);
            }
        }
    }

    const onRowSelect = (event) => {
        visualizar(event.REE_CODIGO);
    };

    const statusBody = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.REE_STATUS==='A'}>
                    <span className="badge bg-primary">ABERTO</span>
                </PettIf>
                <PettIf condicional={rowData.REE_STATUS==='B'}>
                    <span className="badge bg-success">BAIXADO</span>
                </PettIf>
                <PettIf condicional={rowData.REE_STATUS==='C'}>
                    <span className="badge bg-danger">CANCELADO</span>
                </PettIf>                
            </React.Fragment>
        );
    }

    function simular() {
        const resultados = [];
        
        // Converter as strings de data para objetos Date
        let vencimento = formatarDataStr(receber.REE_DTVENCIMENTO); // "dd/mm/yyyy"
        let partesVencimento = vencimento.split('/'); // Separa a data em [dia, mes, ano]
        let REE_DTVENCIMENTO_OBJ = new Date(partesVencimento[2], partesVencimento[1] - 1, partesVencimento[0]); // "yyyy/mm/dd"

        for (let i = 0; i < multiplicar.quantidade; i++) {
            
            const novoVencimento = new Date(
                REE_DTVENCIMENTO_OBJ.getFullYear(),
                REE_DTVENCIMENTO_OBJ.getMonth() + (i + 1),
                REE_DTVENCIMENTO_OBJ.getDate()
            );
            // REE_DTVENCIMENTO_OBJ.setMonth(REE_DTVENCIMENTO_OBJ.getMonth() + 1); // Adiar a data de início em 1 mês

            // Adicionar o registro ao array de resultados
            resultados.push({
                REE_PARCELANUM: i+2, //parcela 1 é a atual
                REE_PARCELAQTDE: parseInt(multiplicar.quantidade) + 1,
                REE_DTEMISSAO: receber.REE_DTEMISSAO,
                REE_DTVENCIMENTO: formatarDataFb(formatarData(novoVencimento)), //formataData transforma em string. formatarDataFb converte para o padrao do firebird.
                REE_VALOR: receber.REE_VALOR,
            });
    
        }
    
        // Atualizar o estado com o array de resultados
        setListagemMultiplicacao(resultados);
    }

    function cancelarMultiplicar() {
        setListagemMultiplicacao([]);
        setShowModalMultiplicar(false);
    }
    
    async function confirmarMultiplicar() {
        if (listagemMultiplicacao.length <= 0) {
            PettMensagem.aviso('Opaaa...','Clique em simular antes de confirmar.');
        }
        if (listagemMultiplicacao.length > 0) {
            const confirmou = await PettMensagem.confirmar('Confirma?','Confirma a multiplicação da conta?');
            if (confirmou) {
                const formData = new FormData();
                formData.set('op','multiplicar');
                formData.set('empresa',empresaSelecionada.value);
                formData.set('REE_CODIGO',receber.REE_CODIGO || '');
                formData.set('listagem',JSON.stringify(listagemMultiplicacao) || '');
                try {
                    const response = await Api.post('firenet/receber',formData);
                    if (response.data.erro==='S') throw response;
                    PettMensagem.sucesso('Yessss!',response.data.msg);
                    setOperacao('listar');
                    listar(pesquisa,true);
                    setListagemMultiplicacao([]);
                    setShowModalMultiplicar(false);
                } catch (error) {
                    tratarCatch('Receber multiplicar',error,logout);
                }
            }
        }
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Contas a Receber" linkBack="/">
            <PettButton caption="Localizar" icone="search"      click={hPesquisar}       condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"        click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"       click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"      click={hEditar}          condicional={operacao==="visualizar" && receber.REE_STATUS==="A"}/>
            <PettButton caption="Baixar"    icone="flash_green" click={ () => setShowReceberBaixar(true) } condicional={operacao==="visualizar" && receber.REE_STATUS==="A"}/>
            <PettButton caption="Cancelar"  icone="flash_red"   click={ () => cancelar({codigo: receber.REE_CODIGO, nome: receber.CLI_NOME}) } condicional={operacao==="visualizar" && receber.REE_STATUS==="A"}/>
            <PettButton caption="Estornar"  icone="undo"        click={ () => estornar({codigo: receber.REE_CODIGO, nome: receber.CLI_NOME}) } condicional={operacao==="visualizar" && receber.REE_STATUS==="B"}/>
            <PettButton caption="Duplicar"  icone="copy"        click={ () => setShowModalMultiplicar(true) } condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark"   click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"      click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"      click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={receber.REE_USUARIO} data={receber.REE_DTATUALIZACAO} hora={receber.REE_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="REE_CODIGO" value={receber.REE_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="REE_DTCADASTRO" value={formatarDataStr(receber.REE_DTCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA ATUALIZAÇÃO" name="REE_DTATUALIZACAO" value={formatarDataStr(receber.REE_DTATUALIZACAO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="STATUS" name="REE_STATUS" value={receber.REE_STATUS} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="TIPO BAIXA" name="REE_TIPOBAIXA" value={receber.REE_TIPOBAIXA} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="NOVO CÓDIGO" name="REE_NOVOCODIGO" value={receber.REE_NOVOCODIGO} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="TIPO DOCTO" name="REE_TIPODOCTO" value={receber.REE_TIPODOCTO} set={setReceber} options={selectTipoDocto} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="NÚM DOCTO." name="REE_NUMDOCTO" value={receber.REE_NUMDOCTO} set={setReceber} length={20} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-lg-2 col-md-3 col-sm-6" label="DT. EMISSÃO" name="REE_DTEMISSAO" value={receber.REE_DTEMISSAO} set={setReceber} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VENDA" name="REE_VENDA" value={receber.REE_VENDA} set={setReceber} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PARCELA NUM." name="REE_PARCELANUM" value={receber.REE_PARCELANUM} set={setReceber} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PARCELA QTDE." name="REE_PARCELAQTDE" value={receber.REE_PARCELAQTDE} set={setReceber} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                    </div>
                    <div className="row mb-3 g-1">
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CLIENTE" name="REE_CLIENTE" value={receber.REE_CLIENTE} set={setReceber} onClick={() => setShowClientesLoc(true)} onBlur={(e) => localizar(CLIENTES, e.target.value, setReceber, mapaClientes)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME CLIENTE" name="CLI_NOME" value={receber.CLI_NOME} readOnly disabled/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="RECEITA" name="REE_RECEITA" value={receber.REE_RECEITA} set={setReceber} onClick={() => setShowReceitasLoc(true)} onBlur={(e) => localizar(RECEITAS, e.target.value, setReceber, mapaReceitas)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO RECEITA" name="REC_DESCRICAO" value={receber.REC_DESCRICAO} readOnly disabled/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CONTA" name="REE_CONTA" value={receber.REE_CONTA} set={setReceber} onClick={() => setShowContasLoc(true)} onBlur={(e) => localizar(CONTAS, e.target.value, setReceber, mapaContas)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME CONTA" name="CON_NOME" value={receber.CON_NOME} readOnly disabled/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="VENDEDOR" name="REE_VENDEDOR" value={receber.REE_VENDEDOR} set={setReceber} onClick={() => setShowVendedoresLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, setReceber, mapaVendedores)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME VENDEDOR" name="VEN_NOME" value={receber.VEN_NOME} readOnly disabled/>
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="REE_DESCRICAO" value={receber.REE_DESCRICAO} set={setReceber} length={120} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="OBSERVAÇÕES" name="REE_OBSERVACOES" value={receber.REE_OBSERVACOES} set={setReceber} readOnly={disableFields} disabled={disableFields} rows={10}/>
                    </div>

                    <strong>Dados do Vencimento</strong>
                    <div className="row mb-3 g-1">
                        <PettFieldDate size="col-lg-2 col-md-3 col-sm-6" label="DT. VENCIMENTO" name="REE_DTVENCIMENTO" value={receber.REE_DTVENCIMENTO} set={setReceber} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-lg-2 col-md-3 col-sm-6" label="DT. JUROS APÓS" name="REE_DTJUROSAPOS" value={receber.REE_DTJUROSAPOS} set={setReceber} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="% JUROS" name="REE_PORCJUROS" value={receber.REE_PORCJUROS} set={setReceber} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR JUROS" name="REE_VALORJUROS" value={receber.REE_VALORJUROS} readOnly disabled />
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR MULTA" name="REE_VALORMULTA" value={receber.REE_VALORMULTA} set={setReceber} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR" name="REE_VALOR" value={receber.REE_VALOR} set={setReceber} readOnly={disableFields} disabled={disableFields} />
                    </div>

                    <strong>Dados do Pagamento</strong>
                    <div className="row mb-5 g-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DT. PAGAMENTO" name="REE_DTPAGAMENTO" value={formatarDataStr(receber.REE_DTPAGAMENTO)} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="JUROS PAGO" name="REE_JUROSPAGO" value={receber.REE_JUROSPAGO} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="MULTA PAGO" name="REE_MULTAPAGO" value={receber.REE_MULTAPAGO} readOnly disabled/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="% DESCONTO" name="REE_DESCPORC" value={receber.REE_DESCPORC} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR DESCONTO" name="REE_DESCVALOR" value={receber.REE_DESCVALOR} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR PAGO" name="REE_VALORPAGO" value={receber.REE_VALORPAGO} readOnly disabled/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CÓDIGO" name="REE_CODIGO" value={pesquisa.REE_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldDrop size="col-lg-2 col-md-2 col-sm-6" label="STATUS" name="REE_STATUS" value={pesquisa.REE_STATUS} set={setPesquisa} options={selectStatusConta}/>
                    <PettFieldDrop size="col-lg-2 col-md-2 col-sm-6" label="DATA" name="data" value={pesquisa.data} set={setPesquisa} options={selectData}/>
                    <PettFieldDate size="col-lg-2 col-md-2 col-sm-6" label="DATA INICIAL" name="datainicial" value={pesquisa.datainicial} set={setPesquisa}/>
                    <PettFieldDate size="col-lg-2 col-md-2 col-sm-6" label="DATA FINAL" name="datafinal" value={pesquisa.datafinal} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CÓD. CLIENTE" name="REE_CLIENTE" value={pesquisa.REE_CLIENTE} set={setPesquisa} />
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="CLIENTE" name="CLI_NOME" value={pesquisa.CLI_NOME} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="REE_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="REE_CLIENTE" header="Cliente" sortable ></PettColumn>
                    <PettColumn field="CLI_NOME" header="Nome Cliente" sortable ></PettColumn>
                    <PettColumn field="REE_STATUS" header="Status" body={statusBody} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="REE_PARCELANUM" header="Parcela" align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="REE_PARCELAQTDE" header="Qtde" align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="REE_DTEMISSAO" header="Emissão" body={(rowData) => formatarDataStr2(rowData,'REE_DTEMISSAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="REE_DTVENCIMENTO" header="Vencimento" body={(rowData) => formatarDataStr2(rowData,'REE_DTEMISSAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="REE_DTPAGAMENTO" header="Pagamento" body={(rowData) => formatarDataStr2(rowData,'REE_DTEMISSAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="REE_VALOR" header="Valor" body={(rowData) => formatarMoeda(rowData,'REE_VALOR')} sortable align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="REE_VALORPAGO" header="Valor Pago" body={(rowData) => formatarMoeda(rowData,'REE_VALORPAGO')} sortable align="right" alignHeader="right"></PettColumn>
                    {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
        <ClientesLoc showModal={showClientesLoc} onCloseModal={(data) => { selecionar(data, setReceber, mapaClientes); setShowClientesLoc(false); }}/>
        <ContasLoc showModal={showContasLoc} onCloseModal={(data) => { selecionar(data, setReceber, mapaContas); setShowContasLoc(false); }}/>
        <VendedoresLoc showModal={showVendedoresLoc} onCloseModal={(data) => { selecionar(data, setReceber, mapaVendedores); setShowVendedoresLoc(false); }}/>
        <ReceitasLoc showModal={showReceitasLoc} onCloseModal={(data) => { selecionar(data, setReceber, mapaReceitas); setShowReceitasLoc(false); }}/>
        <ReceberBaixar showModal={showReceberBaixar} receber={receber} onCloseModal={receberBaixarClose}/>

        <PettModal show={showModalMultiplicar} title="Multiplicar Conta..." size="lg" fechar={false}>
            <div className="row gx-1 ">
                <div className="col-2 text-end">Código:</div>
                <div className="col-10">{receber.REE_CODIGO}</div>
                <div className="col-2 text-end">Cliente:</div>
                <div className="col-10">{receber.CLI_NOME}</div>
                <div className="col-2 text-end">Vencimento:</div>
                <div className="col-10">{formatarDataStr(receber.REE_DTVENCIMENTO)}</div>
                <div className="col-2 text-end">Valor:</div>
                <div className="col-10">{receber.REE_VALOR}</div>
                <div className="col-2 text-end">Descrição:</div>
                <div className="col-10 mb-3">{receber.REE_DESCRICAO}</div>
                <PettFieldText size="col-6 mb-1" label="CRIAR MAIS" name="quantidade" value={multiplicar.quantidade} set={setMultiplicar} keyfilter="int"/>
            </div>
            <PettGrid className="mt-4" listagem={listagemMultiplicacao} >
                <PettColumn field="REE_PARCELANUM" header="NP" align="center" alignHeader="center"></PettColumn>
                <PettColumn field="REE_PARCELAQTDE" header="TP" align="center" alignHeader="center"></PettColumn>
                <PettColumn field="REE_DTEMISSAO" header="Emissão" body={(rowData) => formatarDataStr2(rowData,'REE_DTEMISSAO')} align="center" alignHeader="center"></PettColumn>
                <PettColumn field="REE_DTVENCIMENTO" header="Vencimento" body={(rowData) => formatarDataStr2(rowData,'REE_DTVENCIMENTO')} align="center" alignHeader="center"></PettColumn>
                <PettColumn field="REE_VALOR" header="Valor" body={(rowData) => formatarMoeda(rowData,'REE_VALOR')} align="right" alignHeader="right"></PettColumn>
                {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
            </PettGrid>

            {/* <PettModal.Footer className='bg-tema2 border-0 p-0 px-1'> */}
            <PettModal.Footer>
                <div className="w-100 d-flex">
                    <PettButton caption="Simular"   icone="eye"        click={simular}  className="me-auto"/>
                    <PettButton caption="Confirmar" icone="checkmark"  click={confirmarMultiplicar}  className="me-1"/>
                    <PettButton caption="Cancelar"  icone="cancel"     click={cancelarMultiplicar} />
                </div>
            </PettModal.Footer>
        </PettModal>
    </>
}

export default Receber;