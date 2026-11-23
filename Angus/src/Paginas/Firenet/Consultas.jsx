import React, { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor.jsx';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ClientesLoc from '../../Componentes/Localizadores/ClientesLoc';
import ConveniosLoc from '../../Componentes/Localizadores/ConveniosLoc';
import ColunaCentral from '../../Componentes/ColunaCentral';
import ConsultasItens from './ConsultasItens';
import ConsultasRel from './ConsultasRel.jsx';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import VendedoresLoc from '../../Componentes/Localizadores/VendedoresLoc';
import { primeiroDiaMes, ultimoDiaMes, formatarData, formatarDataFb, formatarDataStr, formatarDataStr2, hoje, formatarMoeda, tratarCatch, formatarHora, hojeMenosDias, hojeMaisDias } from '../../Funcoes';
import { useLocalizar, CLIENTES, CONVENIOS, VENDEDORES } from '../../Hooks/useLocalizar';

const mapaClientes     = { COS_CLIENTE: 'CLI_CODIGO', CLI_NOME: 'CLI_NOME' };
const mapaConvenios    = { COS_CONVENIO: 'COV_CODIGO', COV_DESCRICAO: 'COV_DESCRICAO' };
const mapaSolicitantes = { COS_SOLICITANTE: 'CLI_CODIGO', CLI_SOLICITANTE: 'CLI_NOME' };
const mapaVendedores   = { COS_MEDICO: 'VEN_CODIGO', VEN_NOME: 'VEN_NOME' };

function Consultas() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/consultas', 'Consultas listar', logout);
    const [ pesquisa, setPesquisa ] = useState({
        datainicial: formatarDataFb(hojeMenosDias(15)),
        datafinal: formatarDataFb(hojeMaisDias(15)),

        // datainicial: formatarDataFb(primeiroDiaMes()),
        // datafinal: formatarDataFb(ultimoDiaMes()),
        COS_CODIGO: '',
        COS_STATUS: 'T',
        CLI_NOME: '',
        VEN_NOME: '',
    });

    const formatarDadosFB = (dados) => {
        return {
            ...dados,
            COS_DATAFIM: formatarDataFb(consulta.COS_DATAFIM), //Converte data de DD/MM/AAAA para AAAA-MM-DD
            COS_DATAINICIO: formatarDataFb(consulta.COS_DATAINICIO), 
        };
    };
    
    const vazio = {
        COS_CLIENTE: '',
        COS_CODIGO: '',
        COS_CONVENIO: '',
        COS_DATAFIM: hoje,
        COS_DATAINICIO: hoje,
        COS_DTATUALIZACAO: hoje,
        COS_DTCADASTRO: hoje,
        COS_HORAFIM: '12:00:00',
        COS_HORAINICIO: '12:00:00',
        COS_MEDICO: '',
        COS_SOLICITANTE: '',
        COS_STATUS: 'A',
        COS_VALORTOTAL: '0',
        CLI_NOME: '',
        CLI_SOLICITANTE: '',
        COV_DESCRICAO: '',
        VEN_NOME: ''
    };

    const getConsultaItens = (dadosCompletos) => {
        // Se a API trouxe os itens dentro da consulta:
        if (dadosCompletos.ITENS) {
            setConsultaItens(dadosCompletos.ITENS);
        }
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
        registro: consulta,
        salvar,
        setOperacao,
        setRegistro: setConsulta,
        visualizar,
    } = useTabela('firenet/consultas', vazio, 'COS_CODIGO', 'CLI_NOME', formatarDadosFB, getConsultaItens);
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hInserir   = () => { setConsultaItens([]); inserir(); } 
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(consulta, () => listar(pesquisa, true));
    const hEditar    = () => editar(consulta);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); console.log('sssss',pesquisa)}

    const [ listagemMultiplicacao, setListagemMultiplicacao ] = useState([]);
    const [ reagendar, setReagendar ] = useState({ COS_DATAINICIO: '', COS_DATAFIM: '', COS_HORAINICIO: '', COS_HORAFIM: '' });
    const [ multiplicar, setMultiplicar ] = useState({ quantidade: '1', periodo: 'SEMANAL' });
    const [ consultaItem, setConsultaItem ] = useState({
        CSI_CODIGO: '',
        CSI_CONSULTA: '',
        CSI_DESCRICAO: '',
        CSI_EXAME: '',
        CSI_SIGLA: '',
        CSI_VALOR: ''
    });
    const [ consultaItens, setConsultaItens ] = useState([]);
    const [ operacaoItem, setOperacaoItem ] = useState('inserir');
    const [ showClientesLoc, setShowClientesLoc ] = useState(false);
    const [ showConveniosLoc, setShowConveniosLoc ] = useState(false);
    const [ showMedicosLoc, setShowMedicosLoc ] = useState(false);
    const [ showSolicitantesLoc, setShowSolicitantesLoc ] = useState(false);
    const [ showModalMultiplicar, setShowModalMultiplicar ] = useState(false);
    const [ showModalReagendar, setShowModalReagendar ] = useState(false);
    const [ showRelatorios, setShowRelatorios ] = useState(false);
    const [ showItem, setShowItem ] = useState(false);
    
    const selectPeriodo = [
        { value: "SEMANAL", label: "SEMANAL" },
        { value: "MENSAL", label: "MENSAL" },
    ];

    const selectStatus = [
        { value: "T", label: "TODAS" },
        { value: "A", label: "ABERTAS" }, 
        { value: "B", label: "BAIXADAS" },
        { value: "C", label: "CANCELADAS" },
    ];

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    useEffect(() => {
        setReagendar({ COS_DATAINICIO: consulta.COS_DATAINICIO, COS_DATAFIM: consulta.COS_DATAFIM, COS_HORAINICIO: consulta.COS_HORAINICIO, COS_HORAFIM: consulta.COS_HORAFIM });
    },[consulta]);

    function reset() {
        const pesquisaVazia = { 
            datainicial: formatarDataFb(primeiroDiaMes()),
            datafinal: formatarDataFb(ultimoDiaMes()),
            COS_CODIGO: '',
            COS_STATUS: 'T',
            CLI_NOME: '',
            VEN_NOME: '',
        };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    async function baixar(item) {
        const confirmou = await PettMensagem.confirmar('Baixar consulta?', `Tem certeza que deseja baixar a consulta de ${item.nome}?`);
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','baixar');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('COS_CODIGO',item.codigo);
            try {
                const response = await Api.post('firenet/consultas',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!','Consulta baixada com sucesso.');
                setConsulta(response.data.msg);
                //continha a mesma listagem... setConsultaItens(response.data.msg.ITENS);
            } catch (error) {
                tratarCatch('Consultas baixar',error,logout);
            }
        }
    }

    async function reabrir(item) {
        const confirmou = await PettMensagem.confirmar('Reabrir consulta?',`Tem certeza que deseja reabrir a consulta de ${item.nome}?`);
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','reabrir');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('COS_CODIGO',item.codigo);
            try {
                const response = await Api.post('firenet/consultas',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!','Consulta reaberta com sucesso.');
                setConsulta(response.data.msg);
                //continha a mesma listagem... setConsultaItens(response.data.msg.ITENS);
            } catch (error) {
                tratarCatch('Consultas reabrir',error,logout);
            }
        }
    }

    async function cancelar(item) { 
        const confirmou = await PettMensagem.confirmar('Confirma Cancelamento?', `Tem certeza que deseja cancelar a consulta de ${item.nome}?`);
        if (confirmou) {
            const reposicao = await PettMensagem.confirmar('Reposicão?','Deseja contabilizar uma reposição para o cliente?');
            const valorReposicao = Boolean(reposicao) ? "SIM" : "NAO";
            const formData = new FormData();
            formData.set('op','cancelar');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('COS_CODIGO',item.codigo);
            formData.set('reposicao',valorReposicao);
            try {
                const response = await Api.post('firenet/consultas',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!','Consulta cancelada com sucesso.');

                const registroAtualizado = response.data.msg;
                setConsulta(registroAtualizado);
                // setConsultaItens(registroAtualizado.ITENS);
            } catch (error) {
                tratarCatch('Consultas cancelar',error,logout);
            }
        }
    }

    const onRowSelect = (event) => {
        visualizar(event.COS_CODIGO);
    };  

    //para abrir o modal do item
    function novoItem() {
        setOperacaoItem('inserirItem');
        setConsultaItem({
            CSI_CODIGO: '',
            CSI_CONSULTA: '',
            CSI_DESCRICAO: '',
            CSI_EXAME: '',
            CSI_SIGLA: '',
            CSI_VALOR: ''
        });
        setShowItem(true);
    }

    function editarItem(item1) {      
        setOperacaoItem('atualizarItem');
        setShowItem(true);
    }

    async function itemClose(item) {
        // if (typeof item === 'object' && item !== null) {
        if (Object.keys(item).length > 0) {
            setConsulta(item);
            setConsultaItens(item.ITENS);
        }
        setShowItem(false);
    }

    const onRowSelectItem = (event) => {
        setConsultaItem(event);
        editarItem(event.CSI_CODIGO);
    };

    function simular() {
        const resultados = [];
        
        // Converter as strings de data para objetos Date
        let dataInicio = formatarDataStr(consulta.COS_DATAINICIO); // "dd/mm/yyyy"
        let dataFim = formatarDataStr(consulta.COS_DATAFIM); // "dd/mm/yyyy"
        let partesDataInicio = dataInicio.split('/'); // Separa a data em [dia, mes, ano]
        let partesDataFim = dataFim.split('/'); // Separa a data em [dia, mes, ano]
        let COS_DATAINICIO_OBJ = new Date(partesDataInicio[2], partesDataInicio[1] - 1, partesDataInicio[0]); // "yyyy/mm/dd"
        let COS_DATAFIM_OBJ = new Date(partesDataFim[2], partesDataFim[1] - 1, partesDataFim[0]); // "yyyy/mm/dd"

        for (let i = 0; i < multiplicar.quantidade; i++) {
            
            // Ajustar as datas conforme o período
            if (multiplicar.periodo === "SEMANAL") {
                COS_DATAINICIO_OBJ.setDate(COS_DATAINICIO_OBJ.getDate() + 7); // Adiar a data de início em 1 semana
                COS_DATAFIM_OBJ.setDate(COS_DATAFIM_OBJ.getDate() + 7); // Adiar a data de fim em 1 semana
            } else if (multiplicar.periodo === "MENSAL") {
                COS_DATAINICIO_OBJ.setMonth(COS_DATAINICIO_OBJ.getMonth() + 1); // Adiar a data de início em 1 mês
                COS_DATAFIM_OBJ.setMonth(COS_DATAFIM_OBJ.getMonth() + 1); // Adiar a data de fim em 1 mês
            }

            // Adicionar o registro ao array de resultados
            resultados.push({
                COS_SEQUENCIA: i+1,
                COS_DATAINICIO: formatarDataFb(formatarData(COS_DATAINICIO_OBJ)), //formataData transforma em string. formatarDataFb converte para o padrao do firebird.
                COS_DATAFIM: formatarDataFb(formatarData(COS_DATAFIM_OBJ))
                // COS_DATAINICIO: COS_DATAINICIO_OBJ.toISOString().split("T")[0],
                // COS_DATAFIM: COS_DATAFIM_OBJ.toISOString().split("T")[0],
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
            PettMensagem.erro('Opaaa...','Clique em simular antes de confirmar.');
        }
        if (listagemMultiplicacao.length > 0) {
            const confirmou = await PettMensagem.confirmar('Confirma?','Confirma a cópia do agendamento da consulta?');
            if (confirmou) {
                const formData = new FormData();
                formData.set('op','multiplicar');
                formData.set('empresa',empresaSelecionada.value);
                formData.set('COS_CODIGO',consulta.COS_CODIGO || '');
                formData.set('listagem',JSON.stringify(listagemMultiplicacao) || '');
                try {
                    const response = await Api.post('firenet/consultas',formData);
                    if (response.data.erro==='S') throw response;
                    PettMensagem.sucesso('Yessss!',response.data.msg);
                    setOperacao('listar');
                    listar(pesquisa,true);
                    setListagemMultiplicacao([]);
                    setShowModalMultiplicar(false);
                } catch (error) {
                    tratarCatch('Consultas confirmarMultiplicar',error,logout);
                }
            }
        }
    }
    
    function cancelarReagendar() {
        setReagendar({ COS_DATAINICIO: '', COS_DATAFIM: '', COS_HORAINICIO: '', COS_HORAFIM: '' });
        setShowModalReagendar(false);
    }

    async function confirmarReagendar() {
        const confirmou = await PettMensagem.confirmar('Confirma?','Confirma o reagendamento da consulta?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','reagendar');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('COS_CODIGO',consulta.COS_CODIGO || '');
            formData.set('COS_DATAFIM',formatarDataFb(reagendar.COS_DATAFIM) || '');
            formData.set('COS_DATAINICIO',formatarDataFb(reagendar.COS_DATAINICIO) || '');
            formData.set('COS_HORAFIM',reagendar.COS_HORAFIM || '');
            formData.set('COS_HORAINICIO',reagendar.COS_HORAINICIO || '');
            formData.set('listagem',JSON.stringify(listagemMultiplicacao) || '');
            try {
                const response = await Api.post('firenet/consultas',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!','Reagendamento efetuado com sucesso.');
                setShowModalReagendar(false);
                visualizar(response.data.msg.COS_CODIGO);
            } catch (error) {
                tratarCatch('Consultas confirmarReagendar',error,logout);
            }
        }
    }

    const statusBody = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.COS_STATUS==='A'}>
                    <span className="badge bg-success">ABERTO</span>
                </PettIf>
                <PettIf condicional={rowData.COS_STATUS==='B'}>
                    <span className="badge bg-primary">BAIXADO</span>
                </PettIf>
                <PettIf condicional={rowData.COS_STATUS==='C'}>
                    <span className="badge bg-danger">CANCELADO</span>
                </PettIf>
                <PettIf condicional={rowData.COS_STATUS==='R'}>
                    <span className="badge bg-warning">REAGENDADO</span>
                </PettIf>
            </React.Fragment>
        );
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Consultas" linkBack="/">           
            <PettButton caption="Localizar" icone="search"                click={hListagem} condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"                  click={hInserir}  condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"                 click={hExcluir}  condicional={operacao==="visualizar"}/>
            {/* <PettIf condicional={consulta.COS_STATUS==="A"}> */}
            <PettButton caption="Editar"    icone="pencil"                click={hEditar}   condicional={operacao==="visualizar" && consulta.COS_STATUS==="A"}/>
            <PettButton caption="Baixar"    icone="flash_green"           click={ () => baixar({codigo: consulta.COS_CODIGO, nome: consulta.CLI_NOME}) } condicional={operacao==="visualizar" && consulta.COS_STATUS==="A"}/>
            <PettButton caption="Cancelar"  icone="flash_red"             click={ () => cancelar({codigo: consulta.COS_CODIGO, nome: consulta.CLI_NOME}) } condicional={operacao==="visualizar" && consulta.COS_STATUS==="A"}/>
            <PettButton caption="Reagendar" icone="flash_yellow"          click={ () => setShowModalReagendar(true) } condicional={operacao==="visualizar" && consulta.COS_STATUS==="A"}/>
            {/* </PettIf> */}
            {/* <PettIf condicional={consulta.COS_STATUS==="B"}> */}
            <PettButton caption="Reabrir"             icone="undo"        click={ () => reabrir({codigo: consulta.COS_CODIGO, nome: consulta.CLI_NOME}) } condicional={operacao==="visualizar" && consulta.COS_STATUS==="B"} />
            {/* </PettIf> */}
            <PettButton caption="Multiplicar"         icone="copy"        click={ () => setShowModalMultiplicar(true) } condicional={operacao==="visualizar"}/>
            <PettButton caption="Relatórios"          icone="print"       click={ () => setShowRelatorios(true) }       condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"              icone="checkmark"   click={hSalvar}                               condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"            icone="cancel"      click={cancelarInsercao}                      condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"            icone="cancel"      click={cancelarEdicao}                        condicional={operacao==="atualizar"}/>
            <PettButton caption="Relatórios"          icone="print"       click={() => setShowRelatorios(true)}         condicional={operacao==="listar"}/>
            <PettButton caption="Agenda de Consultas" icone="calendar_10" link="/consultasagenda"                       condicional={operacao==="listar"}/>
            <AtualizadoPor usuario={consulta.COS_USUARIO} data={consulta.COS_DTATUALIZACAO} hora={consulta.COS_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>
 
        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="COS_CODIGO" value={consulta.COS_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="COS_DTCADASTRO" value={formatarDataStr(consulta.COS_DTCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA ATUALIZAÇÃO" name="COS_DTATUALIZACAO" value={formatarDataStr(consulta.COS_DTATUALIZACAO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="STATUS" name="COS_STATUS" value={consulta.COS_STATUS} readOnly disabled/>
                    </div>
                    <div className="row g-1">
                        <PettFieldLoc size="col-lg-1 col-md-1 col-sm-12" label="CLIENTE" name="COS_CLIENTE" value={consulta.COS_CLIENTE} set={setConsulta} onClick={() => setShowClientesLoc(true)} onBlur={(e) => localizar(CLIENTES, e.target.value, setConsulta, mapaClientes)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-5 col-md-5 col-sm-12" label="NOME CLIENTE" name="CLI_NOME" value={consulta.CLI_NOME} set={setConsulta} readOnly disabled/>

                        <PettFieldLoc size="col-lg-1 col-md-1 col-sm-12" label="MÉDICO" name="COS_MEDICO" value={consulta.COS_MEDICO} set={setConsulta} onClick={() => setShowMedicosLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, setConsulta, mapaVendedores)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-5 col-md-5 col-sm-12" label="NOME MÉDICO" name="VEN_NOME" value={consulta.VEN_NOME} set={setConsulta} readOnly disabled/>

                        <PettFieldLoc size="col-lg-1 col-md-1 col-sm-12" label="SOLICITANTE" name="COS_SOLICITANTE" value={consulta.COS_SOLICITANTE} set={setConsulta} onClick={() => setShowSolicitantesLoc(true)} onBlur={(e) => localizar(CLIENTES, e.target.value, setConsulta, mapaSolicitantes)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-5 col-md-5 col-sm-12" label="NOME SOLICITANTE" name="CLI_SOLICITANTE" value={consulta.CLI_SOLICITANTE} set={setConsulta} readOnly disabled/>

                        <PettFieldLoc size="col-lg-1 col-md-1 col-sm-12" label="CONVÊNIO" name="COS_CONVENIO" value={consulta.COS_CONVENIO} set={setConsulta} onClick={() => setShowConveniosLoc(true)} onBlur={(e) => localizar(CONVENIOS, e.target.value, setConsulta, mapaConvenios)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-5 col-md-5 col-sm-12" label="NOME CONVÊNIO" name="COV_DESCRICAO" value={consulta.COV_DESCRICAO} set={setConsulta} readOnly disabled/>
                        
                        <PettFieldDate size="col-lg-2 col-md-3 col-sm-6" label="DATA INÍCIO" name="COS_DATAINICIO" value={consulta.COS_DATAINICIO} set={setConsulta} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-lg-2 col-md-3 col-sm-6" label="DATA FIM" name="COS_DATAFIM" value={consulta.COS_DATAFIM} set={setConsulta} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="HORA INÍCIO" name="COS_HORAINICIO" value={consulta.COS_HORAINICIO} set={setConsulta} readOnly={disableFields} disabled={disableFields} mask="99:99:99"/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="HORA FIM" name="COS_HORAFIM" value={consulta.COS_HORAFIM} set={setConsulta} readOnly={disableFields} disabled={disableFields} mask="99:99:99"/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="VALOR TOTAL" name="COS_VALORTOTAL" value={consulta.COS_VALORTOTAL} readOnly disabled/>
                    </div>

                    <div className="box mb-1 mt-3">
                        <PettIf condicional={operacao==="visualizar" && consulta.COS_STATUS==="A"}>
                            <PettButton caption="Inserir Item" icone="plus" click={novoItem} />
                        </PettIf>
                        <PettIf condicional={operacao==="visualizar" && consulta.COS_STATUS!=="A"}>
                            <span className="ms-2">Esta consulta não está em aberto.</span>
                        </PettIf>
                        <PettIf condicional={operacao==="inserir" || operacao==="atualizar"}>
                            <span className="ms-2">Salve ou Cancele as alterações antes de inserir/alterar itens</span>
                        </PettIf>
                    </div>
                    <PettGrid className="mt-4" listagem={consultaItens} rowSelect={onRowSelectItem}>
                        <PettColumn field="CSI_CODIGO" header="Código" sortable ></PettColumn>
                        <PettColumn field="CSI_CONSULTA" header="Consulta" sortable ></PettColumn>
                        <PettColumn field="CSI_EXAME" header="Exame" sortable ></PettColumn>
                        <PettColumn field="CSI_DESCRICAO" header="Descrição" sortable ></PettColumn>
                        <PettColumn field="CSI_SIGLA" header="Sigla"></PettColumn>
                        <PettColumn field="CSI_VALOR" body={(rowData) => formatarMoeda(rowData,'CSI_VALOR')} header="Valor" align="right" alignHeader="right"></PettColumn>
                        {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
                    </PettGrid>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-4 col-sm-4" label="CÓDIGO" name="COS_CODIGO" value={pesquisa.COS_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldDrop size="col-lg-2 col-md-4 col-sm-4" label="STATUS" name="COS_STATUS" value={pesquisa.COS_STATUS} set={setPesquisa} options={selectStatus}/>
                    <PettFieldDate size="col-lg-2 col-md-4 col-sm-4" label="DATA INICIAL" name="datainicial" value={pesquisa.datainicial} set={setPesquisa}/>
                    <PettFieldDate size="col-lg-2 col-md-4 col-sm-4" label="DATA FINAL" name="datafinal" value={pesquisa.datafinal} set={setPesquisa}/>
                    <PettFieldText size="col-lg-6 col-md-6 col-sm-6" label="CLIENTE" name="CLI_NOME" value={pesquisa.CLI_NOME} set={setPesquisa} />
                    <PettFieldText size="col-lg-6 col-md-6 col-sm-6" label="MÉDICO" name="VEN_NOME" value={pesquisa.VEN_NOME} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="COS_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="COS_CLIENTE" header="Cliente" sortable ></PettColumn>
                    <PettColumn field="CLI_NOME" header="Nome Cliente" sortable ></PettColumn>
                    <PettColumn field="VEN_NOME" header="Nome Médico" sortable ></PettColumn>
                    {/* <PettColumn field="COS_STATUS" header="Status" sortable align="center" alignHeader="center"></PettColumn> */}
                    <PettColumn field="COS_STATUS" body={statusBody} header="Status" sortable exportable={false} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="CLI_REPOSICOES" header="Reposições" sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="COS_DATAINICIO" header="Dt. Início" body={(rowData) => formatarDataStr2(rowData,'COS_DATAINICIO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="COS_DATAFIM" header="Dt. Fim" body={(rowData) => formatarDataStr2(rowData,'COS_DATAFIM')} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="COS_HORAINICIO" header="Hr. Início" align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="COS_HORAFIM" header="Hr. Fim" align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="COS_VALORTOTAL" header="VALOR TOTAL" body={(rowData) => formatarMoeda(rowData,'COS_VALORTOTAL')} align="right" alignHeader="right"></PettColumn>
                    {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>           
    
        <Rodape />
        <ClientesLoc showModal={showClientesLoc} onCloseModal={(data) => { selecionar(data, setConsulta, mapaClientes); setShowClientesLoc(false); }}/>
        <ClientesLoc showModal={showSolicitantesLoc} onCloseModal={(data) => { selecionar(data, setConsulta, mapaSolicitantes); setShowSolicitantesLoc(false); }}/>
        <ConveniosLoc showModal={showConveniosLoc} onCloseModal={(data) => { selecionar(data, setConsulta, mapaConvenios); setShowConveniosLoc(false); }}/>
        <VendedoresLoc showModal={showMedicosLoc} onCloseModal={(data) => { selecionar(data, setConsulta, mapaVendedores); setShowMedicosLoc(false); }}/>
        <ConsultasItens showModal={showItem} onCloseModal={itemClose} consulta={consulta} item={consultaItem} operacao={operacaoItem} /> 
        <ConsultasRel showModal={showRelatorios} onCloseModal={() => setShowRelatorios(false)} /> 

        <PettModal show={showModalMultiplicar} onHide={() => setShowModalMultiplicar(false)} title="Multiplicar Consulta" size="md" position="top">
            <div className="row gx-1">
                <div className="col-12">Código: {consulta.COS_CODIGO}</div>
                <div className="col-12">Cliente: {consulta.CLI_NOME}</div>
                <div className="col-12">Data Início: {formatarDataStr(consulta.COS_DATAINICIO)+' - '+formatarHora(consulta.COS_HORAINICIO)}</div>
                <div className="col-12 mb-3">Data Fim: {formatarDataStr(consulta.COS_DATAFIM)+' - '+formatarHora(consulta.COS_HORAFIM)}</div>
                <PettFieldText size="col-6 mb-1" label="CRIAR MAIS" name="quantidade" value={multiplicar.quantidade} set={setMultiplicar} keyfilter="int"/>
                <PettFieldDrop size="col-6 mb-1" label="PERÍODO" name="periodo" value={multiplicar.periodo} set={setMultiplicar} options={selectPeriodo}/>
            </div>
            <PettGrid className="mt-4" listagem={listagemMultiplicacao} rowSelect={onRowSelect}>
                <PettColumn field="COS_SEQUENCIA" header="#" align="center" alignHeader="center"></PettColumn>
                <PettColumn field="COS_DATAINICIO" header="Data Início" body={(rowData) => formatarDataStr2(rowData,'COS_DATAINICIO')} align="center" alignHeader="center"></PettColumn>
                <PettColumn field="COS_DATAFIM" header="Data Fim" body={(rowData) => formatarDataStr2(rowData,'COS_DATAFIM')} align="center" alignHeader="center"></PettColumn>
                {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
            </PettGrid>

            <PettModal.Footer>
                <div className="w-100 d-flex gap-1">
                    <PettButton caption="Simular" icone="eye" click={simular}  className="me-auto"/>
                    <PettButton caption="Confirmar" icone="checkmark" click={confirmarMultiplicar} />
                    <PettButton caption="Cancelar" icone="cancel" click={cancelarMultiplicar} />
                </div>
            </PettModal.Footer>
        </PettModal> 
        
        <PettModal show={showModalReagendar} onHide={() => setShowModalReagendar(false)} title="Reagendar Consulta" size="md" position="top">
            <div className="row g-1">
                <div className="col-12">Código: {consulta.COS_CODIGO}</div>
                <div className="col-12">Cliente: {consulta.CLI_NOME}</div>
                <div className="col-12">Data Início: {formatarDataStr(consulta.COS_DATAINICIO)+' - '+formatarHora(consulta.COS_HORAINICIO)}</div>
                <div className="col-12 mb-3">Data Fim: {formatarDataStr(consulta.COS_DATAFIM)+' - '+formatarHora(consulta.COS_HORAFIM)}</div>
                <PettFieldDate size="col-6" label="DATA INÍCIO" name="COS_DATAINICIO" value={reagendar.COS_DATAINICIO} set={setReagendar}/>
                <PettFieldDate size="col-6" label="DATA FIM" name="COS_DATAFIM" value={reagendar.COS_DATAFIM} set={setReagendar}/>
                <PettFieldMask size="col-6" label="HORA INÍCIO" name="COS_HORAINICIO" value={reagendar.COS_HORAINICIO} set={setReagendar} mask="99:99:99"/>
                <PettFieldMask size="col-6" label="HORA FIM" name="COS_HORAFIM" value={reagendar.COS_HORAFIM} set={setReagendar} mask="99:99:99"/>
            </div>

            <PettModal.Footer>
                <div className="w-100 d-flex justify-content-end gap-1">
                    <PettButton caption="Confirmar" icone="checkmark" click={confirmarReagendar} />
                    <PettButton caption="Cancelar" icone="cancel" click={cancelarReagendar} />
                </div>
            </PettModal.Footer>
        </PettModal> 
    </>
}

export default Consultas;