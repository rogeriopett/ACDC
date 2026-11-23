import React, { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettTab } from 'pett-componentes';
import { PettTabPanel } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import Api from '../../Api';
import AtualizadoPor from '../../Componentes/AtualizadoPor.jsx';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ClientesLoc from '../../Componentes/Localizadores/ClientesLoc';
import CondicoesLoc from '../../Componentes/Localizadores/CondicoesLoc';
import ColunaCentral from '../../Componentes/ColunaCentral';
import FornecedoresLoc from '../../Componentes/Localizadores/FornecedoresLoc';
import Loading from '../../Componentes/Loading';
import NaturezasLoc from '../../Componentes/Localizadores/NaturezasLoc';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import VendasItens from './VendasItens';
import VendedoresLoc from '../../Componentes/Localizadores/VendedoresLoc';
import { selectDiaVencimento, selectFormaPagamento, selectFrete, selectStatusVendas, selectTipoAtendimento, selectTipoConsumidor, selectTipoOperacao } from '../../Combox.js';
import { primeiroDiaMes, ultimoDiaMes, formatarDataStr, formatarDataStr2, formatarMoeda, tratarCatch, formatarDataFb, hoje, formatarMoedaStr } from '../../Funcoes';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import { useLocalizar, CLIENTES, CONDICOES, FORNECEDORES, NATUREZAS, VENDEDORES  } from '../../Hooks/useLocalizar';

const mapaClientes        = { VED_CLIENTE: 'CLI_CODIGO', VED_CONDICAO: 'CLI_CONDICAO', VED_CONTATO: 'CLI_CONTATO', VED_FORMAPAGTO: 'CPG_FORMAPAGTO', VED_NOME: 'CLI_NOME', VED_TIPOCONSUMIDOR: 'CLI_TIPOCONSUMIDOR', CPG_DESCRICAO: 'CPG_DESCRICAO', CPG_MEIOPAGAMENTO: 'CPG_MEIOPAGAMENTO' };
const mapaCondicoes       = { VED_CONDICAO: 'CPG_CODIGO', VED_FORMAPAGTO: 'CPG_FORMAPAGTO', CPG_DESCRICAO: 'CPG_DESCRICAO', CPG_MEIOPAGAMENTO: 'CPG_MEIOPAGAMENTO' };
const mapaExpedidores     = { VED_EXPEDIDOPOR: 'VEN_CODIGO', VEN_NOME1: 'VEN_NOME' };
const mapaNaturezas       = { VED_CFOP: 'NAT_CODIGO', VED_CFOPDESC: 'NAT_DESCRICAO', VED_ENTRADASAIDA: 'NAT_ENTRADASAIDA', VED_MOVIMENTAESTOQUE: 'NAT_MOVIMENTAESTOQUE', VED_MOVIMENTAFINANCEIRO: 'NAT_MOVIMENTAFINANCEIRO' };
const mapaTransportadoras = { VED_TRANSPORTADORA: 'FOR_CODIGO', VED_TRANSPNOME: 'FOR_NOME' };
const mapaVendedores      = { VED_VENDEDOR: 'VEN_CODIGO', VEN_NOME: 'VEN_NOME' };

const pesquisaVazia = {
    datainicial: formatarDataFb(primeiroDiaMes()),
    datafinal: formatarDataFb(ultimoDiaMes()),
    VED_CLIENTE: '',
    VED_CODIGO: '',
    VED_NOME: '',
    VED_PEDIDOCLIENTE: '',
    VED_STATUS: 'T',
};

// Converte as datas da pesquisa para o formato esperado pela API
const filtros = (pesquisa) => ({ ...pesquisa, datainicial: formatarDataFb(pesquisa.datainicial), datafinal: formatarDataFb(pesquisa.datafinal) });

const vazio = {
    VED_ALIQICMSCREDSN: '0',
    VED_BAIRRO: '',
    VED_BAIXADATA: '',
    VED_BAIXAPOR: '',
    VED_BASECOFINS: '0',
    VED_BASECOFINSST: '0',
    VED_BASEICMS: '0',
    VED_BASEICMSST: '0',
    VED_BASEII: '0',
    VED_BASEIPI: '0',
    VED_BASEISS: '0',
    VED_BASEPIS: '0',
    VED_BASEPISST: '0',
    VED_CEP: '',
    VED_CFOP: '',
    VED_CFOPDESC: '',
    VED_CIDADE: '',
    VED_CIDADECODIGO: '',
    VED_CNPJ: '',
    VED_CODIGO: '',
    VED_CODIMPORTACAO: '',
    VED_CLIENTE: '',
    VED_COMISSAO: '0',
    VED_COMISSAOPOR: '',
    VED_COMPLEMENTO: '',
    VED_CONDICAO: '',
    VED_CONDICAOMEMO: '',
    VED_CONFERIDO: 'N',
    VED_CONFERIDODATA: '',
    VED_CONFERIDOPOR: '',
    VED_CONTATO: '',
    VED_CPF: '',
    VED_CUSTOTOTAL: '0',
    VED_DESCPORC: '0',
    VED_DESCPORCCLIENTE: '0',
    VED_DESCPORCCONDICAO: '0',
    VED_DESCVALOR: '0',
    VED_DESTACARIMPOSTOS: '',
    VED_DIAPREFERENCIAL: '0',
    VED_DTATUALIZACAO: '',
    VED_DTCADASTRO: hoje,
    VED_DTEMISSAO: hoje,
    VED_DTPRESTSERVICO: hoje,
    VED_DTSAIDA: hoje,
    VED_ENDERECO: '',
    VED_ENTRADASAIDA: 'S',
    VED_ENTREGUE: 'N',
    VED_ESPECIE: '',
    VED_ESTADO: '',
    VED_ESTADOCODIGO: '',
    VED_EXLOCAL: '',
    VED_EXUFSAIDA: '',
    VED_EXPEDIDOPOR: '',
    VED_FONE1: '',
    VED_FORMAPAGTO: '',
    VED_FRETE: '',
    VED_IDESTRANGEIRO: '',
    VED_IE: '',
    VED_INFOADICFISCO: '',
    VED_INFOCOMPLEMENTAR: '',
    VED_LACRES: '',
    VED_LUCROPORC: '0',
    VED_LUCROVALOR: '0',
    VED_MANUAL: 'N',
    VED_MARCA: '',
    VED_MOVIMENTAESTOQUE: '',
    VED_MOVIMENTAFINANCEIRO: '',
    VED_NFE: '',
    VED_NOME: '',
    VED_NOTA: '',
    VED_NUMERO: '',
    VED_OBSERVACOES: '',
    VED_PAIS: 'BRASIL',
    VED_PAISCODIGO: '1058',
    VED_PEDIDOCLIENTE: '',
    VED_PESOBRUTO: '0',
    VED_PESOLIQ: '0',
    VED_REBOQUEPLACA: '',
    VED_REBOQUEPLACAUF: '',
    VED_REBOQUERNTC: '',
    VED_RG: '',
    VED_SEQUENCIAITEM: '0',
    VED_STATUS: 'A',
    VED_SUFRAMA: '',
    VED_TABELAPRECO: 'V',
    VED_TIPOATENDIMENTO: '',
    VED_TIPOCONSUMIDOR: '',
    VED_TIPOOPERACAO: '1 - OPERACAO INTERNA',
    VED_TOTALADUANA: '0',
    VED_TOTALBRUTO: '0',
    VED_TOTALCOFINS: '0',
    VED_TOTALCOFINSST: '0',
    VED_TOTALCOMISSAO: '0',
    VED_TOTALFCP: '0',
    VED_TOTALFCPST: '0',
    VED_TOTALICMS: '0',
    VED_TOTALICMSCREDSN: '0',
    VED_TOTALICMSST: '0',
    VED_TOTALICMSUFDEST: '0',
    VED_TOTALICMSUFREMET: '0',
    VED_TOTALII: '0',
    VED_TOTALIOF: '0',
    VED_TOTALIPI: '0',
    VED_TOTALISS: '0',
    VED_TOTALISSDEDUCAO: '0',
    VED_TOTALISSDESCCOND: '0',
    VED_TOTALISSDESCINCOND: '0',
    VED_TOTALISSOUTROS: '0',
    VED_TOTALISSRETENCAO: '0',
    VED_TOTALITENS: '0',
    VED_TOTALPIS: '0',
    VED_TOTALPISST: '0',
    VED_TOTALPRODUTOS: '0',
    VED_TOTALSERVICOS: '0',
    VED_TOTALTRIBUTOS: '0',
    VED_TOTALTRIBUTOSEST: '0',
    VED_TOTALTRIBUTOSFED: '0',
    VED_TOTALTRIBUTOSIMP: '0',
    VED_TOTALTRIBUTOSMUN: '0',
    VED_TRANSPCIDADE: '',
    VED_TRANSPCNPJ: '',
    VED_TRANSPCPF: '',
    VED_TRANSPEMAIL: '',
    VED_TRANSPENDERECO: '',
    VED_TRANSPESTADO: '',
    VED_TRANSPFONE: '',
    VED_TRANSPIE: '',
    VED_TRANSPNOME: '',
    VED_TRANSPORTADORA: '',
    VED_USUARIO: '',
    VED_VALORDESPACES: '0',
    VED_VALORFRETE: '0',
    VED_VALORSEGURO: '0',
    VED_VALORTOTAL: '0',
    VED_VEICULOPLACA: '',
    VED_VEICULOPLACAUF: '',
    VED_VEICULORNTC: '',
    VED_VENDEDOR: '',
    VED_VIAINTERNET: 'N',
    VED_VIAINTERNETSTATUS: 'F',
    VED_VOLUMES: '',
    VED_VOLUMESNUM: '',
};

// Campos enviados ao salvar. Datas convertidas de DD/MM/AAAA para AAAA-MM-DD.
const transformarDados = (dados) => ({
    VED_ALIQICMS: dados.VED_ALIQICMS || '',
    VED_CLIENTE: dados.VED_CLIENTE || '',
    VED_CODIGO: dados.VED_CODIGO || '',
    VED_BAIRRO: dados.VED_BAIRRO || '',
    VED_CEP: dados.VED_CEP || '',
    VED_CFOP: dados.VED_CFOP || '',
    VED_CFOPDESC: dados.VED_CFOPDESC || '',
    VED_CIDADE: dados.VED_CIDADE || '',
    VED_CIDADECODIGO: dados.VED_CIDADECODIGO || '',
    VED_CNPJ: dados.VED_CNPJ || '',
    VED_COMISSAO: dados.VED_COMISSAO || '',
    VED_COMISSAOPOR: dados.VED_COMISSAOPOR || '',
    VED_COMPLEMENTO: dados.VED_COMPLEMENTO || '',
    VED_CONDICAO: dados.VED_CONDICAO || '',
    VED_CONTATO: dados.VED_CONTATO || '',
    VED_CPF: dados.VED_CPF || '',
    VED_DESCPORC: dados.VED_DESCPORC || '',
    VED_DESCPORCCLIENTE: dados.VED_DESCPORCCLIENTE || '',
    VED_DESCPORCCONDICAO: dados.VED_DESCPORCCONDICAO || '',
    VED_DESCVALOR: dados.VED_DESCVALOR || '',
    VED_DESTACARIMPOSTOS: dados.VED_DESTACARIMPOSTOS || '',
    VED_DIAPREFERENCIAL: dados.VED_DIAPREFERENCIAL || '',
    VED_DTATUALIZACAO: dados.VED_DTATUALIZACAO || '',
    VED_DTCADASTRO: dados.VED_DTCADASTRO || '',
    VED_DTEMISSAO: formatarDataFb(dados.VED_DTEMISSAO) || '',
    VED_DTPRESTSERVICO: formatarDataFb(dados.VED_DTPRESTSERVICO) || '',
    VED_DTSAIDA: formatarDataFb(dados.VED_DTSAIDA) || '',
    VED_ENDERECO: dados.VED_ENDERECO || '',
    VED_ENTRADASAIDA: dados.VED_ENTRADASAIDA || '',
    VED_ESPECIE: dados.VED_ESPECIE || '',
    VED_ESTADO: dados.VED_ESTADO || '',
    VED_ESTADOCODIGO: dados.VED_ESTADOCODIGO || '',
    VED_EXLOCAL: dados.VED_EXLOCAL || '',
    VED_EXUFSAIDA: dados.VED_EXUFSAIDA || '',
    VED_EXPEDIDOPOR: dados.VED_EXPEDIDOPOR || '',
    VED_FONE1: dados.VED_FONE1 || '',
    VED_FORMAPAGTO: dados.VED_FORMAPAGTO || '',
    VED_FRETE: dados.VED_FRETE || '',
    VED_IDESTRANGEIRO: dados.VED_IDESTRANGEIRO || '',
    VED_IE: dados.VED_IE || '',
    VED_INFOADICFISCO: dados.VED_INFOADICFISCO || '',
    VED_INFOCOMPLEMENTAR: dados.VED_INFOCOMPLEMENTAR || '',
    VED_LACRES: dados.VED_LACRES || '',
    VED_MARCA: dados.VED_MARCA || '',
    VED_MOVIMENTAESTOQUE: dados.VED_MOVIMENTAESTOQUE || '',
    VED_MOVIMENTAFINANCEIRO: dados.VED_MOVIMENTAFINANCEIRO || '',
    VED_NFE: dados.VED_NFE || '',
    VED_NOME: dados.VED_NOME || '',
    VED_NOTA: dados.VED_NOTA || '',
    VED_NUMERO: dados.VED_NUMERO || '',
    VED_OBSERVACOES: dados.VED_OBSERVACOES || '',
    VED_PAIS: dados.VED_PAIS || '',
    VED_PAISCODIGO: dados.VED_PAISCODIGO || '',
    VED_PEDIDOCLIENTE: dados.VED_PEDIDOCLIENTE || '',
    VED_PESOBRUTO: dados.VED_PESOBRUTO || '',
    VED_PESOLIQ: dados.VED_PESOLIQ || '',
    VED_REBOQUEPLACA: dados.VED_REBOQUEPLACA || '',
    VED_REBOQUEPLACAUF: dados.VED_REBOQUEPLACAUF || '',
    VED_REBOQUERNTC: dados.VED_REBOQUERNTC || '',
    VED_RG: dados.VED_RG || '',
    VED_SEQUENCIAITEM: dados.VED_SEQUENCIAITEM || '',
    VED_STATUS: dados.VED_STATUS || '',
    VED_SUFRAMA: dados.VED_SUFRAMA || '',
    VED_TABELAPRECO: dados.VED_TABELAPRECO || '',
    VED_TIPOATENDIMENTO: dados.VED_TIPOATENDIMENTO || '',
    VED_TIPOCONSUMIDOR: dados.VED_TIPOCONSUMIDOR || '',
    VED_TIPOOPERACAO: dados.VED_TIPOOPERACAO || '',
    VED_TOTALADUANA: dados.VED_TOTALADUANA || '',
    VED_TOTALIOF: dados.VED_TOTALIOF || '',
    VED_TOTALISSDEDUCAO: dados.VED_TOTALISSDEDUCAO || '',
    VED_TOTALISSDESCCOND: dados.VED_TOTALISSDESCCOND || '',
    VED_TOTALISSDESCINCOND: dados.VED_TOTALISSDESCINCOND || '',
    VED_TOTALISSOUTROS: dados.VED_TOTALISSOUTROS || '',
    VED_TOTALISSRETENCAO: dados.VED_TOTALISSRETENCAO || '',
    VED_TRANSPORTADORA: dados.VED_TRANSPORTADORA || '',
    VED_VALORDESPACES: dados.VED_VALORDESPACES || '',
    VED_VALORFRETE: dados.VED_VALORFRETE || '',
    VED_VALORSEGURO: dados.VED_VALORSEGURO || '',
    VED_VEICULOPLACA: dados.VED_VEICULOPLACA || '',
    VED_VEICULOPLACAUF: dados.VED_VEICULOPLACAUF || '',
    VED_VEICULORNTC: dados.VED_VEICULORNTC || '',
    VED_VENDEDOR: dados.VED_VENDEDOR || '',
    VED_VOLUMES: dados.VED_VOLUMES || '',
    VED_VOLUMESNUM: dados.VED_VOLUMESNUM || '',
});

function Vendas() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/vendas', 'Vendas listar', logout);
    const [ pesquisa, setPesquisa ] = useState(pesquisaVazia);
    const [ vendaItem, setVendaItem ] = useState({
        VEI_CODIGO: '',
    });
    const [ vendaItens, setVendaItens ] = useState([]);

    const getVendaItens = (dadosCompletos) => {
        setVendaItens(dadosCompletos.ITENS || []);
    };

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        inserir,
        operacao,
        registro: venda,
        salvar,
        setOperacao,
        setRegistro: setVenda,
        visualizar,
    } = useTabela('firenet/vendas', vazio, 'VED_CODIGO', 'VED_NOME', transformarDados, getVendaItens);

    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hEditar    = () => editar(venda);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(filtros(pesquisa), true); }

    const [ showClientesLoc, setShowClientesLoc ] = useState(false);
    const [ showCondicoesLoc, setShowCondicoesLoc ] = useState(false);
    const [ showExpedidoresLoc, setShowExpedidoresLoc ] = useState(false);
    const [ showNaturezasLoc, setShowNaturezasLoc ] = useState(false);
    const [ showVendedoresLoc, setShowVendedoresLoc ] = useState(false);
    const [ showTransportadorasLoc, setShowTransportadorasLoc ] = useState(false);
    const [ showItem, setShowItem ] = useState(false);

    useEffect(() => {
        listar(filtros(pesquisa), true);
    },[]);

    function reset() {
        setPesquisa(pesquisaVazia);
        listar(filtros(pesquisaVazia), true);
    };

    // Busca os parâmetros da empresa e abre uma nova venda com os valores padrão
    async function novo() {
        const formData = new FormData();
        formData.set('op','parametros');
        formData.set('empresa',empresaSelecionada.value);
        try {
            const response = await Api.post('firenet/vendas',formData);
            if (response.data.erro==="S") throw response;
            const par = response.data.msg;
            setVendaItens([]);
            inserir({
                VED_ALIQICMSCREDSN: par.PAR_CREDITOICMSSN || '0',
                VED_CFOP: par.PAR_CFOPPADRAO || '',
                VED_CFOPDESC: par.NAT_DESCRICAO || '',
                VED_COMISSAOPOR: par.PAR_COMISSAOPOR || '',
                VED_DESTACARIMPOSTOS: par.NAT_DESTACARIMPOSTOS || '',
                VED_ENTRADASAIDA: par.NAT_ENTRADASAIDA || 'S',
                VED_ESPECIE: par.PAR_ESPECIEPADRAO || '',
                VED_FRETE: par.PAR_FRETEPORCONTA || '',
                VED_INFOADICFISCO: par.NAT_OBSERVACOES || '',
                VED_MARCA: par.PAR_MARCAPADRAO || '',
                VED_MOVIMENTAESTOQUE: par.NAT_MOVIMENTAESTOQUE || '',
                VED_MOVIMENTAFINANCEIRO: par.NAT_MOVIMENTAFINANCEIRO || '',
                VED_TIPOATENDIMENTO: par.PAR_NFETIPOATENDIMENTO || '',
                VED_TIPOCONSUMIDOR: par.PAR_NFETIPOCONSUMIDOR || '',
            });
        } catch (error) {
            tratarCatch('Vendas novo',error,logout);
        }
    }

    async function gerarNFe(item) {
        const confirmou = await PettMensagem.confirmar('Gerar NFe?','Tem certeza que deseja gerar a NFe '+item.nome+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','gerarnfe');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('VED_CODIGO',item.codigo);
            try {
                const response = await Api.post('firenet/vendas',formData);
                if (response.data.erro==='N') {
                    PettMensagem.sucesso('Yessss!','NFe gerada com sucesso.');
                    setVenda(response.data.msg);
                    //setVendaItens(response.data.msg.ITENS);
                    setVendaItens([]);
                } else {
                    response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
                }
            } catch (error) {
                tratarCatch('Vendas finalizar',error,logout);
            }
        }
    }

    async function inutilizar(item) {
        const confirmou = await PettMensagem.confirmar('Inutilizar pedido de venda?','Tem certeza que deseja inutilizar a venda de '+item.nome+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','inutilizar');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('VED_CODIGO',item.codigo);
            try {
                const response = await Api.post('firenet/vendas',formData);
                if (response.data.erro==='N') {
                    PettMensagem.sucesso('Yessss!','Venda inutilizada com suceeso.');
                    setVenda(response.data.msg);
                    setVendaItens(response.data.msg.ITENS);
                } else {
                    response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
                }
            } catch (error) {
                tratarCatch('Vendas inutilizar',error,logout);
            }
        }
    }

    async function status(item) {
        const formData = new FormData();
        formData.set('op','status');
        formData.set('empresa',empresaSelecionada.value);
        try {
            const response = await Api.post('firenet/nfes',formData);
            if (response.data.erro==='N') {
                PettMensagem.sucesso('Yessss!',response.data.msg);
            } else {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('Vendas status',error,logout);
        }
    }

    const onRowSelect = (event) => {
        visualizar(event.VED_CODIGO);
        // toast.current.show({ severity: 'info', summary: 'Product Selected', detail: `Name: ${event.data.name}`, life: 3000 });
    };

    //para abrir o modal do item
    function novoItem() {
        setVendaItem({
            VEI_CODIGO: '',
            VEI_CONSULTA: '',
            VEI_DESCRICAO: '',
            VEI_EXAME: '',
            VEI_SIGLA: '',
            VEI_VALOR: ''
        });
        setShowItem(true);
    }

    async function itemClose(item) {
        // if (typeof item === 'object' && item !== null) {
        if (Object.keys(item).length > 0) {
            console.log('áaaa',item);
            setVenda(item);
            setVendaItens(item.ITENS);
        }
        setShowItem(false);
        setVendaItem({
            VEI_CODIGO: '',
        });
    }

    const onRowSelectItem = (event) => {
        if (operacao==="visualizar") {
            setVendaItem(event);
            setShowItem(true);
        }
    };

    const bodyStatus = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.VED_STATUS==='A'}>
                    <span className="badge bg-primary">ABERTO</span>
                </PettIf>
                <PettIf condicional={rowData.VED_STATUS==='F'}>
                    <span className="badge bg-success">FINALIZADO</span>
                </PettIf>
                <PettIf condicional={rowData.VED_STATUS==='C'}>
                    <span className="badge bg-danger">CANCELADO</span>
                </PettIf>
                <PettIf condicional={rowData.VED_STATUS==='I'}>
                    <span className="badge bg-warning">INUTILIZADO</span>
                </PettIf>
            </React.Fragment>
        );
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Pedidos de Vendas" linkBack="/">
            <PettButton caption="Localizar"       icone="search"      click={hListagem}                                                            condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"            icone="plus"        click={novo}                                                                 condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Editar"          icone="pencil"      click={hEditar}                                                              condicional={operacao==="visualizar" && venda.VED_STATUS==="A"}/>
            <PettButton caption="Gerar NFe"       icone="flash_green" click={ () => gerarNFe({codigo: venda.VED_CODIGO, nome: venda.VED_NOME}) }   condicional={operacao==="visualizar" && venda.VED_STATUS==="A"}/>
            <PettButton caption="Inutilizar"      icone="flash_red"   click={ () => inutilizar({codigo: venda.VED_CODIGO, nome: venda.VED_NOME}) } condicional={operacao==="visualizar" && venda.VED_STATUS==="A"}/>
            <PettButton caption="Salvar"          icone="checkmark"   click={hSalvar}                                                              condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"        icone="cancel"      click={cancelarInsercao}                                                     condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"        icone="cancel"      click={cancelarEdicao}                                                       condicional={operacao==="atualizar"}/>
            <PettButton caption="Consulta Status" icone="eye"         click={status}                                                               condicional={operacao==="listar"}/>
            <AtualizadoPor usuario={venda.VED_USUARIO} data={venda.VED_DTATUALIZACAO} hora={venda.VED_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-4">
                        {/* <PettFieldText size="col-lg-2 col-md-4 col-sm-6 mb-1" label="CÓDIGO" name="VED_CODIGO" value={venda.VED_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6 mb-1" label="NOTA" name="VED_NOTA" value={venda.VED_NOTA} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6 mb-1" label="NFE" name="VED_NFE" value={venda.VED_NFE} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6 mb-1" label="STATUS" name="VED_STATUS" value={venda.VED_STATUS} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6 mb-1" label="DATA EMISSÃO" name="VED_DTEMISSAO" value={formatarDataStr(venda.VED_DTEMISSAO)} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6 mb-1" label="VALOR TOTAL" name="VED_VALORTOTAL" value={venda.VED_VALORTOTAL} readOnly disabled/> */}

                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Código: <span className="fw-bold">{venda.VED_CODIGO}</span></div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Num. Nota: <span className="fw-bold">{venda.VED_NOTA}</span></div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Num. NFe: <span className="fw-bold">{venda.VED_NFE}</span></div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Status:&nbsp;
                            <PettIf condicional={venda.VED_STATUS==='A'}><span className="badge bg-primary">ABERTO</span></PettIf>
                            <PettIf condicional={venda.VED_STATUS==='C'}><span className="badge bg-danger">CANCELADO</span></PettIf>
                            <PettIf condicional={venda.VED_STATUS==='F'}><span className="badge bg-success">FINALIZADO</span></PettIf>
                            <PettIf condicional={venda.VED_STATUS==='I'}><span className="badge bg-warning">INUTILIZADO</span></PettIf>
                        </div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Emissão: <span className="fw-bold">{formatarDataStr(venda.VED_DTEMISSAO)}</span></div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Valor Total: <span className="fw-bold">{formatarMoedaStr(venda.VED_VALORTOTAL)}</span></div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Entrada/Saída:&nbsp;
                            <PettIf condicional={venda.VED_ENTRADASAIDA==='E'}><span className="badge bg-primary">ENTRADA</span></PettIf>
                            <PettIf condicional={venda.VED_ENTRADASAIDA==='S'}><span className="badge bg-success">SAÍDA</span></PettIf>
                        </div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Entregue:&nbsp;
                            <PettIf condicional={venda.VED_ENTREGUE==='S'}><span className="badge bg-success">SIM</span></PettIf>
                            <PettIf condicional={venda.VED_ENTREGUE==='N'}><span className="badge bg-danger">NÃO</span></PettIf>
                        </div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Mov. Estoque:&nbsp;
                            <PettIf condicional={venda.VED_MOVIMENTAESTOQUE==='S'}><span className="badge bg-success">SIM</span></PettIf>
                            <PettIf condicional={venda.VED_MOVIMENTAESTOQUE==='N'}><span className="badge bg-danger">NÃO</span></PettIf>
                        </div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Mov. Financeiro:&nbsp;
                            <PettIf condicional={venda.VED_MOVIMENTAFINANCEIRO==='S'}><span className="badge bg-success">SIM</span></PettIf>
                            <PettIf condicional={venda.VED_MOVIMENTAFINANCEIRO==='N'}><span className="badge bg-danger">NÃO</span></PettIf>
                        </div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Via Internet:&nbsp;
                            <PettIf condicional={venda.VED_VIAINTERNET==='S'}><span className="badge bg-success">SIM</span></PettIf>
                            <PettIf condicional={venda.VED_VIAINTERNET==='N'}><span className="badge bg-danger">NÃO</span></PettIf>
                        </div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Via Internet Status:&nbsp;
                            <PettIf condicional={venda.VED_VIAINTERNETSTATUS==='A'}><span className="badge bg-primary">ABERTO</span></PettIf>
                            <PettIf condicional={venda.VED_VIAINTERNETSTATUS==='F'}><span className="badge bg-success">FINALIZADO</span></PettIf>
                        </div>
                    </div>

                    <PettTab className="mb-5">
                        <PettTabPanel header="Geral">
                            <div className="row mb-3 g-1">
                                <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CLIENTE" name="VED_CLIENTE" value={String(venda.VED_CLIENTE)} set={setVenda} onClick={() => setShowClientesLoc(true)} onBlur={(e) => localizar(CLIENTES, e.target.value, setVenda, mapaClientes)} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME CLIENTE" name="VED_NOME" value={venda.VED_NOME} readOnly disabled/>
                                <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CFOP" name="VED_CFOP" value={venda.VED_CFOP} set={setVenda} onClick={() => setShowNaturezasLoc(true)} onBlur={(e) => localizar(NATUREZAS, e.target.value, setVenda, mapaNaturezas)} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CFOP" name="VED_CFOPDESC" value={venda.VED_CFOPDESC} readOnly disabled/>
                                <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="VENDEDOR" name="VED_VENDEDOR" value={venda.VED_VENDEDOR} set={setVenda} onClick={() => setShowVendedoresLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, setVenda, mapaVendedores)} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME VENDEDOR" name="VEN_NOME" value={venda.VEN_NOME} readOnly disabled/>
                                <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="EXPEDIDO POR" name="VED_EXPEDIDOPOR" value={venda.VED_EXPEDIDOPOR} set={setVenda} onClick={() => setShowExpedidoresLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, setVenda, mapaExpedidores)} readOnly={disableFields} disabled={disableFields}/>                          
                                <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME EXPEDIDO POR" name="VEN_NOME1" value={venda.VEN_NOME1} readOnly disabled/>                          
                                <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="CONTATO" name="VED_CONTATO" value={venda.VED_CONTATO} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="TIPO ATENDIMENTO" name="VED_TIPOATENDIMENTO" value={venda.VED_TIPOATENDIMENTO} set={setVenda} options={selectTipoAtendimento} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="TIPO OPERAÇÃO" name="VED_TIPOOPERACAO" value={venda.VED_TIPOOPERACAO} set={setVenda} options={selectTipoOperacao} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="TIPO CONSUMIDOR" name="VED_TIPOCONSUMIDOR" value={venda.VED_TIPOCONSUMIDOR} set={setVenda} options={selectTipoConsumidor} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PEDIDO CLIENTE" name="VED_PEDIDOCLIENTE" value={venda.VED_PEDIDOCLIENTE} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="% COMISSÃO" name="VED_COMISSAO" value={venda.VED_COMISSAO} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="TOTAL COMISSÃO" name="VED_TOTALCOMISSAO" value={venda.VED_TOTALCOMISSAO} readOnly disabled/>
                                {/* <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ENTRADA/SAÍDA" name="VED_ENTRADASAIDA" value={venda.VED_ENTRADASAIDA} readOnly disabled/> */}
                                {/* <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MOV. ESTOQUE" name="VED_MOVIMENTAESTOQUE" value={venda.VED_MOVIMENTAESTOQUE} readOnly disabled/> */}
                                {/* <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MOV. FINANCEIRO" name="VED_MOVIMENTAFINANCEIRO" value={venda.VED_MOVIMENTAFINANCEIRO} readOnly disabled/> */}
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="VED_DTCADASTRO" value={formatarDataStr(venda.VED_DTCADASTRO)} readOnly disabled/>
                                {/* <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ENTREGUE" name="VED_ENTREGUE" value={venda.VED_ENTREGUE} readOnly disabled/> */}
                                <PettFieldMask size="col-lg-2 col-md-4 col-sm-6" label="DATA SAÍDA" name="VED_DTSAIDA" value={venda.VED_DTSAIDA} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA BAIXA" name="VED_DTBAIXA" value={formatarDataStr(venda.VED_DTBAIXA)} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="BAIXADO POR" name="VED_BAIXAPOR" value={venda.VED_BAIXAPOR} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CONFERIDO EM" name="VED_CONFERIDOEM" value={venda.VED_CONFERIDOEM} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CONFERIDO POR" name="VED_CONFERIDOPOR" value={venda.VED_CONFERIDOPOR} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MANUAL" name="VED_MANUAL" value={venda.VED_MANUAL} readOnly disabled/>
                                {/* <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VIA INTERNET" name="VED_VIAINTERNET" value={venda.VED_VIAINTERNET} readOnly disabled/> */}
                                {/* <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VIA INTERNET STATUS" name="VED_VIAINTERNETSTATUS" value={venda.VED_VIAINTERNETSTATUS} readOnly disabled/> */}
                                <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="OBSERVAÇÕES" name="VED_OBSERVACOES" value={venda.VED_OBSERVACOES} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="INFORMAÇÕES ADICIONAIS FISCO" name="VED_INFOADICFISCO" value={venda.VED_INFOADICFISCO} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="INFORMAÇÕES COMPLEMENTARES" name="VED_INFOCOMPLEMENTAR" value={venda.VED_INFOCOMPLEMENTAR} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                            </div>

                            <div className="box mb-1">
                                <PettIf condicional={operacao==="visualizar" && venda.VED_STATUS==="A"}>
                                    <PettButton caption="Inserir Item" icone="plus" click={novoItem} />
                                </PettIf>
                                <PettIf condicional={operacao==="visualizar" && venda.VED_STATUS!=="A"}>
                                    <span className="ms-2">Este pedido não está em aberto.</span>
                                </PettIf>
                                <PettIf condicional={operacao==="inserir" || operacao==="atualizar"}>
                                    <span className="ms-2">Salve ou Cancele as alterações antes de inserir/alterar itens</span>
                                </PettIf>
                            </div>
                            <PettGrid className="mt-4" listagem={vendaItens} rowSelect={onRowSelectItem}>
                                <PettColumn field="VEI_CODIGO" header="Código"></PettColumn>
                                <PettColumn field="VEI_VENDA" header="Venda"></PettColumn>
                                <PettColumn field="VEI_SEQUENCIA" header="Seq" align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="VEI_PRODUTO" header="Produto" align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="VEI_DESCRICAO" header="Descrição"></PettColumn>
                                <PettColumn field="VEI_QUANTIDADE" header="Quantidade" align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="VEI_VALORUNIT" header="Valor Unitário" body={(rowData) => formatarMoeda(rowData,'VEI_VALORUNIT')} align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="VEI_VALORIPI" header="Valor IPI" body={(rowData) => formatarMoeda(rowData,'VEI_VALORIPI')} align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="VEI_VALORTOTAL" header="Valor Total" body={(rowData) => formatarMoeda(rowData,'VEI_VALORTOTAL')} align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="VEI_CFOP" header="CFOP" align="center" alignHeader="center"></PettColumn>
                                <PettColumn field="VEI_CLASSFISCAL" header="NCM" align="center" alignHeader="center"></PettColumn>
                                <PettColumn field="VEI_ALIQICMS" header="ICMS" align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="VEI_ALIQIPI" header="IPI" align="right" alignHeader="right"></PettColumn>
                                {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
                            </PettGrid>
                        </PettTabPanel>
                        <PettTabPanel header="Transportadora">
                            <div className="row mb-3 g-1">
                                <PettFieldDrop size="col-lg-2 col-md-4 col-sm-4" label="FRETE" name="VED_FRETE" value={venda.VED_FRETE} set={setVenda} options={selectFrete} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="TRANSPORTADORA" name="VED_TRANSPORTADORA" value={venda.VED_TRANSPORTADORA} set={setVenda} onClick={() => setShowTransportadorasLoc(true)} onBlur={(e) => localizar(FORNECEDORES, e.target.value, setVenda, mapaTransportadoras)} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME TRANSPORTADORA" name="VED_TRANSPNOME" value={venda.VED_TRANSPNOME} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VOLUMES" name="VED_VOLUMES" value={venda.VED_VOLUMES} set={setVenda} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="NUMERAÇÃO VOLUMES" name="VED_VOLUMESNUM" value={venda.VED_VOLUMESNUM} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ESPÉCIE" name="VED_ESPECIE" value={venda.VED_ESPECIE} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MARCA" name="VED_MARCA" value={venda.VED_MARCA} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="LACRES" name="VED_LACRES" value={venda.VED_LACRES} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="PESO BRUTO" name="VED_PESOBRUTO" value={venda.VED_PESOBRUTO} set={setVenda} minDigits={3} maxDigits={3} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="PESO LÍQUIDO" name="VED_PESOLIQ" value={venda.VED_PESOLIQ} set={setVenda} minDigits={3} maxDigits={3} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VEÍCULO PLACA" name="VED_VEICULOPLACA" value={venda.VED_VEICULOPLACA} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VEÍCULO PLACA UF" name="VED_VEICULOPLACAUF" value={venda.VED_VEICULOPLACAUF} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VEÍCULO RNTC" name="VED_VEICULORNTC" value={venda.VED_VEICULORNTC} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="REBOQUE PLACA" name="VED_REBOQUEPLACA" value={venda.VED_REBOQUEPLACA} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="REBOQUE PLACA UF" name="VED_REBOQUEPLACAUF" value={venda.VED_REBOQUEPLACAUF} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="REBOQUE RNTC" name="VED_REBOQUERNTC" value={venda.VED_REBOQUERNTC} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                            </div>
                        </PettTabPanel>
                        <PettTabPanel header="Forma Pagamento">
                            <div className="row mb-3 g-1">
                                <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CONDIÇÃO" name="VED_CONDICAO" value={venda.VED_CONDICAO} set={setVenda} onClick={() => setShowCondicoesLoc(true)} onBlur={(e) => localizar(CONDICOES, e.target.value, setVenda, mapaCondicoes)} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CONDIÇÃO" name="CPG_DESCRICAO" value={venda.CPG_DESCRICAO} readOnly disabled/>
                                <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="MEIO PAGAMENTO" name="CPG_MEIOPAGAMENTO" value={venda.CPG_MEIOPAGAMENTO} readOnly disabled/>
                                <PettFieldDrop size="col-lg-6 col-md-6 col-sm-6" label="FORMA PAGAMENTO" name="VED_FORMAPAGTO" value={venda.VED_FORMAPAGTO} set={setVenda} options={selectFormaPagamento} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="DIA PREFERENCIAL" name="VED_DIAPREFERENCIAL" value={venda.VED_DIAPREFERENCIAL} set={setVenda} options={selectDiaVencimento} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="SIMULAÇÃO" name="VED_CONDICAOMEMO" value={venda.VED_CONDICAOMEMO} rows={10} autoResize readOnly disabled font="font-monospace"/>
                            </div>
                        </PettTabPanel>
                        <PettTabPanel header="Totais">
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL PRODUTOS" name="VED_TOTALPRODUTOS" value={venda.VED_TOTALPRODUTOS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL SERVIÇOS" name="VED_TOTALSERVICOS" value={venda.VED_TOTALSERVICOS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL ITENS" name="VED_TOTALITENS" value={venda.VED_TOTALITENS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL BRUTO" name="VED_TOTALBRUTO" value={venda.VED_TOTALBRUTO} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="VALOR FRETE" name="VED_VALORFRETE" value={venda.VED_VALORFRETE} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="VALOR SEGURO" name="VED_VALORSEGURO" value={venda.VED_VALORSEGURO} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="VALOR DESP. ACESSÓRIAS" name="VED_VALORDESPACESS" value={venda.VED_VALORDESPACESS} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="% DESCONTO" name="VED_DESCPORC" value={venda.VED_DESCPORC} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="VALOR DESCONTO" name="VED_DESCVALOR" value={venda.VED_DESCVALOR} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="VALOR TOTAL" name="VED_VALORTOTAL" value={venda.VED_VALORTOTAL} readOnly disabled/>
                            </div>

                            <strong>Totais ICMS</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC." name="VED_BASEICMS" value={venda.VED_BASEICMS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="VED_TOTALICMS" value={venda.VED_TOTALICMS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC. ST" name="VED_BASEICMSST" value={venda.VED_BASEICMSST} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL ST" name="VED_TOTALICMSST" value={venda.VED_TOTALICMSST} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL UF DEST" name="VED_TOTALICMSUFDEST" value={venda.VED_TOTALICMSUFDEST} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL UF REMET" name="VED_TOTALICMSUFREMET" value={venda.VED_TOTALICMSUFREMET} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL FCP" name="VED_TOTALFCP" value={venda.VED_TOTALFCP} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL FCP ST" name="VED_TOTALFCPST" value={venda.VED_TOTALFCPST} readOnly disabled/>
                            </div>

                            <strong>Totais PIS</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC." name="VED_BASEPIS" value={venda.VED_BASEPIS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="VED_TOTALPIS" value={venda.VED_TOTALPIS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC. ST" name="VED_BASEPISST" value={venda.VED_BASEPISST} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL ST" name="VED_TOTALPISST" value={venda.VED_TOTALPISST} readOnly disabled/>
                            </div>

                            <strong>Totais COFINS</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC." name="VED_BASECOFINS" value={venda.VED_BASECOFINS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="VED_TOTALCOFINS" value={venda.VED_TOTALCOFINS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC. ST" name="VED_BASECOFINSST" value={venda.VED_BASECOFINSST} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL ST" name="VED_TOTALCOFINSST" value={venda.VED_TOTALCOFINSST} readOnly disabled/>
                            </div>

                            <strong>Totais ISS</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC." name="VED_BASEISS" value={venda.VED_BASEISS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="VED_TOTALISS" value={venda.VED_TOTALISS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="DEDUÇÃO" name="VED_TOTALISSDEDUCAO" value={venda.VED_TOTALISSDEDUCAO} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="DESC. COND." name="VED_TOTALISSDESCCOND" value={venda.VED_TOTALISSDESCCOND} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="DESC. INCOND." name="VED_TOTALISSDESCINCOND" value={venda.VED_TOTALISSDESCINCOND} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="OUTROS" name="VED_TOTALISSOUTROS" value={venda.VED_TOTALISSOUTROS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="RETENÇÃO" name="VED_TOTALISSRETENCAO" value={venda.VED_TOTALISSRETENCAO} readOnly disabled/>
                                <PettFieldDate size="col-lg-2 col-md-6 col-sm-6" label="DATA PREST. SERV." name="VED_DTPRESTSERVICO" value={venda.VED_DTPRESTSERVICO} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                            </div>

                            <strong>Totais IPI</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC." name="VED_BASEIPI" value={venda.VED_BASEIPI} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="VED_TOTALIPI" value={venda.VED_TOTALIPI} readOnly disabled/>
                            </div>

                            <strong>Totais II</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC." name="VED_BASEII" value={venda.VED_BASEII} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="VED_TOTALII" value={venda.VED_TOTALII} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL ADUANA" name="VED_TOTALADUANA" value={venda.VED_TOTALADUANA} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL IOF" name="VED_TOTALIOF" value={venda.VED_TOTALIOF} readOnly disabled/>
                            </div>

                            <strong>Totais Simples Nacional</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="% CRÉDITO" name="VED_ALIQICMSCREDSN" value={venda.VED_ALIQICMSCREDSN} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="VED_TOTALICMSCREDSN" value={venda.VED_TOTALICMSCREDSN} readOnly disabled/>
                            </div>

                            <strong>Totais Tributos</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="FEDERAL" name="VED_TOTALTRIBUTOSFED" value={venda.VED_TOTALTRIBUTOSFED} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="ESTADUAL" name="VED_TOTALTRIBUTOSEST" value={venda.VED_TOTALTRIBUTOSEST} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="MUNICIPAL" name="VED_TOTALTRIBUTOSMUN" value={venda.VED_TOTALTRIBUTOSMUN} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="IMPORTAÇÃO" name="VED_TOTALTRIBUTOSIMP" value={venda.VED_TOTALTRIBUTOSIMP} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="VED_TOTALTRIBUTOS" value={venda.VED_TOTALTRIBUTOS} readOnly disabled/>                            
                            </div>
                        </PettTabPanel>
                    </PettTab>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-3 g-1">
                    <PettFieldText size="col-xl-1 col-lg-2 col-md-3 col-sm-4" label="CÓDIGO" name="VED_CODIGO" value={pesquisa.VED_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldDate size="col-xl-2 col-lg-2 col-md-3 col-sm-4" label="DATA INICIAL" name="datainicial" value={pesquisa.datainicial} set={setPesquisa}/>
                    <PettFieldDate size="col-xl-2 col-lg-2 col-md-3 col-sm-4" label="DATA FINAL" name="datafinal" value={pesquisa.datafinal} set={setPesquisa}/>
                    <PettFieldDrop size="col-xl-2 col-lg-2 col-md-3 col-sm-4" label="STATUS" name="VED_STATUS" value={pesquisa.VED_STATUS} options={selectStatusVendas} set={setPesquisa}/>
                    <PettFieldText size="col-xl-1 col-lg-2 col-md-2 col-sm-3" label="CÓDIGO CLIENTE" name="VED_CLIENTE" value={pesquisa.VED_CLIENTE} set={setPesquisa} />
                    <PettFieldText size="col-xl-3 col-lg-4 col-md-6 col-sm-5" label="CLIENTE" name="VED_NOME" value={pesquisa.VED_NOME} set={setPesquisa} />
                    <PettFieldText size="col-xl-1 col-lg-2 col-md-4 col-sm-4" label="PEDIDO CLIENTE" name="VED_PEDIDOCLIENTE" value={pesquisa.VED_PEDIDOCLIENTE} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="VED_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="VED_NFE" header="Cód. NFe" sortable ></PettColumn>
                    <PettColumn field="VED_CLIENTE" header="Cliente" sortable ></PettColumn>
                    <PettColumn field="VED_NOME" header="Nome Cliente" sortable></PettColumn>
                    <PettColumn field="VED_STATUS" body={bodyStatus} header="Status" align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="VED_DTEMISSAO" header="Emissão" body={(rowData) => formatarDataStr2(rowData,'VED_DTEMISSAO')} sortable ></PettColumn>
                    <PettColumn field="VED_VALORTOTAL" header="Valor Total" body={(rowData) => formatarMoeda(rowData,'VED_VALORTOTAL')} alignHeader="right" bodyStyle={{ textAlign: 'right' }}></PettColumn>
                    <PettColumn field="VED_VENDEDOR" header="Vendedor" align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="VEN_NOME" header="Nome Vendedor"></PettColumn>
                    <PettColumn field="VED_PEDIDOCLIENTE" header="N. Ped. Cliente" align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="VED_VIAINTERNET" header="Via Internet" align="center" alignHeader="center"></PettColumn>
                        {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, filtros(pesquisa))} carregando={carregando} final={final} length={listagem.length} erro={erro}/>
            </ColunaCentral>
        </PettIf>           
    
        <Rodape />
        <ClientesLoc showModal={showClientesLoc} onCloseModal={(data) => { selecionar(data, setVenda, mapaClientes); setShowClientesLoc(false); }}/>
        <CondicoesLoc showModal={showCondicoesLoc} onCloseModal={(data) => { selecionar(data, setVenda, mapaCondicoes); setShowCondicoesLoc(false); }}/>
        <FornecedoresLoc showModal={showTransportadorasLoc} onCloseModal={(data) => { selecionar(data, setVenda, mapaTransportadoras); setShowTransportadorasLoc(false); }}/>
        <NaturezasLoc showModal={showNaturezasLoc} onCloseModal={(data) => { selecionar(data, setVenda, mapaNaturezas); setShowNaturezasLoc(false); }}/>
        <VendedoresLoc showModal={showVendedoresLoc} onCloseModal={(data) => { selecionar(data, setVenda, mapaVendedores); setShowVendedoresLoc(false); }}/>
        <VendedoresLoc showModal={showExpedidoresLoc} onCloseModal={(data) => { selecionar(data, setVenda, mapaExpedidores); setShowExpedidoresLoc(false); }}/>
        <VendasItens showModal={showItem} onCloseModal={itemClose} venda={venda} item={vendaItem} />
    </>
}

export default Vendas;
