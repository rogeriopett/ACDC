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
import NfesItens from './NfesItens';
import VendedoresLoc from '../../Componentes/Localizadores/VendedoresLoc';
import { selectDiaVencimento, selectFormaPagamento, selectFrete, selectStatusVendas, selectTipoAtendimento, selectTipoConsumidor, selectTipoOperacao } from '../../Combox.js';
import { primeiroDiaMes, ultimoDiaMes, formatarDataStr, formatarDataStr2, formatarMoeda, tratarCatch, formatarDataFb, hoje, formatarMoedaStr } from '../../Funcoes';
import { useLocalizar, CLIENTES, CONDICOES, FORNECEDORES, NATUREZAS, VENDEDORES  } from '../../Hooks/useLocalizar';

const mapaClientes        = { NFE_CLIENTE: 'CLI_CODIGO', NFE_CONDICAO: 'CLI_CONDICAO', NFE_CONTATO: 'CLI_CONTATO', NFE_FORMAPAGTO: 'CPG_FORMAPAGTO', NFE_NOME: 'CLI_NOME', NFE_TIPOCONSUMIDOR: 'CLI_TIPOCONSUMIDOR', CPG_DESCRICAO: 'CPG_DESCRICAO', CPG_MEIOPAGAMENTO: 'CPG_MEIOPAGAMENTO' };
const mapaCondicoes       = { NFE_CONDICAO: 'CPG_CODIGO', NFE_FORMAPAGTO: 'CPG_FORMAPAGTO', CPG_DESCRICAO: 'CPG_DESCRICAO', CPG_MEIOPAGAMENTO: 'CPG_MEIOPAGAMENTO' };
const mapaExpedidores     = { NFE_EXPEDIDOPOR: 'VEN_CODIGO', VEN_NOME1: 'VEN_NOME' };
const mapaNaturezas       = { NFE_CFOP: 'NAT_CODIGO', NFE_CFOPDESC: 'NAT_DESCRICAO', NFE_ENTRADASAIDA: 'NAT_ENTRADASAIDA', NFE_MOVIMENTAESTOQUE: 'NAT_MOVIMENTAESTOQUE', NFE_MOVIMENTAFINANCEIRO: 'NAT_MOVIMENTAFINANCEIRO' };
const mapaTransportadoras = { NFE_TRANSPORTADORA: 'FOR_CODIGO', NFE_TRANSPNOME: 'FOR_NOME' };
const mapaVendedores      = { NFE_VENDEDOR: 'VEN_CODIGO', VEN_NOME: 'VEN_NOME' };

function Nfes() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const [ listagem, setListagem ] = useState([]);
    const [ carregando, setCarregando ] = useState(false);
    const [ pagina, setPagina ] = useState(0);
    const [ final, setFinal ] = useState(false);
    const [ erro, setErro ] = useState(false);
    const [ disableFields, setDisableFields ] = useState(true);
    const [ pesquisa, setPesquisa ] = useState({
        // campo: 'CLI_NOME',
        datainicial: formatarDataFb(primeiroDiaMes()),
        datafinal: formatarDataFb(ultimoDiaMes()),
        NFE_CLIENTE: '',
        NFE_CODIGO: '',
        NFE_NOME: '',
        NFE_PEDIDOCLIENTE: '',
        NFE_STATUS: 'T',
    });
    const [ nfeOri, setNfeOri ] = useState({});
    const [ nfe, setNfe ] = useState({
        NFE_CLIENTE: '',
        NFE_CODIGO: '',
        NFE_STATUS: 'A',
    });
    const [ nfeItem, setNfeItem ] = useState({
        NFI_CODIGO: '',
    });
    const [ nfeItens, setNfeItens ] = useState([]);
    const [ operacao, setOperacao ] = useState('inserir');
    const [ operacaoItem, setOperacaoItem ] = useState('inserir');
    const [ showClientesLoc, setShowClientesLoc ] = useState(false);
    const [ showCondicoesLoc, setShowCondicoesLoc ] = useState(false);
    const [ showExpedidoresLoc, setShowExpedidoresLoc ] = useState(false);
    const [ showNaturezasLoc, setShowNaturezasLoc ] = useState(false);
    const [ showVendedoresLoc, setShowVendedoresLoc ] = useState(false);
    const [ showTransportadorasLoc, setShowTransportadorasLoc ] = useState(false);
    const [ showItem, setShowItem ] = useState(false);
    
    async function listar(nPagina,bFinal,bLimpar) {
        if (!bFinal) {
            setCarregando(true);    
            const novaPagina=nPagina+1;
                        
            var formData = new FormData();
            formData.set('op', 'listar');
            formData.set('pagina', novaPagina);
            formData.set('empresa', empresaSelecionada.value);
            formData.set('datainicial', formatarDataFb(pesquisa.datainicial));
            formData.set('datafinal', formatarDataFb(pesquisa.datafinal));
            formData.set('NFE_CLIENTE', pesquisa.NFE_CLIENTE);
            formData.set('NFE_NOME', pesquisa.NFE_NOME);
            formData.set('NFE_CODIGO', pesquisa.NFE_CODIGO);
            formData.set('NFE_PEDIDOCLIENTE', pesquisa.NFE_PEDIDOCLIENTE);
            formData.set('NFE_STATUS', pesquisa.NFE_STATUS);
            try {
                const response = await Api.post('firenet/nfes',formData);
                if (response.data.erro==='N') {
                    const novaListagem = [];
                    if (response.data.contador > 0) {
                        if (!bLimpar) {
                            novaListagem.push(...listagem); //novalistagem recebe listagem atual.
                            setListagem([]);
                        }
                        novaListagem.push(...response.data.msg); //novalistagem recebe mais a nova listagem.
                    } else {
                        //se ja tem uma listagem, continua com ela
                        //se a pesquisa retornou 30 registros, ao dar scroll para a pagina 2 que retorna com 0 registros, continua com a listagem atual.
                        if (novaPagina > 1) { 
                            novaListagem.push(...listagem); 
                        }
                    }

                    //verifica se pode conter mais registros. 
                    //se retornou com 30 registros, pode ser que ainda tenha mais.
                    //se retornou com menos de 30 registros, é pq chegou no final da lista.
                    if (response.data.contador < response.data.rpp) {
                        setFinal(true);
                    }

                    setListagem(novaListagem);
                    setCarregando(false);
                    setPagina(novaPagina);
                    setErro(false);
                } else {
                    response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
                }
            } catch (error) {
                tratarCatch('Nfes listar',error,logout);
                setCarregando(false);
                setErro(true);
            }
        }
    }

    useEffect(() => {
        setOperacao('');
    },[]);

    function carregarMais() {
        listar(pagina,final,false);
    }

    function registroNulo(valoresPadrao) {
        setNfe({
            NFE_ALIQICMSCREDSN: valoresPadrao.PAR_CREDITOICMSSN || '0',
            NFE_BAIRRO: '',
            NFE_BAIXADATA: '',
            NFE_BAIXAPOR: '',
            NFE_BASECOFINS: '0',
            NFE_BASECOFINSST: '0',
            NFE_BASEICMS: '0',
            NFE_BASEICMSST: '0',
            NFE_BASEII: '0',
            NFE_BASEIPI: '0',
            NFE_BASEISS: '0',
            NFE_BASEPIS: '0',
            NFE_BASEPISST: '0',
            NFE_CEP: '',
            NFE_CFOP: valoresPadrao.PAR_CFOPPADRAO || '',
            NFE_CFOPDESC: valoresPadrao.NAT_DESCRICAO || '',
            NFE_CIDADE: '',
            NFE_CIDADECODIGO: '',
            NFE_CNPJ: '',
            NFE_CODIGO: '',
            NFE_CODIMPORTACAO: '',
            NFE_CLIENTE: '',
            NFE_COMISSAO: '0',
            NFE_COMISSAOPOR: valoresPadrao.PAR_COMISSAOPOR || '',
            NFE_COMPLEMENTO: '',
            NFE_CONDICAO: '',
            NFE_CONDICAOMEMO: '',
            NFE_CONFERIDO: 'N',
            NFE_CONFERIDODATA: '',
            NFE_CONFERIDOPOR: '',
            NFE_CONTATO: '',
            NFE_CPF: '',
            NFE_CUSTOTOTAL: '0',
            NFE_DESCPORC: '0',
            NFE_DESCPORCCLIENTE: '0',
            NFE_DESCPORCCONDICAO: '0',
            NFE_DESCVALOR: '0',
            NFE_DESTACARIMPOSTOS: valoresPadrao.NAT_DESTACARIMPOSTOS || '',
            NFE_DIAPREFERENCIAL: '0',
            NFE_DTATUALIZACAO: '',
            NFE_DTCADASTRO: hoje,
            NFE_DTEMISSAO: hoje,
            NFE_DTPRESTSERVICO: hoje,
            NFE_DTSAIDA: hoje,
            NFE_ENDERECO: '',
            NFE_ENTRADASAIDA: valoresPadrao.NAT_ENTRADASAIDA || 'S',
            NFE_ENTREGUE: 'N',
            NFE_ESPECIE: valoresPadrao.PAR_ESPECIEPADRAO || '',
            NFE_ESTADO: '',
            NFE_ESTADOCODIGO: '',
            NFE_EXLOCAL: '',
            NFE_EXUFSAIDA: '',
            NFE_EXPEDIDOPOR: '',
            NFE_FONE1: '',
            NFE_FORMAPAGTO: '',
            NFE_FRETE: valoresPadrao.PAR_FRETEPORCONTA || '',
            NFE_IDESTRANGEIRO: '',
            NFE_IE: '',
            NFE_INFOADICFISCO: valoresPadrao.NAT_OBSERVACOES || '',
            NFE_INFOCOMPLEMENTAR: '',
            NFE_LACRES: '',
            NFE_LUCROPORC: '0',
            NFE_LUCROVALOR: '0',
            NFE_MANUAL: 'N',
            NFE_MARCA: valoresPadrao.PAR_MARCAPADRAO || '',
            NFE_MOVIMENTAESTOQUE: valoresPadrao.NAT_MOVIMENTAESTOQUE || '',
            NFE_MOVIMENTAFINANCEIRO: valoresPadrao.NAT_MOVIMENTAFINANCEIRO || '',
            NFE_NFE: '',
            NFE_NOME: '',
            NFE_NOTA: '',
            NFE_NUMERO: '',
            NFE_OBSERVACOES: '',
            NFE_PAIS: 'BRASIL',
            NFE_PAISCODIGO: '1058',
            NFE_PEDIDOCLIENTE: '',
            NFE_PESOBRUTO: '0',
            NFE_PESOLIQ: '0',
            NFE_REBOQUEPLACA: '',
            NFE_REBOQUEPLACAUF: '',
            NFE_REBOQUERNTC: '',
            NFE_RG: '',
            NFE_SEQUENCIAITEM: '0',
            NFE_STATUS: 'A',
            NFE_SUFRAMA: '',
            NFE_TABELAPRECO: 'V',
            NFE_TIPOATENDIMENTO: valoresPadrao.PAR_NFETIPOATENDIMENTO || '',
            NFE_TIPOCONSUMIDOR: valoresPadrao.PAR_NFETIPOCONSUMIDOR || '',
            NFE_TIPOOPERACAO: '1 - OPERACAO INTERNA',
            NFE_TOTALADUANA: '0',
            NFE_TOTALBRUTO: '0',
            NFE_TOTALCOFINS: '0',
            NFE_TOTALCOFINSST: '0',
            NFE_TOTALCOMISSAO: '0',
            NFE_TOTALFCP: '0',
            NFE_TOTALFCPST: '0',
            NFE_TOTALICMS: '0',
            NFE_TOTALICMSCREDSN: '0',
            NFE_TOTALICMSST: '0',
            NFE_TOTALICMSUFDEST: '0',
            NFE_TOTALICMSUFREMET: '0',
            NFE_TOTALII: '0',
            NFE_TOTALIOF: '0',
            NFE_TOTALIPI: '0',
            NFE_TOTALISS: '0',
            NFE_TOTALISSDEDUCAO: '0',
            NFE_TOTALISSDESCCOND: '0',
            NFE_TOTALISSDESCINCOND: '0',
            NFE_TOTALISSOUTROS: '0',
            NFE_TOTALISSRETENCAO: '0',
            NFE_TOTALITENS: '0',
            NFE_TOTALPIS: '0',
            NFE_TOTALPISST: '0',
            NFE_TOTALPRODUTOS: '0',
            NFE_TOTALSERVICOS: '0',
            NFE_TOTALTRIBUTOS: '0',
            NFE_TOTALTRIBUTOSEST: '0',
            NFE_TOTALTRIBUTOSFED: '0',
            NFE_TOTALTRIBUTOSIMP: '0',
            NFE_TOTALTRIBUTOSMUN: '0',
            NFE_TRANSPCIDADE: '',
            NFE_TRANSPCNPJ: '',
            NFE_TRANSPCPF: '',
            NFE_TRANSPEMAIL: '',
            NFE_TRANSPENDERECO: '',
            NFE_TRANSPESTADO: '',
            NFE_TRANSPFONE: '',
            NFE_TRANSPIE: '',
            NFE_TRANSPNOME: '',
            NFE_TRANSPORTADORA: '',
            NFE_USUARIO: '',
            NFE_VALORDESPACES: '0',
            NFE_VALORFRETE: '0',
            NFE_VALORSEGURO: '0',
            NFE_VALORTOTAL: '0',
            NFE_VEICULOPLACA: '',
            NFE_VEICULOPLACAUF: '',
            NFE_VEICULORNTC: '',
            NFE_VENDEDOR: '',
            NFE_VIAINTERNET: 'N',
            NFE_VIAINTERNETSTATUS: 'F',
            NFE_VOLUMES: '',
            NFE_VOLUMESNUM: '',
        });
        setNfeItens([]);
    }

    function pesquisar() {
        setOperacao('listar');
        setListagem([]);
        setPagina(0);
        setFinal(false);
        listar(0,false,true);
    };

    function reset() {
        window.location.reload();
    };

    async function getRegistro(codigo) {
        setCarregando(true);
        var formData = new FormData();
        formData.set('op','visualizar');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('NFE_CODIGO',codigo);             
        try {
            const response = await Api.post('firenet/nfes',formData);
            if (response.data.erro==='N') {
                setNfe(response.data.msg);
                setNfeItens(response.data.msg.ITENS);
            } else {
                setOperacao('listar');
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
            setCarregando(false);
        } catch (error) {
            tratarCatch('Nfes getRegistro',error,logout);
        }
    }

    async function novo() {
        registroNulo({});
        const formData = new FormData();
        formData.set('op','parametros');
        formData.set('empresa',empresaSelecionada.value);
        try {
            const response = await Api.post('firenet/nfes',formData);
            if (response.data.erro==="N") {
                registroNulo(response.data.msg);
                setOperacao('inserir');
                setDisableFields(false);
            } else {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('Nfes novo',error,logout);
        }
    }

    function cancelarEdicao() {
        setOperacao('visualizar');
        setNfe(nfeOri); //Volta dados inalterados.
        setDisableFields(true);
    }

    function cancelarInsercao() {
        setOperacao('listar');
    }

    async function salvar() {
        const formData = new FormData();
        formData.set('op',operacao);
        formData.set('empresa',empresaSelecionada.value);
        formData.set('NFE_ALIQICMS',nfe.NFE_ALIQICMS || '');
        formData.set('NFE_CLIENTE',nfe.NFE_CLIENTE || '');
        formData.set('NFE_CODIGO',nfe.NFE_CODIGO || '');
        // formData.set('NFE_ALIQICMSCREDSN', nfe.NFE_ALIQICMSCREDSN || '');
        formData.set('NFE_BAIRRO', nfe.NFE_BAIRRO || '');
        // formData.set('NFE_BAIXADATA', nfe.NFE_BAIXADATA || '');
        // formData.set('NFE_BAIXAPOR', nfe.NFE_BAIXAPOR || '');
        // formData.set('NFE_BASECOFINS', nfe.NFE_BASECOFINS || '');
        // formData.set('NFE_BASECOFINSST', nfe.NFE_BASECOFINSST || '');
        // formData.set('NFE_BASEICMS', nfe.NFE_BASEICMS || '');
        // formData.set('NFE_BASEICMSST', nfe.NFE_BASEICMSST || '');
        // formData.set('NFE_BASEII', nfe.NFE_BASEII || '');
        // formData.set('NFE_BASEIPI', nfe.NFE_BASEIPI || '');
        // formData.set('NFE_BASEISS', nfe.NFE_BASEISS || '');
        // formData.set('NFE_BASEPIS', nfe.NFE_BASEPIS || '');
        // formData.set('NFE_BASEPISST', nfe.NFE_BASEPISST || '');
        formData.set('NFE_CEP', nfe.NFE_CEP || '');
        formData.set('NFE_CFOP', nfe.NFE_CFOP || '');
        formData.set('NFE_CFOPDESC', nfe.NFE_CFOPDESC || '');
        formData.set('NFE_CIDADE', nfe.NFE_CIDADE || '');
        formData.set('NFE_CIDADECODIGO', nfe.NFE_CIDADECODIGO || '');
        formData.set('NFE_CNPJ', nfe.NFE_CNPJ || '');
        formData.set('NFE_CODIGO', nfe.NFE_CODIGO || '');
        // formData.set('NFE_CODIMPORTACAO', nfe.NFE_CODIMPORTACAO || '');
        formData.set('NFE_CLIENTE', nfe.NFE_CLIENTE || '');
        formData.set('NFE_COMISSAO', nfe.NFE_COMISSAO || '');
        formData.set('NFE_COMISSAOPOR', nfe.NFE_COMISSAOPOR || '');
        formData.set('NFE_COMPLEMENTO', nfe.NFE_COMPLEMENTO || '');
        formData.set('NFE_CONDICAO', nfe.NFE_CONDICAO || '');
        // formData.set('NFE_CONDICAOMEMO', nfe.NFE_CONDICAOMEMO || '');
        // formData.set('NFE_CONFERIDO', nfe.NFE_CONFERIDO || '');
        // formData.set('NFE_CONFERIDODATA', nfe.NFE_CONFERIDODATA || '');
        // formData.set('NFE_CONFERIDOPOR', nfe.NFE_CONFERIDOPOR || '');
        formData.set('NFE_CONTATO', nfe.NFE_CONTATO || '');
        formData.set('NFE_CPF', nfe.NFE_CPF || '');
        // formData.set('NFE_CUSTOTOTAL', nfe.NFE_CUSTOTOTAL || '');
        formData.set('NFE_DESCPORC', nfe.NFE_DESCPORC || '');
        formData.set('NFE_DESCPORCCLIENTE', nfe.NFE_DESCPORCCLIENTE || '');
        formData.set('NFE_DESCPORCCONDICAO', nfe.NFE_DESCPORCCONDICAO || '');
        formData.set('NFE_DESCVALOR', nfe.NFE_DESCVALOR || '');
        formData.set('NFE_DESTACARIMPOSTOS', nfe.NFE_DESTACARIMPOSTOS || '');
        formData.set('NFE_DIAPREFERENCIAL', nfe.NFE_DIAPREFERENCIAL || '');
        formData.set('NFE_DTATUALIZACAO', nfe.NFE_DTATUALIZACAO || '');
        formData.set('NFE_DTCADASTRO', nfe.NFE_DTCADASTRO || '');
        formData.set('NFE_DTEMISSAO', formatarDataFb(nfe.NFE_DTEMISSAO) || '');
        formData.set('NFE_DTPRESTSERVICO', formatarDataFb(nfe.NFE_DTPRESTSERVICO) || '');
        formData.set('NFE_DTSAIDA', formatarDataFb(nfe.NFE_DTSAIDA) || '');
        formData.set('NFE_ENDERECO', nfe.NFE_ENDERECO || '');
        formData.set('NFE_ENTRADASAIDA', nfe.NFE_ENTRADASAIDA || '');
        // formData.set('NFE_ENTREGUE', nfe.NFE_ENTREGUE || '');
        formData.set('NFE_ESPECIE', nfe.NFE_ESPECIE || '');
        formData.set('NFE_ESTADO', nfe.NFE_ESTADO || '');
        formData.set('NFE_ESTADOCODIGO', nfe.NFE_ESTADOCODIGO || '');
        formData.set('NFE_EXLOCAL', nfe.NFE_EXLOCAL || '');
        formData.set('NFE_EXUFSAIDA', nfe.NFE_EXUFSAIDA || '');
        formData.set('NFE_EXPEDIDOPOR', nfe.NFE_EXPEDIDOPOR || '');
        formData.set('NFE_FONE1', nfe.NFE_FONE1 || '');
        formData.set('NFE_FORMAPAGTO', nfe.NFE_FORMAPAGTO || '');
        formData.set('NFE_FRETE', nfe.NFE_FRETE || '');
        formData.set('NFE_IDESTRANGEIRO', nfe.NFE_IDESTRANGEIRO || '');
        formData.set('NFE_IE', nfe.NFE_IE || '');
        formData.set('NFE_INFOADICFISCO', nfe.NFE_INFOADICFISCO || '');
        formData.set('NFE_INFOCOMPLEMENTAR', nfe.NFE_INFOCOMPLEMENTAR || '');
        formData.set('NFE_LACRES', nfe.NFE_LACRES || '');
        // formData.set('NFE_LUCROPORC', nfe.NFE_LUCROPORC || '');
        // formData.set('NFE_LUCROVALOR', nfe.NFE_LUCROVALOR || '');
        // formData.set('NFE_MANUAL', nfe.NFE_MANUAL || '');
        formData.set('NFE_MARCA', nfe.NFE_MARCA || '');
        formData.set('NFE_MOVIMENTAESTOQUE', nfe.NFE_MOVIMENTAESTOQUE || '');
        formData.set('NFE_MOVIMENTAFINANCEIRO', nfe.NFE_MOVIMENTAFINANCEIRO || '');
        formData.set('NFE_NFE', nfe.NFE_NFE || '');
        formData.set('NFE_NOME', nfe.NFE_NOME || '');
        formData.set('NFE_NOTA', nfe.NFE_NOTA || '');
        formData.set('NFE_NUMERO', nfe.NFE_NUMERO || '');
        formData.set('NFE_OBSERVACOES', nfe.NFE_OBSERVACOES || '');
        formData.set('NFE_PAIS', nfe.NFE_PAIS || '');
        formData.set('NFE_PAISCODIGO', nfe.NFE_PAISCODIGO || '');
        formData.set('NFE_PEDIDOCLIENTE', nfe.NFE_PEDIDOCLIENTE || '');
        formData.set('NFE_PESOBRUTO', nfe.NFE_PESOBRUTO || '');
        formData.set('NFE_PESOLIQ', nfe.NFE_PESOLIQ || '');
        formData.set('NFE_REBOQUEPLACA', nfe.NFE_REBOQUEPLACA || '');
        formData.set('NFE_REBOQUEPLACAUF', nfe.NFE_REBOQUEPLACAUF || '');
        formData.set('NFE_REBOQUERNTC', nfe.NFE_REBOQUERNTC || '');
        formData.set('NFE_RG', nfe.NFE_RG || '');
        formData.set('NFE_SEQUENCIAITEM', nfe.NFE_SEQUENCIAITEM || '');
        formData.set('NFE_STATUS', nfe.NFE_STATUS || '');
        formData.set('NFE_SUFRAMA', nfe.NFE_SUFRAMA || '');
        formData.set('NFE_TABELAPRECO', nfe.NFE_TABELAPRECO || '');
        formData.set('NFE_TIPOATENDIMENTO', nfe.NFE_TIPOATENDIMENTO || '');
        formData.set('NFE_TIPOCONSUMIDOR', nfe.NFE_TIPOCONSUMIDOR || '');
        formData.set('NFE_TIPOOPERACAO', nfe.NFE_TIPOOPERACAO || '');
        formData.set('NFE_TOTALADUANA', nfe.NFE_TOTALADUANA || '');
        // formData.set('NFE_TOTALBRUTO', nfe.NFE_TOTALBRUTO || '');
        // formData.set('NFE_TOTALCOFINS', nfe.NFE_TOTALCOFINS || '');
        // formData.set('NFE_TOTALCOFINSST', nfe.NFE_TOTALCOFINSST || '');
        // formData.set('NFE_TOTALCOMISSAO', nfe.NFE_TOTALCOMISSAO || '');
        // formData.set('NFE_TOTALFCP', nfe.NFE_TOTALFCP || '');
        // formData.set('NFE_TOTALFCPST', nfe.NFE_TOTALFCPST || '');
        // formData.set('NFE_TOTALICMS', nfe.NFE_TOTALICMS || '');
        // formData.set('NFE_TOTALICMSCREDSN', nfe.NFE_TOTALICMSCREDSN || '');
        // formData.set('NFE_TOTALICMSST', nfe.NFE_TOTALICMSST || '');
        // formData.set('NFE_TOTALICMSUFDEST', nfe.NFE_TOTALICMSUFDEST || '');
        // formData.set('NFE_TOTALICMSUFREMET', nfe.NFE_TOTALICMSUFREMET || '');
        // formData.set('NFE_TOTALII', nfe.NFE_TOTALII || '');
        formData.set('NFE_TOTALIOF', nfe.NFE_TOTALIOF || '');
        // formData.set('NFE_TOTALIPI', nfe.NFE_TOTALIPI || '');
        // formData.set('NFE_TOTALISS', nfe.NFE_TOTALISS || '');
        formData.set('NFE_TOTALISSDEDUCAO', nfe.NFE_TOTALISSDEDUCAO || '');
        formData.set('NFE_TOTALISSDESCCOND', nfe.NFE_TOTALISSDESCCOND || '');
        formData.set('NFE_TOTALISSDESCINCOND', nfe.NFE_TOTALISSDESCINCOND || '');
        formData.set('NFE_TOTALISSOUTROS', nfe.NFE_TOTALISSOUTROS || '');
        formData.set('NFE_TOTALISSRETENCAO', nfe.NFE_TOTALISSRETENCAO || '');
        // formData.set('NFE_TOTALITENS', nfe.NFE_TOTALITENS || '');
        // formData.set('NFE_TOTALPIS', nfe.NFE_TOTALPIS || '');
        // formData.set('NFE_TOTALPISST', nfe.NFE_TOTALPISST || '');
        // formData.set('NFE_TOTALPRODUTOS', nfe.NFE_TOTALPRODUTOS || '');
        // formData.set('NFE_TOTALSERVICOS', nfe.NFE_TOTALSERVICOS || '');
        // formData.set('NFE_TOTALTRIBUTOS', nfe.NFE_TOTALTRIBUTOS || '');
        // formData.set('NFE_TOTALTRIBUTOSEST', nfe.NFE_TOTALTRIBUTOSEST || '');
        // formData.set('NFE_TOTALTRIBUTOSFED', nfe.NFE_TOTALTRIBUTOSFED || '');
        // formData.set('NFE_TOTALTRIBUTOSIMP', nfe.NFE_TOTALTRIBUTOSIMP || '');
        // formData.set('NFE_TOTALTRIBUTOSMUN', nfe.NFE_TOTALTRIBUTOSMUN || '');
        // formData.set('NFE_TRANSPCIDADE', nfe.NFE_TRANSPCIDADE || '');
        // formData.set('NFE_TRANSPCNPJ', nfe.NFE_TRANSPCNPJ || '');
        // formData.set('NFE_TRANSPCPF', nfe.NFE_TRANSPCPF || '');
        // formData.set('NFE_TRANSPEMAIL', nfe.NFE_TRANSPEMAIL || '');
        // formData.set('NFE_TRANSPENDERECO', nfe.NFE_TRANSPENDERECO || '');
        // formData.set('NFE_TRANSPESTADO', nfe.NFE_TRANSPESTADO || '');
        // formData.set('NFE_TRANSPFONE', nfe.NFE_TRANSPFONE || '');
        // formData.set('NFE_TRANSPIE', nfe.NFE_TRANSPIE || '');
        // formData.set('NFE_TRANSPNOME', nfe.NFE_TRANSPNOME || '');
        formData.set('NFE_TRANSPORTADORA', nfe.NFE_TRANSPORTADORA || '');
        // formData.set('NFE_USUARIO', nfe.NFE_USUARIO || '');
        formData.set('NFE_VALORDESPACES', nfe.NFE_VALORDESPACES || '');
        formData.set('NFE_VALORFRETE', nfe.NFE_VALORFRETE || '');
        formData.set('NFE_VALORSEGURO', nfe.NFE_VALORSEGURO || '');
        // formData.set('NFE_VALORTOTAL', nfe.NFE_VALORTOTAL || '');
        formData.set('NFE_VEICULOPLACA', nfe.NFE_VEICULOPLACA || '');
        formData.set('NFE_VEICULOPLACAUF', nfe.NFE_VEICULOPLACAUF || '');
        formData.set('NFE_VEICULORNTC', nfe.NFE_VEICULORNTC || '');
        formData.set('NFE_VENDEDOR', nfe.NFE_VENDEDOR || '');
        // formData.set('NFE_VIAINTERNET', nfe.NFE_VIAINTERNET || '');
        // formData.set('NFE_VIAINTERNETSTATUS', nfe.NFE_VIAINTERNETSTATUS || '');
        formData.set('NFE_VOLUMES', nfe.NFE_VOLUMES || '');
        formData.set('NFE_VOLUMESNUM', nfe.NFE_VOLUMESNUM || '');
        try {
            const response = await Api.post('firenet/nfes',formData);
            if (response.data.erro==='N') {
                let novaListagem = [];
                if (operacao==="inserir") { 
                    PettMensagem.sucesso('Yessss!','Venda cadastrada com sucesso.');
                    novaListagem.push(...listagem);
                    novaListagem.push(response.data.msg);
                    visualizar(response.data.msg.NFE_CODIGO);
                } else {
                    PettMensagem.sucesso('Yessss!','Venda atualizada com sucesso.');
                    novaListagem = listagem.filter(item => (String(item.NFE_CODIGO) !== String(nfe.NFE_CODIGO)));
                    novaListagem.unshift(response.data.msg); //adiciona no inicio da listagem.
                    visualizar(nfe.NFE_CODIGO);
                }
                
                //ordena a listagem.
                const novaListagemSort = novaListagem.sort(function(c1,c2) {
                    if (c1.CLI_NOME > c2.CLI_NOME) return  1;
                    if (c1.CLI_NOME < c2.CLI_NOME) return -1;
                    return 0;
                });
                
                setListagem(novaListagemSort);
            } 
            if (response.data.erro==='S') {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('Nfes salvar',error,logout);
        }
    }

    async function editar(codigo) {
        setOperacao('atualizar');
        setDisableFields(false);
        getRegistro(codigo);
        setNfeOri(nfe);
    }

    async function visualizar(codigo) {
        setOperacao('visualizar');
        setDisableFields(true);
        getRegistro(codigo);
    }

    async function gerarNFe(item) {
        const confirmou = await PettMensagem.confirmar('Gerar NFe?','Tem certeza que deseja gerar a NFe '+item.nome+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','gerarnfe');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('NFE_CODIGO',item.codigo);
            try {
                const response = await Api.post('firenet/nfes',formData);
                if (response.data.erro==='N') {
                    PettMensagem.sucesso('Yessss!','NFe gerada com sucesso.');
                    setNfe(response.data.msg);
                    //setNfeItens(response.data.msg.ITENS);
                    setNfeItens([]);
                } else {
                    response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
                }
            } catch (error) {
                tratarCatch('Nfes finalizar',error,logout);
            }
        }
    }

    async function inutilizar(item) {
        const confirmou = await PettMensagem.confirmar('Inutilizar pedido de nfe?','Tem certeza que deseja inutilizar a NFe '+item.codigo+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','inutilizar');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('NFE_CODIGO',item.codigo);
            try {
                const response = await Api.post('firenet/nfes',formData);
                if (response.data.erro==='N') {
                    PettMensagem.sucesso('Yessss!','Venda inutilizada com suceeso.');
                    setNfe(response.data.msg);
                    setNfeItens(response.data.msg.ITENS);
                } else {
                    response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
                }
            } catch (error) {
                tratarCatch('Nfes inutilizar',error,logout);
            }
        }
    }

    const onRowSelect = (event) => {
        visualizar(event.NFE_CODIGO);
        // toast.current.show({ severity: 'info', summary: 'Product Selected', detail: `Name: ${event.data.name}`, life: 3000 });
    };

    //para abrir o modal do item
    function novoItem() {
        setOperacaoItem('inserirItem');
        setNfeItem({
            NFI_CODIGO: '',
            NFI_CONSULTA: '',
            NFI_DESCRICAO: '',
            NFI_EXAME: '',
            NFI_SIGLA: '',
            NFI_VALOR: ''
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
            setNfe(item);
            setNfeItens(item.ITENS);
        }
        setShowItem(false);
        setNfeItem({
            NFI_CODIGO: '',
        });
    }

    const onRowSelectItem = (event) => {
        if (operacao==="visualizar") {
            setNfeItem(event);
            editarItem(event);
        }
    };

    const bodyStatus = (rowData) => {
        return (
            <React.Fragment>
                <PettIf condicional={rowData.NFE_STATUS==='A'}>
                    <span className="badge bg-primary">ABERTO</span>
                </PettIf>
                <PettIf condicional={rowData.NFE_STATUS==='F'}>
                    <span className="badge bg-success">FINALIZADO</span>
                </PettIf>
                <PettIf condicional={rowData.NFE_STATUS==='C'}>
                    <span className="badge bg-danger">CANCELADO</span>
                </PettIf>
                <PettIf condicional={rowData.NFE_STATUS==='I'}>
                    <span className="badge bg-warning">INUTILIZADO</span>
                </PettIf>
            </React.Fragment>
        );
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Notas Fiscais Eletrônicas" linkBack="/">
            <PettButton caption="Localizar"  icone="search"     click={pesquisar}                          condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"       icone="plus"       click={novo}                               condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Editar"     icone="pencil"     click={ () => editar(nfe.NFE_CODIGO) } condicional={operacao==="visualizar" && nfe.NFE_STATUS==="A"}/>
            <PettButton caption="Gerar NFe"  icone="flashgreen" click={ () => gerarNFe({codigo: nfe.NFE_CODIGO, nome: nfe.NFE_NOME}) } condicional={operacao==="visualizar" && nfe.NFE_STATUS==="A"}/>
            <PettButton caption="Inutilizar" icone="flashred"   click={ () => inutilizar({codigo: nfe.NFE_CODIGO, nome: nfe.NFE_NOME}) } condicional={operacao==="visualizar" && nfe.NFE_STATUS==="A"}/>
            <PettButton caption="Salvar"     icone="checkmark"  click={salvar} condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"   icone="cancel"     click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"   icone="cancel"     click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={nfe.NFE_USUARIO} data={nfe.NFE_DTATUALIZACAO} hora={nfe.NFE_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregando}/>
                <PettIf condicional={!carregando}>
                    <div className="row g-1">
                        {/* <PettFieldText size="col-lg-2 col-md-4 col-sm-6 mb-1" label="CÓDIGO" name="NFE_CODIGO" value={nfe.NFE_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6 mb-1" label="NOTA" name="NFE_NOTA" value={nfe.NFE_NOTA} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6 mb-1" label="NFE" name="NFE_NFE" value={nfe.NFE_NFE} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6 mb-1" label="STATUS" name="NFE_STATUS" value={nfe.NFE_STATUS} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6 mb-1" label="DATA EMISSÃO" name="NFE_DTEMISSAO" value={formatarDataStr(nfe.NFE_DTEMISSAO)} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6 mb-1" label="VALOR TOTAL" name="NFE_VALORTOTAL" value={nfe.NFE_VALORTOTAL} readOnly disabled/> */}

                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Código: <span className="fw-bold">{nfe.NFE_CODIGO}</span></div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Status:&nbsp;
                            <PettIf condicional={nfe.NFE_STATUS==='A'}><span className="badge bg-primary">ABERTO</span></PettIf>
                            <PettIf condicional={nfe.NFE_STATUS==='C'}><span className="badge bg-danger">CANCELADO</span></PettIf>
                            <PettIf condicional={nfe.NFE_STATUS==='F'}><span className="badge bg-success">FINALIZADO</span></PettIf>
                            <PettIf condicional={nfe.NFE_STATUS==='I'}><span className="badge bg-warning">INUTILIZADO</span></PettIf>
                        </div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Emissão: <span className="fw-bold">{formatarDataStr(nfe.NFE_DTEMISSAO)}</span></div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Valor Total: <span className="fw-bold">{formatarMoedaStr(nfe.NFE_VALORTOTAL)}</span></div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Entrada/Saída:&nbsp;
                            <PettIf condicional={nfe.NFE_ENTRADASAIDA==='E'}><span className="badge bg-primary">ENTRADA</span></PettIf>
                            <PettIf condicional={nfe.NFE_ENTRADASAIDA==='S'}><span className="badge bg-success">SAÍDA</span></PettIf>
                        </div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Mov. Estoque:&nbsp;
                            <PettIf condicional={nfe.NFE_MOVIMENTAESTOQUE==='S'}><span className="badge bg-success">SIM</span></PettIf>
                            <PettIf condicional={nfe.NFE_MOVIMENTAESTOQUE==='N'}><span className="badge bg-danger">NÃO</span></PettIf>
                        </div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Mov. Financeiro:&nbsp;
                            <PettIf condicional={nfe.NFE_MOVIMENTAFINANCEIRO==='S'}><span className="badge bg-success">SIM</span></PettIf>
                            <PettIf condicional={nfe.NFE_MOVIMENTAFINANCEIRO==='N'}><span className="badge bg-danger">NÃO</span></PettIf>
                        </div>
                        <div className="col-lg-2 col-md-4 col-sm-6 fs-6">Qtde CCe: <span className="fw-bold">{nfe.NFE_CODIGO}</span></div>
                    </div>

                    <PettTab className="mb-5">
                        <PettTabPanel header="Geral">
                            <div className="row mb-3 g-1">
                                <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CLIENTE" name="NFE_CLIENTE" value={String(nfe.NFE_CLIENTE)} set={setNfe} onClick={() => setShowClientesLoc(true)} onBlur={(e) => localizar(CLIENTES, e.target.value, setNfe, mapaClientes)} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="CLIENTE" name="NFE_NOME" value={nfe.NFE_NOME} readOnly disabled/>
                                <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CFOP" name="NFE_CFOP" value={nfe.NFE_CFOP} set={setNfe} onClick={() => setShowNaturezasLoc(true)} onBlur={(e) => localizar(NATUREZAS, e.target.value, setNfe, mapaNaturezas)} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CFOP" name="NFE_CFOPDESC" value={nfe.NFE_CFOPDESC} readOnly disabled/>
                                <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="VENDEDOR" name="NFE_VENDEDOR" value={nfe.NFE_VENDEDOR} set={setNfe} onClick={() => setShowVendedoresLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, setNfe, mapaVendedores)} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME VENDEDOR" name="VEN_NOME" value={nfe.VEN_NOME} readOnly disabled/>
                                <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="EXPEDIDO POR" name="NFE_EXPEDIDOPOR" value={nfe.NFE_EXPEDIDOPOR} set={setNfe} onClick={() => setShowExpedidoresLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, mapaExpedidores)} readOnly={disableFields} disabled={disableFields}/>                          
                                <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME EXPEDIDO POR" name="VEN_NOME1" value={nfe.VEN_NOME1} readOnly disabled/>                          
                                <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="CONTATO" name="NFE_CONTATO" value={nfe.NFE_CONTATO} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="TIPO ATENDIMENTO" name="NFE_TIPOATENDIMENTO" value={nfe.NFE_TIPOATENDIMENTO} set={setNfe} options={selectTipoAtendimento} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="TIPO OPERAÇÃO" name="NFE_TIPOOPERACAO" value={nfe.NFE_TIPOOPERACAO} set={setNfe} options={selectTipoOperacao} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="TIPO CONSUMIDOR" name="NFE_TIPOCONSUMIDOR" value={nfe.NFE_TIPOCONSUMIDOR} set={setNfe} options={selectTipoConsumidor} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PEDIDO CLIENTE" name="NFE_PEDIDOCLIENTE" value={nfe.NFE_PEDIDOCLIENTE} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="% COMISSÃO" name="NFE_COMISSAO" value={nfe.NFE_COMISSAO} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="TOTAL COMISSÃO" name="NFE_TOTALCOMISSAO" value={nfe.NFE_TOTALCOMISSAO} readOnly disabled/>
                                {/* <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ENTRADA/SAÍDA" name="NFE_ENTRADASAIDA" value={nfe.NFE_ENTRADASAIDA} readOnly disabled/> */}
                                {/* <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MOV. ESTOQUE" name="NFE_MOVIMENTAESTOQUE" value={nfe.NFE_MOVIMENTAESTOQUE} readOnly disabled/> */}
                                {/* <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MOV. FINANCEIRO" name="NFE_MOVIMENTAFINANCEIRO" value={nfe.NFE_MOVIMENTAFINANCEIRO} readOnly disabled/> */}
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="NFE_DTCADASTRO" value={formatarDataStr(nfe.NFE_DTCADASTRO)} readOnly disabled/>
                                {/* <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ENTREGUE" name="NFE_ENTREGUE" value={nfe.NFE_ENTREGUE} readOnly disabled/> */}
                                <PettFieldDate size="col-lg-2 col-md-4 col-sm-6" label="DATA SAÍDA" name="NFE_DTSAIDA" value={nfe.NFE_DTSAIDA} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA BAIXA" name="NFE_DTBAIXA" value={formatarDataStr(nfe.NFE_DTBAIXA)} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="BAIXADO POR" name="NFE_BAIXAPOR" value={nfe.NFE_BAIXAPOR} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CONFERIDO EM" name="NFE_CONFERIDOEM" value={nfe.NFE_CONFERIDOEM} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CONFERIDO POR" name="NFE_CONFERIDOPOR" value={nfe.NFE_CONFERIDOPOR} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MANUAL" name="NFE_MANUAL" value={nfe.NFE_MANUAL} readOnly disabled/>
                                {/* <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VIA INTERNET" name="NFE_VIAINTERNET" value={nfe.NFE_VIAINTERNET} readOnly disabled/> */}
                                {/* <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VIA INTERNET STATUS" name="NFE_VIAINTERNETSTATUS" value={nfe.NFE_VIAINTERNETSTATUS} readOnly disabled/> */}
                                <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="OBSERVAÇÕES" name="NFE_OBSERVACOES" value={nfe.NFE_OBSERVACOES} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="INFORMAÇÕES ADICIONAIS FISCO" name="NFE_INFOADICFISCO" value={nfe.NFE_INFOADICFISCO} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="INFORMAÇÕES COMPLEMENTARES" name="NFE_INFOCOMPLEMENTAR" value={nfe.NFE_INFOCOMPLEMENTAR} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                            </div>

                            <div className="barra3 mb-1">
                                <PettIf condicional={operacao==="visualizar" && nfe.NFE_STATUS==="A"}>
                                    <PettButton caption="Inserir Item" icone="plus" click={novoItem} />
                                </PettIf>
                                <PettIf condicional={operacao==="visualizar" && nfe.NFE_STATUS!=="A"}>
                                    <span className="ms-2">Este pedido não está em aberto.</span>
                                </PettIf>
                                <PettIf condicional={operacao==="inserir" || operacao==="atualizar"}>
                                    <span className="ms-2">Salve ou Cancele as alterações antes de inserir/alterar itens</span>
                                </PettIf>
                            </div>
                            <PettGrid className="mt-4" listagem={nfeItens} rowSelect={onRowSelectItem}>
                                <PettColumn field="NFI_CODIGO" header="Código"></PettColumn>
                                <PettColumn field="NFI_VENDA" header="Venda"></PettColumn>
                                <PettColumn field="NFI_SEQUENCIA" header="Seq" align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="NFI_PRODUTO" header="Produto" align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="NFI_DESCRICAO" header="Descrição"></PettColumn>
                                <PettColumn field="NFI_QUANTIDADE" header="Quantidade" align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="NFI_VALORUNIT" header="Valor Unitário" body={(rowData) => formatarMoeda(rowData,'NFI_VALORUNIT')} align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="NFI_VALORIPI" header="Valor IPI" body={(rowData) => formatarMoeda(rowData,'NFI_VALORIPI')} align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="NFI_VALORTOTAL" header="Valor Total" body={(rowData) => formatarMoeda(rowData,'NFI_VALORTOTAL')} align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="NFI_CFOP" header="CFOP" align="center" alignHeader="center"></PettColumn>
                                <PettColumn field="NFI_CLASSFISCAL" header="NCM" align="center" alignHeader="center"></PettColumn>
                                <PettColumn field="NFI_ALIQICMS" header="ICMS" align="right" alignHeader="right"></PettColumn>
                                <PettColumn field="NFI_ALIQIPI" header="IPI" align="right" alignHeader="right"></PettColumn>
                                {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
                            </PettGrid>
                        </PettTabPanel>
                        <PettTabPanel header="Transportadora">
                            <div className="row mb-3 g-1">
                                <PettFieldDrop size="col-lg-2 col-md-4 col-sm-4" label="FRETE" name="NFE_FRETE" value={nfe.NFE_FRETE} set={setNfe} options={selectFrete} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="TRANSPORTADORA" name="NFE_TRANSPORTADORA" value={nfe.NFE_TRANSPORTADORA} set={setNfe} onClick={() => setShowTransportadorasLoc(true)} onBlur={(e) => localizar(FORNECEDORES, e.target.value, setNfe, mapaTransportadoras)} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME TRANSPORTADORA" name="NFE_TRANSPNOME" value={nfe.NFE_TRANSPNOME} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VOLUMES" name="NFE_VOLUMES" value={nfe.NFE_VOLUMES} set={setNfe} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="NUMERAÇÃO VOLUMES" name="NFE_VOLUMESNUM" value={nfe.NFE_VOLUMESNUM} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ESPÉCIE" name="NFE_ESPECIE" value={nfe.NFE_ESPECIE} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MARCA" name="NFE_MARCA" value={nfe.NFE_MARCA} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="LACRES" name="NFE_LACRES" value={nfe.NFE_LACRES} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="PESO BRUTO" name="NFE_PESOBRUTO" value={nfe.NFE_PESOBRUTO} set={setNfe} minDigits={3} maxDigits={3} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="PESO LÍQUIDO" name="NFE_PESOLIQ" value={nfe.NFE_PESOLIQ} set={setNfe} minDigits={3} maxDigits={3} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VEÍCULO PLACA" name="NFE_VEICULOPLACA" value={nfe.NFE_VEICULOPLACA} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VEÍCULO PLACA UF" name="NFE_VEICULOPLACAUF" value={nfe.NFE_VEICULOPLACAUF} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VEÍCULO RNTC" name="NFE_VEICULORNTC" value={nfe.NFE_VEICULORNTC} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="REBOQUE PLACA" name="NFE_REBOQUEPLACA" value={nfe.NFE_REBOQUEPLACA} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="REBOQUE PLACA UF" name="NFE_REBOQUEPLACAUF" value={nfe.NFE_REBOQUEPLACAUF} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="REBOQUE RNTC" name="NFE_REBOQUERNTC" value={nfe.NFE_REBOQUERNTC} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                            </div>
                        </PettTabPanel>
                        <PettTabPanel header="Forma Pagamento">
                            <div className="row mb-3 g-1">
                                <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CONDIÇÃO" name="NFE_CONDICAO" value={nfe.NFE_CONDICAO} set={setNfe} onClick={() => setShowCondicoesLoc(true)} onBlur={(e) => localizar(CONDICOES, e.target.value, setNfe, mapaCondicoes)} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CONDIÇÃO" name="CPG_DESCRICAO" value={nfe.CPG_DESCRICAO} readOnly disabled/>
                                <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="MEIO PAGAMENTO" name="CPG_MEIOPAGAMENTO" value={nfe.CPG_MEIOPAGAMENTO} readOnly disabled/>
                                <PettFieldDrop size="col-lg-6 col-md-6 col-sm-6" label="FORMA PAGAMENTO" name="NFE_FORMAPAGTO" value={nfe.NFE_FORMAPAGTO} set={setNfe} options={selectFormaPagamento} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="DIA PREFERENCIAL" name="NFE_DIAPREFERENCIAL" value={nfe.NFE_DIAPREFERENCIAL} set={setNfe} options={selectDiaVencimento} readOnly={disableFields} disabled={disableFields}/>
                                <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="SIMULAÇÃO" name="NFE_CONDICAOMEMO" value={nfe.NFE_CONDICAOMEMO} rows={10} autoResize readOnly disabled font="font-monospace"/>
                            </div>
                        </PettTabPanel>
                        <PettTabPanel header="Totais">
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL PRODUTOS" name="NFE_TOTALPRODUTOS" value={nfe.NFE_TOTALPRODUTOS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL SERVIÇOS" name="NFE_TOTALSERVICOS" value={nfe.NFE_TOTALSERVICOS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL ITENS" name="NFE_TOTALITENS" value={nfe.NFE_TOTALITENS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL BRUTO" name="NFE_TOTALBRUTO" value={nfe.NFE_TOTALBRUTO} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="VALOR FRETE" name="NFE_VALORFRETE" value={nfe.NFE_VALORFRETE} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="VALOR SEGURO" name="NFE_VALORSEGURO" value={nfe.NFE_VALORSEGURO} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="VALOR DESP. ACESSÓRIAS" name="NFE_VALORDESPACESS" value={nfe.NFE_VALORDESPACESS} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="% DESCONTO" name="NFE_DESCPORC" value={nfe.NFE_DESCPORC} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="VALOR DESCONTO" name="NFE_DESCVALOR" value={nfe.NFE_DESCVALOR} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="VALOR TOTAL" name="NFE_VALORTOTAL" value={nfe.NFE_VALORTOTAL} readOnly disabled/>
                            </div>

                            <strong>Totais ICMS</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC." name="NFE_BASEICMS" value={nfe.NFE_BASEICMS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="NFE_TOTALICMS" value={nfe.NFE_TOTALICMS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC. ST" name="NFE_BASEICMSST" value={nfe.NFE_BASEICMSST} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL ST" name="NFE_TOTALICMSST" value={nfe.NFE_TOTALICMSST} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL UF DEST" name="NFE_TOTALICMSUFDEST" value={nfe.NFE_TOTALICMSUFDEST} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL UF REMET" name="NFE_TOTALICMSUFREMET" value={nfe.NFE_TOTALICMSUFREMET} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL FCP" name="NFE_TOTALFCP" value={nfe.NFE_TOTALFCP} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL FCP ST" name="NFE_TOTALFCPST" value={nfe.NFE_TOTALFCPST} readOnly disabled/>
                            </div>

                            <strong>Totais PIS</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC." name="NFE_BASEPIS" value={nfe.NFE_BASEPIS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="NFE_TOTALPIS" value={nfe.NFE_TOTALPIS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC. ST" name="NFE_BASEPISST" value={nfe.NFE_BASEPISST} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL ST" name="NFE_TOTALPISST" value={nfe.NFE_TOTALPISST} readOnly disabled/>
                            </div>

                            <strong>Totais COFINS</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC." name="NFE_BASECOFINS" value={nfe.NFE_BASECOFINS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="NFE_TOTALCOFINS" value={nfe.NFE_TOTALCOFINS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC. ST" name="NFE_BASECOFINSST" value={nfe.NFE_BASECOFINSST} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL ST" name="NFE_TOTALCOFINSST" value={nfe.NFE_TOTALCOFINSST} readOnly disabled/>
                            </div>

                            <strong>Totais ISS</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC." name="NFE_BASEISS" value={nfe.NFE_BASEISS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="NFE_TOTALISS" value={nfe.NFE_TOTALISS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="DEDUÇÃO" name="NFE_TOTALISSDEDUCAO" value={nfe.NFE_TOTALISSDEDUCAO} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="DESC. COND." name="NFE_TOTALISSDESCCOND" value={nfe.NFE_TOTALISSDESCCOND} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="DESC. INCOND." name="NFE_TOTALISSDESCINCOND" value={nfe.NFE_TOTALISSDESCINCOND} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="OUTROS" name="NFE_TOTALISSOUTROS" value={nfe.NFE_TOTALISSOUTROS} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="RETENÇÃO" name="NFE_TOTALISSRETENCAO" value={nfe.NFE_TOTALISSRETENCAO} readOnly disabled/>
                                <PettFieldDate size="col-lg-2 col-md-6 col-sm-6" label="DATA PREST. SERV." name="NFE_DTPRESTSERVICO" value={nfe.NFE_DTPRESTSERVICO} set={setNfe} readOnly={disableFields} disabled={disableFields}/>
                            </div>

                            <strong>Totais IPI</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC." name="NFE_BASEIPI" value={nfe.NFE_BASEIPI} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="NFE_TOTALIPI" value={nfe.NFE_TOTALIPI} readOnly disabled/>
                            </div>

                            <strong>Totais II</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="BASE CALC." name="NFE_BASEII" value={nfe.NFE_BASEII} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="NFE_TOTALII" value={nfe.NFE_TOTALII} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL ADUANA" name="NFE_TOTALADUANA" value={nfe.NFE_TOTALADUANA} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL IOF" name="NFE_TOTALIOF" value={nfe.NFE_TOTALIOF} readOnly disabled/>
                            </div>

                            <strong>Totais Simples Nacional</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="% CRÉDITO" name="NFE_ALIQICMSCREDSN" value={nfe.NFE_ALIQICMSCREDSN} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="NFE_TOTALICMSCREDSN" value={nfe.NFE_TOTALICMSCREDSN} readOnly disabled/>
                            </div>

                            <strong>Totais Tributos</strong>
                            <div className="row mb-3 g-1">
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="FEDERAL" name="NFE_TOTALTRIBUTOSFED" value={nfe.NFE_TOTALTRIBUTOSFED} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="ESTADUAL" name="NFE_TOTALTRIBUTOSEST" value={nfe.NFE_TOTALTRIBUTOSEST} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="MUNICIPAL" name="NFE_TOTALTRIBUTOSMUN" value={nfe.NFE_TOTALTRIBUTOSMUN} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="IMPORTAÇÃO" name="NFE_TOTALTRIBUTOSIMP" value={nfe.NFE_TOTALTRIBUTOSIMP} readOnly disabled/>
                                <PettFieldMoney size="col-lg-2 col-md-6 col-sm-6" label="TOTAL" name="NFE_TOTALTRIBUTOS" value={nfe.NFE_TOTALTRIBUTOS} readOnly disabled/>                            
                            </div>
                        </PettTabPanel>
                        <PettTabPanel header="Outros">
                            <div className="row mb-3 g-1">
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="CHAVE DE ACESSO" name="NFE_CHAVEACESSO" value={nfe.NFE_CHAVEACESSO} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="LOTE" name="NFE_LOTE" value={nfe.NFE_LOTE} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="MODELO" name="NFE_MODELO" value={nfe.NFE_MODELO} set={setNfe} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="SERIE" name="NFE_SERIE" value={nfe.NFE_SERIE} set={setNfe} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="RECIBO DE ENVIO" name="NFE_RECIBO" value={nfe.NFE_RECIBO} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="DATA HORA RECIBO" name="NFE_RECIBODH" value={nfe.NFE_RECIBODH} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="PROTOCOLO AUTORIZAÇÃO" name="NFE_PROTOCOLO" value={nfe.NFE_PROTOCOLO} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="DATA HORA AUTORIZAÇÃO" name="NFE_PROTOCOLODH" value={nfe.NFE_PROTOCOLODH} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="MOTIVO CANCELAMENTO" name="NFE_MOTIVOCANCELAMENTO" value={nfe.NFE_MOTIVOCANCELAMENTO} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="PROTOCOLO CANCELAMENTO" name="NFE_PROTOCOLOCANC" value={nfe.NFE_PROTOCOLOCANC} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="DATA HORA CANCELAMENTO" name="NFE_PROTOCOLOCANCDH" value={nfe.NFE_PROTOCOLOCANCDH} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="MOTIVO INUTILIZAÇÃO" name="NFE_MOTIVOINUTILIZACAO" value={nfe.NFE_MOTIVOINUTILIZACAO} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="PROTOCOLO INUTILIZAÇÃO" name="NFE_PROTOCOLOINUT" value={nfe.NFE_PROTOCOLOINUT} readOnly disabled/>
                                <PettFieldText size="col-lg-2 col-md-6 col-sm-6" label="DATA HORA INUTILIZAÇÃO" name="NFE_PROTOCOLOINUTDH" value={nfe.NFE_PROTOCOLOINUTDH} readOnly disabled/>
                            </div>
                        </PettTabPanel>
                    </PettTab>
                </PettIf>
            </ColunaCentral>
            <div className="mb-5"></div>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 gx-1 ">
                    <PettFieldText size="col-xl-1 col-lg-2 col-md-3 col-sm-4 mb-1" label="CÓDIGO" name="NFE_CODIGO" value={pesquisa.NFE_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldDate size="col-xl-1 col-lg-2 col-md-3 col-sm-4 mb-1" label="DATA INICIAL" name="datainicial" value={pesquisa.datainicial} set={setPesquisa}/>
                    <PettFieldDate size="col-xl-1 col-lg-2 col-md-3 col-sm-4 mb-1" label="DATA FINAL" name="datafinal" value={pesquisa.datafinal} set={setPesquisa}/>
                    <PettFieldDrop size="col-xl-2 col-lg-2 col-md-3 col-sm-4 mb-1" label="STATUS" name="NFE_STATUS" value={pesquisa.NFE_STATUS} options={selectStatusVendas} set={setPesquisa}/>
                    <PettFieldText size="col-xl-2 col-lg-2 col-md-2 col-sm-3 mb-1" label="CÓDIGO CLIENTE" name="NFE_CLIENTE" value={pesquisa.NFE_CLIENTE} set={setPesquisa} />
                    <PettFieldText size="col-xl-3 col-lg-4 col-md-6 col-sm-5 mb-1" label="CLIENTE" name="NFE_NOME" value={pesquisa.NFE_NOME} set={setPesquisa} />
                    <PettFieldText size="col-xl-2 col-lg-3 col-md-4 col-sm-4 mb-1" label="PEDIDO CLIENTE" name="NFE_PEDIDOCLIENTE" value={pesquisa.NFE_PEDIDOCLIENTE} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={pesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="NFE_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="NFE_NFE" header="Cód. NFe" sortable ></PettColumn>
                    <PettColumn field="NFE_CLIENTE" header="Cliente" sortable ></PettColumn>
                    <PettColumn field="NFE_NOME" header="Nome Cliente" sortable></PettColumn>
                    <PettColumn field="NFE_STATUS" body={bodyStatus} header="Status" align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="NFE_DTEMISSAO" header="Emissão" body={(rowData) => formatarDataStr2(rowData,'NFE_DTEMISSAO')} sortable ></PettColumn>
                    <PettColumn field="NFE_VALORTOTAL" header="Valor Total" body={(rowData) => formatarMoeda(rowData,'NFE_VALORTOTAL')} alignHeader="right" bodyStyle={{ textAlign: 'right' }}></PettColumn>
                    <PettColumn field="NFE_VENDEDOR" header="Vendedor" align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="VEN_NOME" header="Nome Vendedor"></PettColumn>
                    <PettColumn field="NFE_PEDIDOCLIENTE" header="N. Ped. Cliente" align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="NFE_VIAINTERNET" header="Via Internet" align="center" alignHeader="center"></PettColumn>
                    {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
                </PettGrid>
                <Sentinela onIntersect={carregarMais} carregando={carregando} final={final} length={listagem.length} erro={erro}/>
            </ColunaCentral>
        </PettIf>           
    
        <Rodape />
        <ClientesLoc showModal={showClientesLoc} onCloseModal={(data) => { selecionar(data, setNfe, mapaClientes); setShowClientesLoc(false); }}/>
        <CondicoesLoc showModal={showCondicoesLoc} onCloseModal={(data) => { selecionar(data, setNfe, mapaCondicoes); setShowCondicoesLoc(false); }}/>
        <FornecedoresLoc showModal={showTransportadorasLoc} onCloseModal={(data) => { selecionar(data, setNfe, mapaTransportadoras); setShowTransportadorasLoc(false); }}/>
        <NaturezasLoc showModal={showNaturezasLoc} onCloseModal={(data) => { selecionar(data, setNfe, mapaNaturezas); setShowNaturezasLoc(false); }}/>
        <VendedoresLoc showModal={showVendedoresLoc} onCloseModal={(data) => { selecionar(data, setNfe, mapaVendedores); setShowVendedoresLoc(false); }}/>
        <VendedoresLoc showModal={showExpedidoresLoc} onCloseModal={(data) => { selecionar(data, setNfe, mapaExpedidores); setShowExpedidoresLoc(false); }}/>
        <NfesItens showModal={showItem} onCloseModal={itemClose} nfe={nfe} item={nfeItem} operacao={operacaoItem} />
    </>
}

export default Nfes;