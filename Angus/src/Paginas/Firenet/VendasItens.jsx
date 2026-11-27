import { useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettModal } from 'pett-componentes';
import { PettTab } from 'pett-componentes';
import { PettTabPanel } from 'pett-componentes';

import AlmoxarifadosLoc from '../../Componentes/Localizadores/AlmoxarifadosLoc';
import BeneficiosLoc from '../../Componentes/Localizadores/BeneficiosLoc';
import CidadesLoc from '../../Componentes/Localizadores/CidadesLoc';
import ClassFiscalLoc from '../../Componentes/Localizadores/ClassFiscalLoc';
import IcmsLoc from '../../Componentes/Localizadores/IcmsLoc';
import IpiLoc from '../../Componentes/Localizadores/IpiLoc';
import IssLoc from '../../Componentes/Localizadores/IssLoc';
import PaisesLoc from '../../Componentes/Localizadores/PaisesLoc';
import PisCofinsLoc from '../../Componentes/Localizadores/PisCofinsLoc';
import ProdutosLoc from '../../Componentes/Localizadores/ProdutosLoc';
import NaturezasLoc from '../../Componentes/Localizadores/NaturezasLoc';
import { selectOrigem, selectDesoneracao, selectIndicadorIss, selectIntermedio, selectModalidade, selectModalidadeST, selectSimNao, selectViaTransporte } from '../../Combox';
import { useTabela } from '../../Hooks/useTabela';
import { useLocalizar, ALMOXARIFADOS, CIDADES, CLASSFISCAL, ICMS, IPI, ISS, NATUREZAS, PAISES, PISCOFINS, PRODUTOS  } from '../../Hooks/useLocalizar';

const mapaAlmoxarifados = { VEI_ALMOXARIFADO: 'ALM_CODIGO', ALM_DESCRICAO: 'ALM_DESCRICAO' };
const mapaBeneficios    = { VEI_BENEFICIO: 'BEN_CODIGO' };
const mapaCidades       = { VEI_CIDADEISS: 'CID_CODIGO' };
const mapaClassFiscal   = { VEI_CLASSFISCAL: 'CLF_CODIGO', CLF_DESCRICAO: 'CLF_DESCRICAO', VEI_EXCECAO: 'CLF_EXCECAO' };
const mapaIcms          = { VEI_CSTICMS: 'ICM_CODIGO', ICM_DESCRICAO: 'ICM_DESCRICAO' };
const mapaIpi           = { VEI_CSTIPI: 'IPI_CODIGO', IPI_DESCRICAO: 'IPI_DESCRICAO' };
const mapaIss           = { VEI_TIPOISS: 'ISS_CODIGO', ISS_DESCRICAO: 'ISS_DESCRICAO' };
const mapaNaturezas     = { VEI_CFOP: 'NAT_CODIGO', NAT_DESCRICAO: 'NAT_DESCRICAO' };
const mapaPaises        = { VEI_PAISISS: 'PAI_CODIGO' };
const mapaPis           = { VEI_CSTPIS: 'PIS_CODIGO', PIS_DESCRICAO: 'PIS_DESCRICAO' };
const mapaCofins        = { VEI_CSTCOFINS: 'PIS_CODIGO', PIS_DESCRICAO1: 'PIS_DESCRICAO' };
const mapaProdutos      = { 
    VEI_ALIQCOFINS: 'PRO_ALIQCOFINS',
    VEI_ALIQCOFINSST: 'PRO_ALIQCOFINSST',
    VEI_ALIQFCP: 'PRO_ALIQFCP',
    VEI_ALIQFCPST: 'PRO_ALIQFCPST',
    VEI_ALIQICMS: 'PRO_ALIQICMS',
    VEI_ALIQICMSADICST: 'PRO_ALIQICMSADICST',
    VEI_ALIQICMSRED: 'PRO_ALIQICMSRED',
    VEI_ALIQICMSST: 'PRO_ALIQICMSST',
    VEI_ALIQICMSINTER: 'PRO_ALIQICMSINTER',
    VEI_ALIQICMSINTERPART: 'PRO_ALIQICMSINTERPART',
    VEI_ALIQIPI: 'PRO_ALIQIPI',
    VEI_ALIQISS: 'PRO_ALIQISS',
    VEI_ALIQPIS: 'PRO_ALIQPIS',
    VEI_ALIQPISST: 'PRO_ALIQPISST',
    VEI_ALMOXARIFADO: 'PRO_ALMOXARIFADO',
    VEI_CEST: 'PRO_CEST',
    VEI_CLASSFISCAL: 'PRO_CLASSFISCAL',
    VEI_CODIGOBARRAS: 'PRO_CODIGOBARRAS',
    VEI_CODIGOFAB: 'PRO_CODIGOFAB',
    VEI_COMPOEBASEICMS: 'PRO_COMPOEBASEICMS',
    VEI_COMPOEBASEICMSST: 'PRO_COMPOEBASEICMSST',
    VEI_CONVERSAO: 'PRO_CONVERSAO',
    VEI_CSTCOFINS: 'PRO_CSTCOFINS',
    VEI_CSTICMS: 'PRO_CSTICMS',
    VEI_CSTIPI: 'PRO_CSTIPI',
    VEI_CSTPIS: 'PRO_CSTPIS',
    VEI_DESCMAX: 'PRO_DESCMAX',
    VEI_DESCRICAO: 'PRO_NOME',
    VEI_ENQUADRAMENTOIPI: 'PRO_ENQUADRAMENTOIPI',
    VEI_EXCECAO: 'PRO_EXCECAO',
    VEI_FCI: 'PRO_FCI',
    VEI_INCENTIVOISS: 'PRO_INCENTIVOISS',
    VEI_INDICADORISS: 'PRO_INDICADORISS',
    VEI_INFOADICIONAL: 'PRO_OBSERVACOES',
    VEI_LOCALIZACAO: 'PRO_LOCALIZACAO',
    VEI_MODICMS: 'PRO_MODICMS',
    VEI_MODICMSST: 'PRO_MODICMSST',
    VEI_ORIGEM: 'PRO_ORIGEM',
    VEI_PESO: 'PRO_PESO',
    VEI_PRECOCUSTO: 'PRO_PRECOCUSTO',
    VEI_PRODUTO: 'PRO_CODIGO',
    VEI_PRODUTOREAL: 'PRO_PRODUTOREAL',
    VEI_TIPO: 'PRO_TIPO',
    VEI_TIPOISS: 'PRO_TIPOISS',
    VEI_UNIDADE: 'PRO_UNIDADE',
    VEI_VALORUNIT: 'PRO_PRECOVENDA',
    CLF_DESCRICAO: 'CLF_DESCRICAO',
    ICM_DESCRICAO: 'ICM_DESCRICAO',
    IPI_DESCRICAO: 'IPI_DESCRICAO',
    ISS_DESCRICAO: 'ISS_DESCRICAO',
    PIS_DESCRICAO: 'PIS_DESCRICAO',
    PIS_DESCRICAO1: 'PIS_DESCRICAO1',
    PRO_COMPOSTO: 'PRO_COMPOSTO',
    PRO_ESTOQUEATUAL: 'PRO_ESTOQUEATUAL',
};

const vazio = {
    VEI_ALIQCOFINS: '0',
    VEI_ALIQCOFINSST: '0',
    VEI_ALIQFCP: '0',
    VEI_ALIQFCPST: '0',
    VEI_ALIQICMS: '0',
    VEI_ALIQICMSADICST: '0',
    VEI_ALIQICMSINTER: '0',
    VEI_ALIQICMSINTERPART: '0',
    VEI_ALIQICMSRED: '0',
    VEI_ALIQICMSST: '0',
    VEI_ALIQICMSSTRET: '0',
    VEI_ALIQII: '0',
    VEI_ALIQIPI: '0',
    VEI_ALIQISS: '0',
    VEI_ALIQPIS: '0',
    VEI_ALIQPISST: '0',
    VEI_ALMOXARIFADO: '1',
    VEI_BASECOFINS: '0',
    VEI_BASECOFINSST: '0',
    VEI_BASEICMS: '0',
    VEI_BASEICMSRED: '0',
    VEI_BASEICMSST: '0',
    VEI_BASEICMSSTRET: '0',
    VEI_BASEII: '0',
    VEI_BASEIPI: '0',
    VEI_BASEISS: '0',
    VEI_BASEPIS: '0',
    VEI_BASEPISST: '0',
    VEI_BENEFICIO: '',
    VEI_CEST: '',
    VEI_CFOP: '',
    VEI_CIDADEISS: '',
    VEI_CLASSFISCAL: '',
    VEI_CODIGO: '',
    VEI_CODIGOBARRAS: '',
    VEI_CODIGOFAB: '',
    VEI_COMISSAO: '',
    VEI_COMPLEMENTO: '',
    VEI_COMPOEBASEICMS: 'N',
    VEI_COMPOEBASEICMSST: 'N',
    VEI_COMPOETOTAL: 'S',
    VEI_CONVERSAO: '',
    VEI_CSTCOFINS: '',
    VEI_CSTICMS: '',
    VEI_CSTIPI: '',
    VEI_CSTPIS: '',
    VEI_DESCMAX: '',
    VEI_DESCPORC: '0',
    VEI_DESCRICAO: '',
    VEI_DESCVALOR: '0',
    VEI_DESONERACAO: '',
    VEI_DICNPJ: '',
    VEI_DIDATA: '',
    VEI_DIDESEMBARACODATA: '',
    VEI_DIDESEMBARACOLOCAL: '',
    VEI_DIDESEMBARACOUF: '',
    VEI_DIEXPORTADORCOD: '',
    VEI_DIINTERMEDIO: '',
    VEI_DINUMERO: '',
    VEI_DITERCEIROUF: '',
    VEI_DITRANSPORTE: '',
    VEI_DIVALORAFRMM: '0',
    VEI_ENQUADRAMENTOIPI: '',
    VEI_EXCECAO: '0',
    VEI_EXCHAVEACESSO: '',
    VEI_EXDRAWBACK: '',
    VEI_EXQUANTIDADE: '',
    VEI_EXREGISTRO: '',
    VEI_FCI: '',
    VEI_INCENTIVOISS: 'N',
    VEI_INDICADORISS: '',
    VEI_INFOADICIONAL: '',
    VEI_LOCALIZACAO: '',
    VEI_LOTE: '',
    VEI_LUCROPORC: '0',
    VEI_LUCROVALOR: '0',
    VEI_MODICMS: '',
    VEI_MODICMSST: '',
    VEI_ORIGEM: '',
    VEI_PAISISS: '',
    VEI_PEDIDOCLIENTE: '',
    VEI_PEDIDOCLIENTEITEM: '',
    VEI_PESO: '0',
    VEI_PESOTOTAL: '0',
    VEI_PRECOCUSTO: '0',
    VEI_PRECOCUSTOTOTAL: '0',
    VEI_PROCESSOISS: '',
    VEI_PRODUTO: '',
    VEI_PRODUTOREAL: '',
    VEI_QUANTIDADE: '1',
    VEI_QUANTIDADETROCA: '0',
    VEI_SEQUENCIA: '',
    VEI_SERVICOISS: '',
    VEI_SOMACOFINSST: 'N',
    VEI_SOMAPISST: 'N',
    VEI_TIPO: '',
    VEI_TIPOISS: '',
    VEI_UNIDADE: '',
    VEI_VALORACESSORIAS: '0',
    VEI_VALORADUANA: '0',
    VEI_VALORCOFINS: '0',
    VEI_VALORCOFINSST: '0',
    VEI_VALORCOMISSAO: '0',
    VEI_VALORFCP: '0',
    VEI_VALORFCPST: '0',
    VEI_VALORFRETE: '0',
    VEI_VALORICMS: '0',
    VEI_VALORICMSCREDSN: '0',
    VEI_VALORICMSDESONERADO: '0',
    VEI_VALORICMSST: '0',
    VEI_VALORICMSSTRET: '0',
    VEI_VALORICMSSUBSTITUTO: '0',
    VEI_VALORICMSUFDEST: '0',
    VEI_VALORICMSUFREMET: '0',
    VEI_VALORII: '0',
    VEI_VALORIOF: '0',
    VEI_VALORIPI: '0',
    VEI_VALORISS: '0',
    VEI_VALORISSDEDUCAO: '0',
    VEI_VALORISSDESCCOND: '0',
    VEI_VALORISSDESCINCOND: '0',
    VEI_VALORISSOUTROS: '0',
    VEI_VALORISSRETENCAO: '0',
    VEI_VALORPIS: '0',
    VEI_VALORPISST: '0',
    VEI_VALORSEGURO: '0',
    VEI_VALORTOTAL: '0',
    VEI_VALORTOTALBRUTO: '0',
    VEI_VALORTRIBUTOS: '0',
    VEI_VALORTRIBUTOSEST: '0',
    VEI_VALORTRIBUTOSFED: '0',
    VEI_VALORTRIBUTOSIMP: '0',
    VEI_VALORTRIBUTOSMUN: '0',
    VEI_VALORUNIT: '0',
    VEI_VENDA: '',
};

// Campos enviados ao salvar.
const transformarDados = (dados) => ({
    VED_CODIGO: dados.VEI_VENDA || '',
    VEI_ALIQCOFINS: dados.VEI_ALIQCOFINS || '',
    VEI_ALIQCOFINSST: dados.VEI_ALIQCOFINSST || '',
    VEI_ALIQFCP: dados.VEI_ALIQFCP || '',
    VEI_ALIQFCPST: dados.VEI_ALIQFCPST || '',
    VEI_ALIQICMS: dados.VEI_ALIQICMS || '',
    VEI_ALIQICMSADICST: dados.VEI_ALIQICMSADICST || '',
    VEI_ALIQICMSINTER: dados.VEI_ALIQICMSINTER || '',
    VEI_ALIQICMSINTERPART: dados.VEI_ALIQICMSINTERPART || '',
    VEI_ALIQICMSRED: dados.VEI_ALIQICMSRED || '',
    VEI_ALIQICMSST: dados.VEI_ALIQICMSST || '',
    VEI_ALIQICMSSTRET: dados.VEI_ALIQICMSSTRET || '',
    VEI_ALIQII: dados.VEI_ALIQII || '',
    VEI_ALIQIPI: dados.VEI_ALIQIPI || '',
    VEI_ALIQISS: dados.VEI_ALIQISS || '',
    VEI_ALIQPIS: dados.VEI_ALIQPIS || '',
    VEI_ALIQPISST: dados.VEI_ALIQPISST || '',
    VEI_ALMOXARIFADO: dados.VEI_ALMOXARIFADO || '',
    VEI_BASECOFINS: dados.VEI_BASECOFINS || '',
    VEI_BASECOFINSST: dados.VEI_BASECOFINSST || '',
    VEI_BASEICMS: dados.VEI_BASEICMS || '',
    VEI_BASEICMSRED: dados.VEI_BASEICMSRED || '',
    VEI_BASEICMSST: dados.VEI_BASEICMSST || '',
    VEI_BASEICMSSTRET: dados.VEI_BASEICMSSTRET || '',
    VEI_BASEII: dados.VEI_BASEII || '',
    VEI_BASEIPI: dados.VEI_BASEIPI || '',
    VEI_BASEISS: dados.VEI_BASEISS || '',
    VEI_BASEPIS: dados.VEI_BASEPIS || '',
    VEI_BASEPISST: dados.VEI_BASEPISST || '',
    VEI_BENEFICIO: dados.VEI_BENEFICIO || '',
    VEI_CEST: dados.VEI_CEST || '',
    VEI_CFOP: dados.VEI_CFOP || '',
    VEI_CIDADEISS: dados.VEI_CIDADEISS || '',
    VEI_CLASSFISCAL: dados.VEI_CLASSFISCAL || '',
    VEI_CODIGO: dados.VEI_CODIGO || '',
    VEI_CODIGOBARRAS: dados.VEI_CODIGOBARRAS || '',
    VEI_CODIGOFAB: dados.VEI_CODIGOFAB || '',
    VEI_COMISSAO: dados.VEI_COMISSAO || '',
    VEI_COMPLEMENTO: dados.VEI_COMPLEMENTO || '',
    VEI_COMPOEBASEICMS: dados.VEI_COMPOEBASEICMS || '',
    VEI_COMPOEBASEICMSST: dados.VEI_COMPOEBASEICMSST || '',
    VEI_COMPOETOTAL: dados.VEI_COMPOETOTAL || '',
    VEI_CONVERSAO: dados.VEI_CONVERSAO || '',
    VEI_CSTCOFINS: dados.VEI_CSTCOFINS || '',
    VEI_CSTICMS: dados.VEI_CSTICMS || '',
    VEI_CSTIPI: dados.VEI_CSTIPI || '',
    VEI_CSTPIS: dados.VEI_CSTPIS || '',
    VEI_DESCMAX: dados.VEI_DESCMAX || '',
    VEI_DESCPORC: dados.VEI_DESCPORC || '',
    VEI_DESCRICAO: dados.VEI_DESCRICAO || '',
    VEI_DESCVALOR: dados.VEI_DESCVALOR || '',
    VEI_DESONERACAO: dados.VEI_DESONERACAO || '',
    VEI_DICNPJ: dados.VEI_DICNPJ || '',
    VEI_DIDATA: dados.VEI_DIDATA || '',
    VEI_DIDESEMBARACODATA: dados.VEI_DIDESEMBARACODATA || '',
    VEI_DIDESEMBARACOLOCAL: dados.VEI_DIDESEMBARACOLOCAL || '',
    VEI_DIDESEMBARACOUF: dados.VEI_DIDESEMBARACOUF || '',
    VEI_DIEXPORTADORCOD: dados.VEI_DIEXPORTADORCOD || '',
    VEI_DIINTERMEDIO: dados.VEI_DIINTERMEDIO || '',
    VEI_DINUMERO: dados.VEI_DINUMERO || '',
    VEI_DITERCEIROUF: dados.VEI_DITERCEIROUF || '',
    VEI_DITRANSPORTE: dados.VEI_DITRANSPORTE || '',
    VEI_DIVALORAFRMM: dados.VEI_DIVALORAFRMM || '',
    VEI_ENQUADRAMENTOIPI: dados.VEI_ENQUADRAMENTOIPI || '',
    VEI_EXCECAO: dados.VEI_EXCECAO || '',
    VEI_EXCHAVEACESSO: dados.VEI_EXCHAVEACESSO || '',
    VEI_EXDRAWBACK: dados.VEI_EXDRAWBACK || '',
    VEI_EXQUANTIDADE: dados.VEI_EXQUANTIDADE || '',
    VEI_EXREGISTRO: dados.VEI_EXREGISTRO || '',
    VEI_FCI: dados.VEI_FCI || '',
    VEI_INCENTIVOISS: dados.VEI_INCENTIVOISS || '',
    VEI_INDICADORISS: dados.VEI_INDICADORISS || '',
    VEI_INFOADICIONAL: dados.VEI_INFOADICIONAL || '',
    VEI_LOCALIZACAO: dados.VEI_LOCALIZACAO || '',
    VEI_LOTE: dados.VEI_LOTE || '',
    VEI_LUCROPORC: dados.VEI_LUCROPORC || '',
    VEI_LUCROVALOR: dados.VEI_LUCROVALOR || '',
    VEI_MODICMS: dados.VEI_MODICMS || '',
    VEI_MODICMSST: dados.VEI_MODICMSST || '',
    VEI_ORIGEM: dados.VEI_ORIGEM || '',
    VEI_PAISISS: dados.VEI_PAISISS || '',
    VEI_PEDIDOCLIENTE: dados.VEI_PEDIDOCLIENTE || '',
    VEI_PEDIDOCLIENTEITEM: dados.VEI_PEDIDOCLIENTEITEM || '',
    VEI_PESO: dados.VEI_PESO || '',
    VEI_PESOTOTAL: dados.VEI_PESOTOTAL || '',
    VEI_PRECOCUSTO: dados.VEI_PRECOCUSTO || '',
    VEI_PRECOCUSTOTOTAL: dados.VEI_PRECOCUSTOTOTAL || '',
    VEI_PROCESSOISS: dados.VEI_PROCESSOISS || '',
    VEI_PRODUTO: dados.VEI_PRODUTO || '',
    VEI_PRODUTOREAL: dados.VEI_PRODUTOREAL || '',
    VEI_QUANTIDADE: dados.VEI_QUANTIDADE || '',
    VEI_QUANTIDADETROCA: dados.VEI_QUANTIDADETROCA || '',
    VEI_SERVICOISS: dados.VEI_SERVICOISS || '',
    VEI_SOMACOFINSST: dados.VEI_SOMACOFINSST || '',
    VEI_SOMAPISST: dados.VEI_SOMAPISST || '',
    VEI_TIPO: dados.VEI_TIPO || '',
    VEI_TIPOISS: dados.VEI_TIPOISS || '',
    VEI_UNIDADE: dados.VEI_UNIDADE || '',
    VEI_VALORACESSORIAS: dados.VEI_VALORACESSORIAS || '',
    VEI_VALORADUANA: dados.VEI_VALORADUANA || '',
    VEI_VALORCOFINS: dados.VEI_VALORCOFINS || '',
    VEI_VALORCOFINSST: dados.VEI_VALORCOFINSST || '',
    VEI_VALORCOMISSAO: dados.VEI_VALORCOMISSAO || '',
    VEI_VALORFCP: dados.VEI_VALORFCP || '',
    VEI_VALORFCPST: dados.VEI_VALORFCPST || '',
    VEI_VALORFRETE: dados.VEI_VALORFRETE || '',
    VEI_VALORICMS: dados.VEI_VALORICMS || '',
    VEI_VALORICMSCREDSN: dados.VEI_VALORICMSCREDSN || '',
    VEI_VALORICMSDESONERADO: dados.VEI_VALORICMSDESONERADO || '',
    VEI_VALORICMSST: dados.VEI_VALORICMSST || '',
    VEI_VALORICMSSTRET: dados.VEI_VALORICMSSTRET || '',
    VEI_VALORICMSSUBSTITUTO: dados.VEI_VALORICMSSUBSTITUTO || '',
    VEI_VALORICMSUFDEST: dados.VEI_VALORICMSUFDEST || '',
    VEI_VALORICMSUFREMET: dados.VEI_VALORICMSUFREMET || '',
    VEI_VALORII: dados.VEI_VALORII || '',
    VEI_VALORIOF: dados.VEI_VALORIOF || '',
    VEI_VALORIPI: dados.VEI_VALORIPI || '',
    VEI_VALORISS: dados.VEI_VALORISS || '',
    VEI_VALORISSDEDUCAO: dados.VEI_VALORISSDEDUCAO || '',
    VEI_VALORISSDESCCOND: dados.VEI_VALORISSDESCCOND || '',
    VEI_VALORISSDESCINCOND: dados.VEI_VALORISSDESCINCOND || '',
    VEI_VALORISSOUTROS: dados.VEI_VALORISSOUTROS || '',
    VEI_VALORISSRETENCAO: dados.VEI_VALORISSRETENCAO || '',
    VEI_VALORPIS: dados.VEI_VALORPIS || '',
    VEI_VALORPISST: dados.VEI_VALORPISST || '',
    VEI_VALORSEGURO: dados.VEI_VALORSEGURO || '',
    VEI_VALORTOTAL: dados.VEI_VALORTOTAL || '',
    VEI_VALORTOTALBRUTO: dados.VEI_VALORTOTALBRUTO || '',
    VEI_VALORTRIBUTOS: dados.VEI_VALORTRIBUTOS || '',
    VEI_VALORTRIBUTOSEST: dados.VEI_VALORTRIBUTOSEST || '',
    VEI_VALORTRIBUTOSFED: dados.VEI_VALORTRIBUTOSFED || '',
    VEI_VALORTRIBUTOSIMP: dados.VEI_VALORTRIBUTOSIMP || '',
    VEI_VALORTRIBUTOSMUN: dados.VEI_VALORTRIBUTOSMUN || '',
    VEI_VALORUNIT: dados.VEI_VALORUNIT || '',
    VEI_VENDA: dados.VEI_VENDA || '',
});

function VendasItens(props) {
    const { venda, item, showModal, onCloseModal } = props;
    const { localizar, selecionar } = useLocalizar();
    const {
        disableFields,
        editar,
        excluir,
        inserir,
        registro: vendaItemModal,
        salvar,
        setRegistro: setVendaItemModal,
        visualizar,
    } = useTabela('firenet/vendas', vazio, ['VED_CODIGO', 'VEI_CODIGO'], 'VEI_DESCRICAO', transformarDados, null, {
        ops: { visualizar: 'visualizarItem', inserir: 'inserirItem', atualizar: 'atualizarItem', excluir: 'excluirItem' },
        aoSalvar: onCloseModal, //devolve a venda atualizada para a tela de vendas.
    });

    // Handlers que chamam os métodos do Hook passando contexto local
    const hExcluir  = () => excluir({ ...vendaItemModal, VED_CODIGO: venda.VED_CODIGO }, onCloseModal);
    const hCancelar = () => onCloseModal({});

    const [ showAlmoxarifadosLoc, setShowAlmoxarifadosLoc ] = useState(false);
    const [ showBeneficiosLoc, setShowBeneficiosLoc ] = useState(false);
    const [ showCidadesLoc, setShowCidadesLoc ] = useState(false);
    const [ showClassFiscalLoc, setShowClassFiscalLoc ] = useState(false);
    const [ showIcmsLoc, setShowIcmsLoc ] = useState(false);
    const [ showIpiLoc, setShowIpiLoc ] = useState(false);
    const [ showIssLoc, setShowIssLoc ] = useState(false);
    const [ showPaisesLoc, setShowPaisesLoc ] = useState(false);
    const [ showPisLoc, setShowPisLoc ] = useState(false);
    const [ showCofinsLoc, setShowCofinsLoc ] = useState(false);
    const [ showNaturezasLoc, setShowNaturezasLoc ] = useState(false);
    const [ showProdutosLoc, setShowProdutosLoc ] = useState(false);

    // Ao abrir o modal: item existente é carregado (editável só se a venda estiver em aberto), item novo recebe os padrões da venda.
    useEffect(() => {
        if (item.VEI_CODIGO!=="") {
            const chave = { VED_CODIGO: venda.VED_CODIGO, VEI_CODIGO: item.VEI_CODIGO };
            venda.VED_STATUS==="A" ? editar(chave) : visualizar(chave);
        } else {
            inserir({ VEI_CFOP: venda.VED_CFOP, VEI_VENDA: venda.VED_CODIGO });
        }
        //eslint-disable-next-line
    },[item]);

    return <>
        <PettIf condicional={vendaItemModal} >
            <PettModal show={showModal} title="Item do Pedido..." size="xl" fechar={false}>
                <div className="row g-1 mb-3">
                    <PettFieldText size="col-lg-3 col-md-3 col-sm-3" label="CÓDIGO" name="VEI_CODIGO" value={vendaItemModal.VEI_CODIGO} readOnly disabled/>
                    <PettFieldText size="col-lg-3 col-md-3 col-sm-3" label="VENDA" name="VEI_VENDA" value={vendaItemModal.VEI_VENDA} readOnly disabled/>
                    <PettFieldText size="col-lg-3 col-md-3 col-sm-3" label="PEDIDO CLIENTE" name="VEI_PEDIDOCLIENTE" value={vendaItemModal.VEI_PEDIDOCLIENTE} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-3 col-md-3 col-sm-3" label="ITEM PEDIDO CLIENTE" name="VEI_PEDIDOCLIENTEITEM" value={vendaItemModal.VEI_PEDIDOCLIENTEITEM} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="PRODUTO" name="VEI_PRODUTO" value={vendaItemModal.VEI_PRODUTO} set={setVendaItemModal} onClick={() => setShowProdutosLoc(true)} onBlur={(e) => localizar(PRODUTOS, e.target.value, setVendaItemModal, mapaProdutos)} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME PRODUTO" name="VEI_DESCRICAO" value={vendaItemModal.VEI_DESCRICAO} readOnly disabled/>
                    <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="COMPLEMENTO" name="VEI_COMPLEMENTO" value={vendaItemModal.VEI_COMPLEMENTO} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="CÓDIGO FAB." name="VEI_CODIGOFAB" value={vendaItemModal.VEI_CODIGOFAB} readOnly disabled/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="CÓDIGO BARRAS" name="VEI_CODIGOBARRAS" value={vendaItemModal.VEI_CODIGOBARRAS} readOnly disabled/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="COMPOSTO" name="PRO_COMPOSTO" value={vendaItemModal.PRO_COMPOSTO} readOnly disabled/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="UNIDADE" name="VEI_UNIDADE" value={vendaItemModal.VEI_UNIDADE} readOnly disabled/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="ESTOQUE ATUAL" name="PRO_ESTOQUEATUAL" value={vendaItemModal.PRO_ESTOQUEATUAL} readOnly disabled/>
                    <PettFieldLoc size="col-lg-2 col-md-3 col-sm-4" label="LOTE" name="VEI_LOTE" value={vendaItemModal.VEI_LOTE} set={setVendaItemModal} onClick={() => setShowCidadesLoc(true)} readOnly disabled={disableFields}/>
                    <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CFOP" name="VEI_CFOP" value={vendaItemModal.VEI_CFOP} set={setVendaItemModal} onClick={() => setShowNaturezasLoc(true)} onBlur={(e) => localizar(NATUREZAS, e.target.value, setVendaItemModal, mapaNaturezas)} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CFOP" name="NAT_DESCRICAO" value={vendaItemModal.NAT_DESCRICAO} readOnly disabled/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="TIPO PRODUTO" name="VEI_TIPO" value={vendaItemModal.VEI_TIPO} readOnly disabled/>
                    <PettFieldFloat size="col-lg-2 col-md-2 col-sm-4" label="PESO" name="VEI_PESO" value={vendaItemModal.VEI_PESO} set={setVendaItemModal} minDigits={3} maxDigits={3} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="CÓD. CEST" name="VEI_CEST" value={vendaItemModal.VEI_CEST} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldLoc size="col-lg-2 col-md-3 col-sm-4" label="BENEFÍCIO" name="VEI_BENEFICIO" value={vendaItemModal.VEI_BENEFICIO} set={setVendaItemModal} onClick={() => setShowBeneficiosLoc(true)} readOnly disabled={disableFields}/>
                    <PettFieldFloat size="col-lg-2 col-md-2 col-sm-4" label="QUANTIDADE" name="VEI_QUANTIDADE" value={vendaItemModal.VEI_QUANTIDADE} set={setVendaItemModal} minDigits={3} maxDigits={3} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR UNITÁRIO" name="VEI_VALORUNIT" value={vendaItemModal.VEI_VALORUNIT} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR FRETE" name="VEI_VALORFRETE" value={vendaItemModal.VEI_VALORFRETE} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR SEGURO" name="VEI_VALORSEGURO" value={vendaItemModal.VEI_VALORSEGURO} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ACESSÓRIAS" name="VEI_VALORACESSORIAS" value={vendaItemModal.VEI_VALORACESSORIAS} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="TOTAL BRUTO" name="VEI_VALORTOTALBRUTO" value={vendaItemModal.VEI_VALORTOTALBRUTO} readOnly disabled/>
                    <PettFieldFloat size="col-lg-2 col-md-2 col-sm-4" label="% DESCONTO" name="VEI_DESCPORC" value={vendaItemModal.VEI_DESCPORC} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR DESCONTO" name="VEI_DESCVALOR" value={vendaItemModal.VEI_DESCVALOR} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR COMISSÃO" name="VEI_VALORCOMISSAO" value={vendaItemModal.VEI_VALORCOMISSAO} readOnly disabled/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR TRIBUTOS" name="VEI_VALORTRIBUTOS" value={vendaItemModal.VEI_VALORTRIBUTOS} readOnly disabled/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR TOTAL" name="VEI_VALORTOTAL" value={vendaItemModal.VEI_VALORTOTAL} readOnly disabled/>
                    <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CLASS. FISCAL" name="VEI_CLASSFISCAL" value={vendaItemModal.VEI_CLASSFISCAL} set={setVendaItemModal} onClick={() => setShowClassFiscalLoc(true)} onBlur={(e) => localizar(CLASSFISCAL, e.target.value, setVendaItemModal, mapaClassFiscal)} readOnly={disableFields} disabled={disableFields} mask="99999999"/>
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CLASS. FISCAL" name="CLF_DESCRICAO" value={vendaItemModal.CLF_DESCRICAO} readOnly disabled/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="EXCEÇÃO" name="VEI_EXCECAO" value={vendaItemModal.VEI_EXCECAO} readOnly disabled/>
                    <PettFieldLoc size="col-lg-2 col-md-2 col-sm-4" label="ALMOXARIFADO" name="VEI_ALMOXARIFADO" value={vendaItemModal.VEI_ALMOXARIFADO} set={setVendaItemModal} onClick={() => setShowAlmoxarifadosLoc(true)} onBlur={(e) => localizar(ALMOXARIFADOS, e.target.value, setVendaItemModal, mapaAlmoxarifados)} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-4" label="ALMOXARIFADO" name="ALM_DESCRICAO" value={vendaItemModal.ALM_DESCRICAO} set={setVendaItemModal} readOnly disabled/>
                </div>

                <PettTab>
                    <PettTabPanel header="ICMS">
                        <div className="row g-1">
                            <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CST ICMS" name="VEI_CSTICMS" value={vendaItemModal.VEI_CSTICMS} set={setVendaItemModal} onClick={() => setShowIcmsLoc(true)} onBlur={(e) => localizar(ICMS, e.target.value, setVendaItemModal, mapaIcms)} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CST ICMS" name="ICM_DESCRICAO" value={vendaItemModal.ICM_DESCRICAO} readOnly disabled/>                           
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="ORIGEM" name="VEI_ORIGEM" value={vendaItemModal.VEI_ORIGEM} set={setVendaItemModal} options={selectOrigem} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="MODALIDADE" name="VEI_MODICMS" value={vendaItemModal.VEI_MODICMS} set={setVendaItemModal} options={selectModalidade} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="MODALIDADE ST" name="VEI_MODICMSST" value={vendaItemModal.VEI_MODICMSST} set={setVendaItemModal} options={selectModalidadeST} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-2 col-md-3 col-sm-4" label="COMPÕE BASE" name="VEI_COMPOEBASEICMS" value={vendaItemModal.VEI_COMPOEBASEICMS} set={setVendaItemModal} options={selectSimNao} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-2 col-md-3 col-sm-4" label="COMPÕE BASE ST" name="VEI_COMPOEBASEICMSST" value={vendaItemModal.VEI_COMPOEBASEICMSST} set={setVendaItemModal} options={selectSimNao} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CÁLCULO" name="VEI_BASEICMS" value={vendaItemModal.VEI_BASEICMS} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CÁLCULO ST" name="VEI_BASEICMSST" value={vendaItemModal.VEI_BASEICMSST} readOnly disabled/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. ICMS" name="VEI_ALIQICMS" value={vendaItemModal.VEI_ALIQICMS} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. INTERESTADUAL" name="VEI_ALIQICMSINTER" value={vendaItemModal.VEI_ALIQICMSINTER} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. INT. PARTILHA" name="VEI_ALIQICMSINTERPART" value={vendaItemModal.VEI_ALIQICMSINTERPART} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. ICMS ST" name="VEI_ALIQICMSST" value={vendaItemModal.VEI_ALIQICMSST} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. ICMS ST" name="VEI_ALIQICMSST" value={vendaItemModal.VEI_ALIQICMSST} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="MARGEM ADIC. ST" name="VEI_ALIQICMSADICST" value={vendaItemModal.VEI_ALIQICMSADICST} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. FCP" name="VEI_ALIQFCP" value={vendaItemModal.VEI_ALIQFCP} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. FCP ST" name="VEI_ALIQFCPST" value={vendaItemModal.VEI_ALIQFCPST} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ICMS" name="VEI_VALORICMS" value={vendaItemModal.VEI_VALORICMS} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ICMS ST" name="VEI_VALORICMSST" value={vendaItemModal.VEI_VALORICMSST} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="ICMS REMETENTE" name="VEI_VALORICMSUFREMET" value={vendaItemModal.VEI_VALORICMSUFREMET} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="ICMS DESTINATÁRIO" name="VEI_VALORICMSUFDEST" value={vendaItemModal.VEI_VALORICMSUFDEST} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR FCP" name="VEI_VALORFCP" value={vendaItemModal.VEI_VALORFCP} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR FCP ST" name="VEI_VALORFCPST" value={vendaItemModal.VEI_VALORFCPST} readOnly disabled/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="IPI">
                        <div className="row g-1">
                            <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CST IPI" name="VEI_CSTIPI" value={vendaItemModal.VEI_CSTIPI} set={setVendaItemModal} onClick={() => setShowIpiLoc(true)} onBlur={(e) => localizar(IPI, e.target.value, setVendaItemModal, mapaIpi)} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CST IPI" name="IPI_DESCRICAO" value={vendaItemModal.IPI_DESCRICAO} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC." name="VEI_BASEIPI" value={vendaItemModal.VEI_BASEIPI} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR IPI" name="VEI_VALORIPI" value={vendaItemModal.VEI_VALORIPI} readOnly disabled/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. IPI" name="VEI_ALIQIPI" value={vendaItemModal.VEI_ALIQIPI} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="ENQUADRAMENTO" name="VEI_ENQUADRAMENTOIPI" value={vendaItemModal.VEI_ENQUADRAMENTOIPI} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="PIS">
                        <div className="row g-1">
                            <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CST PIS" name="VEI_CSTPIS" value={vendaItemModal.VEI_CSTPIS} set={setVendaItemModal} onClick={() => setShowPisLoc(true)} onBlur={(e) => localizar(PISCOFINS, e.target.value, setVendaItemModal, mapaPis)} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CST PIS" name="PIS_DESCRICAO" value={vendaItemModal.PIS_DESCRICAO} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC." name="VEI_BASEPIS" value={vendaItemModal.VEI_BASEPIS} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR PIS" name="VEI_VALORPIS" value={vendaItemModal.VEI_VALORPIS} readOnly disabled/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. PIS" name="VEI_ALIQPIS" value={vendaItemModal.VEI_ALIQPIS} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC. ST" name="VEI_BASEPISST" value={vendaItemModal.VEI_BASEPISST} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR PIS ST" name="VEI_VALORPISST" value={vendaItemModal.VEI_VALORPISST} readOnly disabled/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. PIS ST" name="VEI_ALIQPISST" value={vendaItemModal.VEI_ALIQPISST} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-2 col-md-3 col-sm-4" label="COMPÕE TOTAL" name="VEI_SOMAPISST" value={vendaItemModal.VEI_SOMAPISST} set={setVendaItemModal} options={selectSimNao} readOnly={disableFields} disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="COFINS">
                        <div className="row g-1">
                            <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CST COFINS" name="VEI_CSTCOFINS" value={vendaItemModal.VEI_CSTCOFINS} set={setVendaItemModal} onClick={() => setShowCofinsLoc(true)} onBlur={(e) => localizar(PISCOFINS, e.target.value, setVendaItemModal, mapaCofins)} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CST COFINS" name="PIS_DESCRICAO1" value={vendaItemModal.PIS_DESCRICAO1} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC." name="VEI_BASECOFINS" value={vendaItemModal.VEI_BASECOFINS} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR COFINS" name="VEI_VALORCOFINS" value={vendaItemModal.VEI_VALORCOFINS} readOnly disabled/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. COFINS" name="VEI_ALIQCOFINS" value={vendaItemModal.VEI_ALIQCOFINS} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC. ST" name="VEI_BASECOFINSST" value={vendaItemModal.VEI_BASECOFINSST} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR COFINS ST" name="VEI_VALORCOFINSST" value={vendaItemModal.VEI_VALORCOFINSST} readOnly disabled/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. COFINS ST" name="VEI_ALIQCOFINSST" value={vendaItemModal.VEI_ALIQCOFINSST} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-2 col-md-3 col-sm-4" label="COMPÕE TOTAL" name="VEI_SOMACOFINSST" value={vendaItemModal.VEI_SOMACOFINSST} set={setVendaItemModal} options={selectSimNao} readOnly={disableFields} disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="ISS">
                        <div className="row g-1">
                            <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="TIPO SERVIÇO" name="VEI_TIPOISS" value={vendaItemModal.VEI_TIPOISS} set={setVendaItemModal} onClick={() => setShowIssLoc(true)} onBlur={(e) => localizar(ISS, e.target.value, setVendaItemModal, mapaIss)} mask="999999" readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO TIPO SERVIÇO" name="ISS_DESCRICAO" value={vendaItemModal.ISS_DESCRICAO} readOnly disabled/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="INDICADOR ISS" name="VEI_INDICADORISS" value={vendaItemModal.VEI_INDICADORISS} set={setVendaItemModal} options={selectIndicadorIss} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="INCENTIVO FISCAL" name="VEI_INCENTIVOFSICAL" value={vendaItemModal.VEI_INCENTIVOFSICAL} set={setVendaItemModal} options={selectSimNao} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. ISS" name="VEI_ALIQISS" value={vendaItemModal.VEI_ALIQISS} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC." name="VEI_BASEISS" value={vendaItemModal.VEI_BASEISS} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ISS" name="VEI_VALORISS" value={vendaItemModal.VEI_VALORISS} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR DEDUÇÃO" name="VEI_VALORDEDUCAO" value={vendaItemModal.VEI_VALORDEDUCAO} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR RENTENÇÃO" name="VEI_VALORRETENCAO" value={vendaItemModal.VEI_VALORRETENCAO} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR OUTROS" name="VEI_VALORISSOUTROS" value={vendaItemModal.VEI_VALORISSOUTROS} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR DESC. COND." name="VEI_VALORISSDESCCOND" value={vendaItemModal.VEI_VALORISSDESCCOND} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR DESC. INCOND." name="VEI_VALORISSDESCINCOND" value={vendaItemModal.VEI_VALORISSDESCINCOND} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldLoc size="col-lg-2 col-md-3 col-sm-4" label="CIDADE FG" name="VEI_CIDADEISS" value={vendaItemModal.VEI_CIDADEISS} set={setVendaItemModal} onClick={() => setShowCidadesLoc(true)} readOnly disabled={disableFields}/>
                            <PettFieldLoc size="col-lg-2 col-md-3 col-sm-4" label="PAIS FG" name="VEI_PAISISS" value={vendaItemModal.VEI_PAISISS} set={setVendaItemModal} onClick={() => setShowPaisesLoc(true)} readOnly disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="Importação">
                        <div className="row g-1">
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC." name="VEI_BASEII" value={vendaItemModal.VEI_BASEII} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. II" name="VEI_ALIQII" value={vendaItemModal.VEI_ALIQII} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR II" name="VEI_VALORII" value={vendaItemModal.VEI_VALORII} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ADUANA" name="VEI_VALORADUANA" value={vendaItemModal.VEI_VALORADUANA} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR IOF" name="VEI_VALORIOF" value={vendaItemModal.VEI_VALORIOF} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="NUM. REGISTRO DI" name="VEI_DINUMERO" value={vendaItemModal.VEI_DINUMERO} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR AFRMM" name="VEI_VALORADRMM" value={vendaItemModal.VEI_VALORADRMM} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDate size="col-lg-2 col-md-3 col-sm-4" label="DATA DI" name="VEI_DIDATA" value={vendaItemModal.VEI_DIDATA} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="LOCAL DESEMBARAÇO" name="VEI_DIDESEMBARACOLOCAL" value={vendaItemModal.VEI_DIDESEMBARACOLOCAL} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDate size="col-lg-2 col-md-3 col-sm-4" label="DATA DESEMBARAÇO" name="VEI_DIDESEMBARACODATA" value={vendaItemModal.VEI_DIDESEMBARACODATA} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="UF DESEMBARAÇO" name="VEI_DIDESEMBARACOUF" value={vendaItemModal.VEI_DIDESEMBARACOUF} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="VIA DE TRANSPORTE" name="VEI_DITRANSPORTE" value={vendaItemModal.VEI_DITRANSPORTE} set={setVendaItemModal} options={selectViaTransporte} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="INTERMEDIO DI" name="VEI_DIINTERMEDIO" value={vendaItemModal.VEI_DIINTERMEDIO} set={setVendaItemModal} options={selectIntermedio} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMask size="col-lg-2 col-md-3 col-sm-4" label="CNPJ ADQUIRENTE" name="VEI_DICNPJ" value={vendaItemModal.VEI_DICNPJ} set={setVendaItemModal} mask="99.999.999/9999-99" readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="UF ADQUIRENTE" name="VEI_DITERCEIROUF" value={vendaItemModal.VEI_DITERCEIROUF} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="CÓD EXPORTADOR" name="VEI_DIEXPORTADORCOD" value={vendaItemModal.VEI_DIEXPORTADORCOD} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="Exportação">
                        <div className="row g-1">
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" length="15" label="EX DRAWBACK" name="VEI_EXDRAWBACK" value={vendaItemModal.VEI_EXDRAWBACK} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" length="15" label="REGISTRO EXPORTAÇÃO" name="VEI_EXREGISTRO" value={vendaItemModal.VEI_EXREGISTRO} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" length="15" label="QUANTIDADE EXPORTADA" name="VEI_EXQUANTIDADE" value={vendaItemModal.VEI_EXQUANTIDADE} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" length="80" label="CHAVE DE ACESSO" name="VEI_EXCHAVEACESSO" value={vendaItemModal.VEI_EXCHAVEACESSO} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="Informações Adicionais">
                        <div className="row g-1">
                            <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="INFORMAÇÕES ADICIONAIS" name="VEI_INFOADICIONAL" value={vendaItemModal.VEI_INFOADICIONAL} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="ICMS Retido">
                        <div className="row g-1">
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC." name="VEI_BASEICMSRET" value={vendaItemModal.VEI_BASEICMSRET} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. ST RETIDO" name="VEI_ALIQICMSRET" value={vendaItemModal.VEI_ALIQICMSRET} set={setVendaItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ST RETIDO" name="VEI_VALORICMSRET" value={vendaItemModal.VEI_VALORICMSRET} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ICMS SUBSTITUTO" name="VEI_VALORICMSSUBSTITUTO" value={vendaItemModal.VEI_VALORICMSSUBSTITUTO} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ICMS DESONERADO" name="VEI_VALORICMSDESONERADO" value={vendaItemModal.VEI_VALORICMSDESONERADO} set={setVendaItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="MOTIVO DESONERACAO" name="VEI_DESONERACAO" value={vendaItemModal.VEI_DESONERACAO} set={setVendaItemModal} options={selectDesoneracao} readOnly={disableFields} disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                </PettTab>

                <PettModal.Footer>
                    <div className="w-100 d-flex justify-content-end">
                        <PettIf condicional={venda.VED_STATUS==="A"}>
                            <PettButton caption="Salvar" icone="checkmark" click={() => salvar()}  className="me-1"/>
                            <PettButton caption="Cancelar" icone="cancel" click={hCancelar}  className="me-1"/>
                            <PettIf condicional={vendaItemModal.VEI_CODIGO!==""}>
                                <PettButton caption="Excluir Item" icone="minus" click={hExcluir}  className="ms-auto"/>
                            </PettIf>
                        </PettIf>
                        <PettIf condicional={venda.VED_STATUS!=="A"}>
                            <PettButton caption="Fechar" icone="cancel" click={hCancelar} />
                        </PettIf>
                    </div>
                </PettModal.Footer>

            </PettModal>
            <AlmoxarifadosLoc showModal={showAlmoxarifadosLoc} onCloseModal={(data) => { selecionar(data, setVendaItemModal, mapaAlmoxarifados); setShowAlmoxarifadosLoc(false); }}/>
            <BeneficiosLoc showModal={showBeneficiosLoc} onCloseModal={(data) => { selecionar(data, setVendaItemModal, mapaBeneficios); setShowBeneficiosLoc(false); }}/>
            <CidadesLoc showModal={showCidadesLoc} onCloseModal={(data) => { selecionar(data, setVendaItemModal, mapaCidades); setShowCidadesLoc(false); }}/>
            <ClassFiscalLoc showModal={showClassFiscalLoc} onCloseModal={(data) => { selecionar(data, setVendaItemModal, mapaClassFiscal); setShowClassFiscalLoc(false); }}/>
            <IcmsLoc showModal={showIcmsLoc} onCloseModal={(data) => { selecionar(data, setVendaItemModal, mapaIcms); setShowIcmsLoc(false); }}/>
            <IpiLoc showModal={showIpiLoc} onCloseModal={(data) => { selecionar(data, setVendaItemModal, mapaIpi); setShowIpiLoc(false); }}/>
            <IssLoc showModal={showIssLoc} onCloseModal={(data) => { selecionar(data, setVendaItemModal, mapaIss); setShowIssLoc(false); }}/>
            <NaturezasLoc showModal={showNaturezasLoc} onCloseModal={(data) => { selecionar(data, setVendaItemModal, mapaNaturezas); setShowNaturezasLoc(false); }}/>
            <PaisesLoc showModal={showPaisesLoc} onCloseModal={(data) => { selecionar(data, setVendaItemModal, mapaPaises); setShowPaisesLoc(false); }}/>
            <PisCofinsLoc showModal={showPisLoc} onCloseModal={(data) => { selecionar(data, setVendaItemModal, mapaPis); setShowPisLoc(false); }}/>
            <PisCofinsLoc showModal={showCofinsLoc} onCloseModal={(data) => { selecionar(data, setVendaItemModal, mapaCofins); setShowCofinsLoc(false); }}/>
            <ProdutosLoc showModal={showProdutosLoc} onCloseModal={(data) => { selecionar(data, setVendaItemModal, mapaProdutos); setShowProdutosLoc(false); }}/>
        </PettIf>
    </>
}

export default VendasItens;
