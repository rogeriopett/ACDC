import { useContext, useEffect, useState } from 'react';

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
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';
import { PettTab } from 'pett-componentes';
import { PettTabPanel } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import Api from '../../Api';
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
import { tratarCatch } from '../../Funcoes';
import { useLocalizar, ALMOXARIFADOS, CIDADES, CLASSFISCAL, ICMS, IPI, ISS, NATUREZAS, PAISES, PISCOFINS, PRODUTOS  } from '../../Hooks/useLocalizar';

const mapaAlmoxarifados = { NFI_ALMOXARIFADO: 'ALM_CODIGO', ALM_DESCRICAO: 'ALM_DESCRICAO' };
const mapaBeneficios    = { NFI_BENEFICIO: 'BEN_CODIGO' };
const mapaCidades       = { NFI_CIDADEISS: 'CID_CODIGO' };
const mapaClassFiscal   = { NFI_CLASSFISCAL: 'CLF_CODIGO', CLF_DESCRICAO: 'CLF_DESCRICAO', NFI_EXCECAO: 'CLF_EXCECAO' };
const mapaIcms          = { NFI_CSTICMS: 'ICM_CODIGO', ICM_DESCRICAO: 'ICM_DESCRICAO' };
const mapaIpi           = { NFI_CSTIPI: 'ICM_CODIGO', IPI_DESCRICAO: 'IPI_DESCRICAO' };
const mapaIss           = { NFI_TIPOISS: 'ISS_CODIGO', ISS_DESCRICAO: 'ISS_DESCRICAO' };
const mapaNaturezas     = { NFI_CFOP: 'NAT_CODIGO', NAT_DESCRICAO: 'NAT_DESCRICAO' };
const mapaPaises        = { NFI_PAISISS: 'PAI_CODIGO' };
const mapaPis           = { NFI_CSTPIS: 'PIS_CODIGO', PIS_DESCRICAO: 'PIS_DESCRICAO' };
const mapaCofins        = { NFI_CSTCOFINS: 'PIS_CODIGO', PIS_DESCRICAO1: 'PIS_DESCRICAO' };
const mapaProdutos      = { 
    NFI_ALIQCOFINS: 'PRO_ALIQCOFINS',
    NFI_ALIQCOFINSST: 'PRO_ALIQCOFINSST',
    NFI_ALIQFCP: 'PRO_ALIQFCP',
    NFI_ALIQFCPST: 'PRO_ALIQFCPST',
    NFI_ALIQICMS: 'PRO_ALIQICMS',
    NFI_ALIQICMSADICST: 'PRO_ALIQICMSADICST',
    NFI_ALIQICMSRED: 'PRO_ALIQICMSRED',
    NFI_ALIQICMSST: 'PRO_ALIQICMSST',
    NFI_ALIQICMSINTER: 'PRO_ALIQICMSINTER',
    NFI_ALIQICMSINTERPART: 'PRO_ALIQICMSINTERPART',
    NFI_ALIQIPI: 'PRO_ALIQIPI',
    NFI_ALIQISS: 'PRO_ALIQISS',
    NFI_ALIQPIS: 'PRO_ALIQPIS',
    NFI_ALIQPISST: 'PRO_ALIQPISST',
    NFI_ALMOXARIFADO: 'PRO_ALMOXARIFADO',
    NFI_CEST: 'PRO_CEST',
    NFI_CLASSFISCAL: 'PRO_CLASSFISCAL',
    NFI_CODIGOBARRAS: 'PRO_CODIGOBARRAS',
    NFI_CODIGOFAB: 'PRO_CODIGOFAB',
    NFI_COMPOEBASEICMS: 'PRO_COMPOEBASEICMS',
    NFI_COMPOEBASEICMSST: 'PRO_COMPOEBASEICMSST',
    NFI_CONVERSAO: 'PRO_CONVERSAO',
    NFI_CSTCOFINS: 'PRO_CSTCOFINS',
    NFI_CSTICMS: 'PRO_CSTICMS',
    NFI_CSTIPI: 'PRO_CSTIPI',
    NFI_CSTPIS: 'PRO_CSTPIS',
    NFI_DESCMAX: 'PRO_DESCMAX',
    NFI_DESCRICAO: 'PRO_NOME',
    NFI_ENQUADRAMENTOIPI: 'PRO_ENQUADRAMENTOIPI',
    NFI_EXCECAO: 'PRO_EXCECAO',
    NFI_FCI: 'PRO_FCI',
    NFI_INCENTIVOISS: 'PRO_INCENTIVOISS',
    NFI_INDICADORISS: 'PRO_INDICADORISS',
    NFI_INFOADICIONAL: 'PRO_OBSERVACOES',
    NFI_LOCALIZACAO: 'PRO_LOCALIZACAO',
    NFI_MODICMS: 'PRO_MODICMS',
    NFI_MODICMSST: 'PRO_MODICMSST',
    NFI_ORIGEM: 'PRO_ORIGEM',
    NFI_PESO: 'PRO_PESO',
    NFI_PRECOCUSTO: 'PRO_PRECOCUSTO',
    NFI_PRODUTO: 'PRO_CODIGO,',
    NFI_PRODUTOREAL: 'PRO_PRODUTOREAL',
    NFI_TIPO: 'PRO_TIPO',
    NFI_TIPOISS: 'PRO_TIPOISS',
    NFI_UNIDADE: 'PRO_UNIDADE',
    NFI_VALORUNIT: 'PRO_PRECOVENDA',
    CLF_DESCRICAO: 'CLF_DESCRICAO',
    ICM_DESCRICAO: 'ICM_DESCRICAO',
    IPI_DESCRICAO: 'IPI_DESCRICAO',
    ISS_DESCRICAO: 'ISS_DESCRICAO',
    PIS_DESCRICAO: 'PIS_DESCRICAO',
    PIS_DESCRICAO1: 'PIS_DESCRICAO1',
    PRO_COMPOSTO: 'PRO_COMPOSTO',
    PRO_ESTOQUEATUAL: 'PRO_ESTOQUEATUAL',
 };

function NfesItens(props) {
    const { nfe, item, showModal, operacao, onCloseModal } = props;
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const [ nfeItemModal, setNfeItemModal ] = useState({
        NFI_EXCECAO: '',
    });
    const [ disableFields, setDisableFields ] = useState(true);
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

    function registroNulo() {
        setNfeItemModal({
            NFI_ALIQCOFINS: '0',
            NFI_ALIQCOFINSST: '0',
            NFI_ALIQFCP: '0',
            NFI_ALIQFCPST: '0',
            NFI_ALIQICMS: '0',
            NFI_ALIQICMSADICST: '0',
            NFI_ALIQICMSINTER: '0',
            NFI_ALIQICMSINTERPART: '0',
            NFI_ALIQICMSRED: '0',
            NFI_ALIQICMSST: '0',
            NFI_ALIQICMSSTRET: '0',
            NFI_ALIQII: '0',
            NFI_ALIQIPI: '0',
            NFI_ALIQISS: '0',
            NFI_ALIQPIS: '0',
            NFI_ALIQPISST: '0',
            NFI_ALMOXARIFADO: '1',
            NFI_BASECOFINS: '0',
            NFI_BASECOFINSST: '0',
            NFI_BASEICMS: '0',
            NFI_BASEICMSRED: '0',
            NFI_BASEICMSST: '0',
            NFI_BASEICMSSTRET: '0',
            NFI_BASEII: '0',
            NFI_BASEIPI: '0',
            NFI_BASEISS: '0',
            NFI_BASEPIS: '0',
            NFI_BASEPISST: '0',
            NFI_BENEFICIO: '',
            NFI_CEST: '',
            NFI_CFOP: nfe.NFE_CFOP,
            NFI_CIDADEISS: '',
            NFI_CLASSFISCAL: '',
            NFI_CODIGO: '',
            NFI_CODIGOBARRAS: '',
            NFI_CODIGOFAB: '',
            NFI_COMISSAO: '',
            NFI_COMPLEMENTO: '',
            NFI_COMPOEBASEICMS: 'N',
            NFI_COMPOEBASEICMSST: 'N',
            NFI_COMPOETOTAL: 'S',
            NFI_CONVERSAO: '',
            NFI_CSTCOFINS: '',
            NFI_CSTICMS: '',
            NFI_CSTIPI: '',
            NFI_CSTPIS: '',
            NFI_DESCMAX: '',
            NFI_DESCPORC: '0',
            NFI_DESCRICAO: '',
            NFI_DESCVALOR: '0',
            NFI_DESONERACAO: '',
            NFI_DICNPJ: '',
            NFI_DIDATA: '',
            NFI_DIDESEMBARACODATA: '',
            NFI_DIDESEMBARACOLOCAL: '',
            NFI_DIDESEMBARACOUF: '',
            NFI_DIEXPORTADORCOD: '',
            NFI_DIINTERMEDIO: '',
            NFI_DINUMERO: '',
            NFI_DITERCEIROUF: '',
            NFI_DITRANSPORTE: '',
            NFI_DIVALORAFRMM: '0',
            NFI_ENQUADRAMENTOIPI: '',
            NFI_EXCECAO: '0',
            NFI_EXCHAVEACESSO: '',
            NFI_EXDRAWBACK: '',
            NFI_EXQUANTIDADE: '',
            NFI_EXREGISTRO: '',
            NFI_FCI: '',
            NFI_INCENTIVOISS: 'N',
            NFI_INDICADORISS: '',
            NFI_INFOADICIONAL: '',
            NFI_LOCALIZACAO: '',
            NFI_LOTE: '',
            NFI_LUCROPORC: '0',
            NFI_LUCROVALOR: '0',
            NFI_MODICMS: '',
            NFI_MODICMSST: '',
            NFI_ORIGEM: '',
            NFI_PAISISS: '',
            NFI_PEDIDOCLIENTE: '',
            NFI_PEDIDOCLIENTEITEM: '',
            NFI_PESO: '0',
            NFI_PESOTOTAL: '0',
            NFI_PRECOCUSTO: '0',
            NFI_PRECOCUSTOTOTAL: '0',
            NFI_PROCESSOISS: '',
            NFI_PRODUTO: '',
            NFI_PRODUTOREAL: '',
            NFI_QUANTIDADE: '1',
            NFI_QUANTIDADETROCA: '0',
            NFI_SEQUENCIA: '',
            NFI_SERVICOISS: '',
            NFI_SOMACOFINSST: 'N',
            NFI_SOMAPISST: 'N',
            NFI_TIPO: '',
            NFI_TIPOISS: '',
            NFI_UNIDADE: '',
            NFI_VALORACESSORIAS: '0',
            NFI_VALORADUANA: '0',
            NFI_VALORCOFINS: '0',
            NFI_VALORCOFINSST: '0',
            NFI_VALORCOMISSAO: '0',
            NFI_VALORFCP: '0',
            NFI_VALORFCPST: '0',
            NFI_VALORFRETE: '0',
            NFI_VALORICMS: '0',
            NFI_VALORICMSCREDSN: '0',
            NFI_VALORICMSDESONERADO: '0',
            NFI_VALORICMSST: '0',
            NFI_VALORICMSSTRET: '0',
            NFI_VALORICMSSUBSTITUTO: '0',
            NFI_VALORICMSUFDEST: '0',
            NFI_VALORICMSUFREMET: '0',
            NFI_VALORII: '0',
            NFI_VALORIOF: '0',
            NFI_VALORIPI: '0',
            NFI_VALORISS: '0',
            NFI_VALORISSDEDUCAO: '0',
            NFI_VALORISSDESCCOND: '0',
            NFI_VALORISSDESCINCOND: '0',
            NFI_VALORISSOUTROS: '0',
            NFI_VALORISSRETENCAO: '0',
            NFI_VALORPIS: '0',
            NFI_VALORPISST: '0',
            NFI_VALORSEGURO: '0',
            NFI_VALORTOTAL: '0',
            NFI_VALORTOTALBRUTO: '0',
            NFI_VALORTRIBUTOS: '0',
            NFI_VALORTRIBUTOSEST: '0',
            NFI_VALORTRIBUTOSFED: '0',
            NFI_VALORTRIBUTOSIMP: '0',
            NFI_VALORTRIBUTOSMUN: '0',
            NFI_VALORUNIT: '0',
            NFI_VENDA: nfe.NFE_CODIGO            
        })
    }

    useEffect(() => {
        if (item.NFI_CODIGO!=="") {
            getRegistro(item.NFI_CODIGO);
        } else {
            registroNulo();
        }
        // setNfeItemModal(() => (item.NFI_CODIGO));
        //eslint-disable-next-line
    },[item]);

    useEffect(() => {
        if (nfe.NFE_STATUS!=="A") {
            setDisableFields(true);
        } else {
            setDisableFields(false);
            registroNulo();
        }
        // setNfeItemModal(() => (item.NFI_CODIGO));
        //eslint-disable-next-line
    },[nfe]);

    async function getRegistro(codigo) {
        var formData = new FormData();
        formData.set('op','visualizarItem');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('NFE_CODIGO',nfe.NFE_CODIGO || '');             
        formData.set('NFI_CODIGO',codigo || '');
        try {
            const response = await Api.post('firenet/nfes',formData);
            if (response.data.erro==='N') {
                setNfeItemModal(response.data.msg);
            } else {
                setNfeItemModal({});
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('VendasItens getRegistro',error,logout);
        }
    }

    async function salvar() {
        const formData = new FormData();
        formData.set('op',operacao);
        formData.set('empresa',empresaSelecionada.value);
        formData.set('NFE_CODIGO', nfeItemModal.NFI_VENDA || '');
        formData.set('NFI_ALIQCOFINS', nfeItemModal.NFI_ALIQCOFINS || '');
        formData.set('NFI_ALIQCOFINSST', nfeItemModal.NFI_ALIQCOFINSST || '');
        formData.set('NFI_ALIQFCP', nfeItemModal.NFI_ALIQFCP || '');
        formData.set('NFI_ALIQFCPST', nfeItemModal.NFI_ALIQFCPST || '');
        formData.set('NFI_ALIQICMS', nfeItemModal.NFI_ALIQICMS || '');
        formData.set('NFI_ALIQICMSADICST', nfeItemModal.NFI_ALIQICMSADICST || '');
        formData.set('NFI_ALIQICMSINTER', nfeItemModal.NFI_ALIQICMSINTER || '');
        formData.set('NFI_ALIQICMSINTERPART', nfeItemModal.NFI_ALIQICMSINTERPART || '');
        formData.set('NFI_ALIQICMSRED', nfeItemModal.NFI_ALIQICMSRED || '');
        formData.set('NFI_ALIQICMSST', nfeItemModal.NFI_ALIQICMSST || '');
        formData.set('NFI_ALIQICMSSTRET', nfeItemModal.NFI_ALIQICMSSTRET || '');
        formData.set('NFI_ALIQII', nfeItemModal.NFI_ALIQII || '');
        formData.set('NFI_ALIQIPI', nfeItemModal.NFI_ALIQIPI || '');
        formData.set('NFI_ALIQISS', nfeItemModal.NFI_ALIQISS || '');
        formData.set('NFI_ALIQPIS', nfeItemModal.NFI_ALIQPIS || '');
        formData.set('NFI_ALIQPISST', nfeItemModal.NFI_ALIQPISST || '');
        formData.set('NFI_ALMOXARIFADO', nfeItemModal.NFI_ALMOXARIFADO || '');
        formData.set('NFI_BASECOFINS', nfeItemModal.NFI_BASECOFINS || '');
        formData.set('NFI_BASECOFINSST', nfeItemModal.NFI_BASECOFINSST || '');
        formData.set('NFI_BASEICMS', nfeItemModal.NFI_BASEICMS || '');
        formData.set('NFI_BASEICMSRED', nfeItemModal.NFI_BASEICMSRED || '');
        formData.set('NFI_BASEICMSST', nfeItemModal.NFI_BASEICMSST || '');
        formData.set('NFI_BASEICMSSTRET', nfeItemModal.NFI_BASEICMSSTRET || '');
        formData.set('NFI_BASEII', nfeItemModal.NFI_BASEII || '');
        formData.set('NFI_BASEIPI', nfeItemModal.NFI_BASEIPI || '');
        formData.set('NFI_BASEISS', nfeItemModal.NFI_BASEISS || '');
        formData.set('NFI_BASEPIS', nfeItemModal.NFI_BASEPIS || '');
        formData.set('NFI_BASEPISST', nfeItemModal.NFI_BASEPISST || '');
        formData.set('NFI_BENEFICIO', nfeItemModal.NFI_BENEFICIO || '');
        formData.set('NFI_CEST', nfeItemModal.NFI_CEST || '');
        formData.set('NFI_CFOP', nfeItemModal.NFI_CFOP || '');
        formData.set('NFI_CIDADEISS', nfeItemModal.NFI_CIDADEISS || '');
        formData.set('NFI_CLASSFISCAL', nfeItemModal.NFI_CLASSFISCAL || '');
        formData.set('NFI_CODIGO',nfeItemModal.NFI_CODIGO || '');
        formData.set('NFI_CODIGOBARRAS', nfeItemModal.NFI_CODIGOBARRAS || '');
        formData.set('NFI_CODIGOFAB', nfeItemModal.NFI_CODIGOFAB || '');
        formData.set('NFI_COMISSAO', nfeItemModal.NFI_COMISSAO || '');
        formData.set('NFI_COMPLEMENTO', nfeItemModal.NFI_COMPLEMENTO || '');
        formData.set('NFI_COMPOEBASEICMS', nfeItemModal.NFI_COMPOEBASEICMS || '');
        formData.set('NFI_COMPOEBASEICMSST', nfeItemModal.NFI_COMPOEBASEICMSST || '');
        formData.set('NFI_COMPOETOTAL', nfeItemModal.NFI_COMPOETOTAL || '');
        formData.set('NFI_CONVERSAO', nfeItemModal.NFI_CONVERSAO || '');
        formData.set('NFI_CSTCOFINS', nfeItemModal.NFI_CSTCOFINS || '');
        formData.set('NFI_CSTICMS', nfeItemModal.NFI_CSTICMS || '');
        formData.set('NFI_CSTIPI', nfeItemModal.NFI_CSTIPI || '');
        formData.set('NFI_CSTPIS', nfeItemModal.NFI_CSTPIS || '');
        formData.set('NFI_DESCMAX', nfeItemModal.NFI_DESCMAX || '');
        formData.set('NFI_DESCPORC', nfeItemModal.NFI_DESCPORC || '');
        formData.set('NFI_DESCRICAO', nfeItemModal.NFI_DESCRICAO || '');
        formData.set('NFI_DESCVALOR', nfeItemModal.NFI_DESCVALOR || '');
        formData.set('NFI_DESONERACAO', nfeItemModal.NFI_DESONERACAO || '');
        formData.set('NFI_DICNPJ', nfeItemModal.NFI_DICNPJ || '');
        formData.set('NFI_DIDATA', nfeItemModal.NFI_DIDATA || '');
        formData.set('NFI_DIDESEMBARACODATA', nfeItemModal.NFI_DIDESEMBARACODATA || '');
        formData.set('NFI_DIDESEMBARACOLOCAL', nfeItemModal.NFI_DIDESEMBARACOLOCAL || '');
        formData.set('NFI_DIDESEMBARACOUF', nfeItemModal.NFI_DIDESEMBARACOUF || '');
        formData.set('NFI_DIEXPORTADORCOD', nfeItemModal.NFI_DIEXPORTADORCOD || '');
        formData.set('NFI_DIINTERMEDIO', nfeItemModal.NFI_DIINTERMEDIO || '');
        formData.set('NFI_DINUMERO', nfeItemModal.NFI_DINUMERO || '');
        formData.set('NFI_DITERCEIROUF', nfeItemModal.NFI_DITERCEIROUF || '');
        formData.set('NFI_DITRANSPORTE', nfeItemModal.NFI_DITRANSPORTE || '');
        formData.set('NFI_DIVALORAFRMM', nfeItemModal.NFI_DIVALORAFRMM || '');
        formData.set('NFI_ENQUADRAMENTOIPI', nfeItemModal.NFI_ENQUADRAMENTOIPI || '');
        formData.set('NFI_EXCECAO', nfeItemModal.NFI_EXCECAO || '');
        formData.set('NFI_EXCHAVEACESSO', nfeItemModal.NFI_EXCHAVEACESSO || '');
        formData.set('NFI_EXDRAWBACK', nfeItemModal.NFI_EXDRAWBACK || '');
        formData.set('NFI_EXQUANTIDADE', nfeItemModal.NFI_EXQUANTIDADE || '');
        formData.set('NFI_EXREGISTRO', nfeItemModal.NFI_EXREGISTRO || '');
        formData.set('NFI_FCI', nfeItemModal.NFI_FCI || '');
        formData.set('NFI_INCENTIVOISS', nfeItemModal.NFI_INCENTIVOISS || '');
        formData.set('NFI_INDICADORISS', nfeItemModal.NFI_INDICADORISS || '');
        formData.set('NFI_INFOADICIONAL', nfeItemModal.NFI_INFOADICIONAL || '');
        formData.set('NFI_LOCALIZACAO', nfeItemModal.NFI_LOCALIZACAO || '');
        formData.set('NFI_LOTE', nfeItemModal.NFI_LOTE || '');
        formData.set('NFI_LUCROPORC', nfeItemModal.NFI_LUCROPORC || '');
        formData.set('NFI_LUCROVALOR', nfeItemModal.NFI_LUCROVALOR || '');
        formData.set('NFI_MODICMS', nfeItemModal.NFI_MODICMS || '');
        formData.set('NFI_MODICMSST', nfeItemModal.NFI_MODICMSST || '');
        formData.set('NFI_ORIGEM', nfeItemModal.NFI_ORIGEM || '');
        formData.set('NFI_PAISISS', nfeItemModal.NFI_PAISISS || '');
        formData.set('NFI_PEDIDOCLIENTE', nfeItemModal.NFI_PEDIDOCLIENTE || '');
        formData.set('NFI_PEDIDOCLIENTEITEM', nfeItemModal.NFI_PEDIDOCLIENTEITEM || '');
        formData.set('NFI_PESO', nfeItemModal.NFI_PESO || '');
        formData.set('NFI_PESOTOTAL', nfeItemModal.NFI_PESOTOTAL || '');
        formData.set('NFI_PRECOCUSTO', nfeItemModal.NFI_PRECOCUSTO || '');
        formData.set('NFI_PRECOCUSTOTOTAL', nfeItemModal.NFI_PRECOCUSTOTOTAL || '');
        formData.set('NFI_PROCESSOISS', nfeItemModal.NFI_PROCESSOISS || '');
        formData.set('NFI_PRODUTO', nfeItemModal.NFI_PRODUTO || '');
        formData.set('NFI_PRODUTOREAL', nfeItemModal.NFI_PRODUTOREAL || '');
        formData.set('NFI_QUANTIDADE', nfeItemModal.NFI_QUANTIDADE || '');
        formData.set('NFI_QUANTIDADETROCA', nfeItemModal.NFI_QUANTIDADETROCA || '');
        //formData.set('NFI_SEQUENCIA', nfeItemModal.NFI_SEQUENCIA || '');
        formData.set('NFI_SERVICOISS', nfeItemModal.NFI_SERVICOISS || '');
        formData.set('NFI_SOMACOFINSST', nfeItemModal.NFI_SOMACOFINSST || '');
        formData.set('NFI_SOMAPISST', nfeItemModal.NFI_SOMAPISST || '');
        formData.set('NFI_TIPO', nfeItemModal.NFI_TIPO || '');
        formData.set('NFI_TIPOISS', nfeItemModal.NFI_TIPOISS || '');
        formData.set('NFI_UNIDADE', nfeItemModal.NFI_UNIDADE || '');
        formData.set('NFI_VALORACESSORIAS', nfeItemModal.NFI_VALORACESSORIAS || '');
        formData.set('NFI_VALORADUANA', nfeItemModal.NFI_VALORADUANA || '');
        formData.set('NFI_VALORCOFINS', nfeItemModal.NFI_VALORCOFINS || '');
        formData.set('NFI_VALORCOFINSST', nfeItemModal.NFI_VALORCOFINSST || '');
        formData.set('NFI_VALORCOMISSAO', nfeItemModal.NFI_VALORCOMISSAO || '');
        formData.set('NFI_VALORFCP', nfeItemModal.NFI_VALORFCP || '');
        formData.set('NFI_VALORFCPST', nfeItemModal.NFI_VALORFCPST || '');
        formData.set('NFI_VALORFRETE', nfeItemModal.NFI_VALORFRETE || '');
        formData.set('NFI_VALORICMS', nfeItemModal.NFI_VALORICMS || '');
        formData.set('NFI_VALORICMSCREDSN', nfeItemModal.NFI_VALORICMSCREDSN || '');
        formData.set('NFI_VALORICMSDESONERADO', nfeItemModal.NFI_VALORICMSDESONERADO || '');
        formData.set('NFI_VALORICMSST', nfeItemModal.NFI_VALORICMSST || '');
        formData.set('NFI_VALORICMSSTRET', nfeItemModal.NFI_VALORICMSSTRET || '');
        formData.set('NFI_VALORICMSSUBSTITUTO', nfeItemModal.NFI_VALORICMSSUBSTITUTO || '');
        formData.set('NFI_VALORICMSUFDEST', nfeItemModal.NFI_VALORICMSUFDEST || '');
        formData.set('NFI_VALORICMSUFREMET', nfeItemModal.NFI_VALORICMSUFREMET || '');
        formData.set('NFI_VALORII', nfeItemModal.NFI_VALORII || '');
        formData.set('NFI_VALORIOF', nfeItemModal.NFI_VALORIOF || '');
        formData.set('NFI_VALORIPI', nfeItemModal.NFI_VALORIPI || '');
        formData.set('NFI_VALORISS', nfeItemModal.NFI_VALORISS || '');
        formData.set('NFI_VALORISSDEDUCAO', nfeItemModal.NFI_VALORISSDEDUCAO || '');
        formData.set('NFI_VALORISSDESCCOND', nfeItemModal.NFI_VALORISSDESCCOND || '');
        formData.set('NFI_VALORISSDESCINCOND', nfeItemModal.NFI_VALORISSDESCINCOND || '');
        formData.set('NFI_VALORISSOUTROS', nfeItemModal.NFI_VALORISSOUTROS || '');
        formData.set('NFI_VALORISSRETENCAO', nfeItemModal.NFI_VALORISSRETENCAO || '');
        formData.set('NFI_VALORPIS', nfeItemModal.NFI_VALORPIS || '');
        formData.set('NFI_VALORPISST', nfeItemModal.NFI_VALORPISST || '');
        formData.set('NFI_VALORSEGURO', nfeItemModal.NFI_VALORSEGURO || '');
        formData.set('NFI_VALORTOTAL', nfeItemModal.NFI_VALORTOTAL || '');
        formData.set('NFI_VALORTOTALBRUTO', nfeItemModal.NFI_VALORTOTALBRUTO || '');
        formData.set('NFI_VALORTRIBUTOS', nfeItemModal.NFI_VALORTRIBUTOS || '');
        formData.set('NFI_VALORTRIBUTOSEST', nfeItemModal.NFI_VALORTRIBUTOSEST || '');
        formData.set('NFI_VALORTRIBUTOSFED', nfeItemModal.NFI_VALORTRIBUTOSFED || '');
        formData.set('NFI_VALORTRIBUTOSIMP', nfeItemModal.NFI_VALORTRIBUTOSIMP || '');
        formData.set('NFI_VALORTRIBUTOSMUN', nfeItemModal.NFI_VALORTRIBUTOSMUN || '');
        formData.set('NFI_VALORUNIT', nfeItemModal.NFI_VALORUNIT || '');
        formData.set('NFI_VENDA', nfeItemModal.NFI_VENDA || '');
        try {
            const response = await Api.post('firenet/nfes',formData);
            if (response.data.erro==='N') {
                onCloseModal(response.data.msg);
                // registroNulo();
            } 
            if (response.data.erro==='S') {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('VendasItens salvar',error,logout);
        }
    }

    function cancelar(e) {
        registroNulo({});
        onCloseModal({});
    }

    async function excluir(item) {
        if (item.codigo!=="") {
            const confirmou = await PettMensagem.confirmar('Confirma Exclusão?','Tem certeza que deseja excluir '+item.nome+'?');
            if (confirmou) {
                const formData = new FormData();
                formData.set('op','excluirItem');
                formData.set('empresa',empresaSelecionada.value);
                formData.set('NFE_CODIGO',nfe.NFE_CODIGO || '');
                formData.set('NFI_CODIGO',item.codigo || '');
                try {
                    const response = await Api.post('firenet/nfes',formData);
                    if (response.data.erro==='N') {
                        onCloseModal(response.data.msg);
                    } else {
                        response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
                    }
                } catch (error) {
                    tratarCatch('VendasItens excluir',error,logout);
                }
            }
        } else {
            PettMensagem.info('Ooops!','O item ainda não foi salvo');
        }
    }

    return <>
        <PettIf condicional={nfeItemModal} >
            <PettModal show={showModal} fullscreen={false} backdrop="static" size="xl" title="Item do Pedido...">
                <div className="row g-1">
                    <PettFieldText size="col-lg-3 col-md-3 col-sm-3" label="CÓDIGO" name="NFI_CODIGO" value={nfeItemModal.NFI_CODIGO} readOnly disabled/>
                    <PettFieldText size="col-lg-3 col-md-3 col-sm-3" label="VENDA" name="NFI_VENDA" value={nfeItemModal.NFI_VENDA} readOnly disabled/>
                    <PettFieldText size="col-lg-3 col-md-3 col-sm-3" label="PEDIDO CLIENTE" name="NFI_PEDIDOCLIENTE" value={nfeItemModal.NFI_PEDIDOCLIENTE} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-3 col-md-3 col-sm-3" label="ITEM PEDIDO CLIENTE" name="NFI_PEDIDOCLIENTEITEM" value={nfeItemModal.NFI_PEDIDOCLIENTEITEM} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="PRODUTO" name="NFI_PRODUTO" value={nfeItemModal.NFI_PRODUTO} set={setNfeItemModal} onClick={() => setShowProdutosLoc(true)} onBlur={(e) => localizar(PRODUTOS, e.target.value, setNfeItemModal, mapaProdutos)} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldLoc size="col-lg-4 col-md-4 col-sm-12" label="NOME PRODUTO" name="NFI_DESCRICAO" value={nfeItemModal.NFI_DESCRICAO} readOnly disabled/>
                    <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="COMPLEMENTO" name="NFI_COMPLEMENTO" value={nfeItemModal.NFI_COMPLEMENTO} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="CÓDIGO FAB." name="NFI_CODIGOFAB" value={nfeItemModal.NFI_CODIGOFAB} readOnly disabled/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="CÓDIGO BARRAS" name="NFI_CODIGOBARRAS" value={nfeItemModal.NFI_CODIGOBARRAS} readOnly disabled/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="COMPOSTO" name="PRO_COMPOSTO" value={nfeItemModal.PRO_COMPOSTO} readOnly disabled/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="UNIDADE" name="NFI_UNIDADE" value={nfeItemModal.NFI_UNIDADE} readOnly disabled/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="ESTOQUE ATUAL" name="PRO_ESTOQUEATUAL" value={nfeItemModal.PRO_ESTOQUEATUAL} readOnly disabled/>
                    <PettFieldLoc size="col-lg-2 col-md-3 col-sm-4" label="LOTE" name="NFI_LOTE" value={nfeItemModal.NFI_LOTE} set={setNfeItemModal} onClick={() => setShowCidadesLoc(true)} readOnly disabled={disableFields}/>
                    <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CFOP" name="NFI_CFOP" value={nfeItemModal.NFI_CFOP} set={setNfeItemModal} onClick={() => setShowNaturezasLoc(true)} onBlur={(e) => naturezasLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CFOP" name="NAT_DESCRICAO" value={nfeItemModal.NAT_DESCRICAO} readOnly disabled/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="TIPO PRODUTO" name="NFI_TIPO" value={nfeItemModal.NFI_TIPO} readOnly disabled/>
                    <PettFieldFloat size="col-lg-2 col-md-2 col-sm-4" label="PESO" name="NFI_PESO" value={nfeItemModal.NFI_PESO} set={setNfeItemModal} minDigits={3} maxDigits={3} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="CÓD. CEST" name="NFI_CEST" value={nfeItemModal.NFI_CEST} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldLoc size="col-lg-2 col-md-3 col-sm-4" label="BENEFÍCIO" name="NFI_BENEFICIO" value={nfeItemModal.NFI_BENEFICIO} set={setNfeItemModal} onClick={() => setShowBeneficiosLoc(true)} readOnly disabled={disableFields}/>
                    <PettFieldFloat size="col-lg-2 col-md-2 col-sm-4" label="QUANTIDADE" name="NFI_QUANTIDADE" value={nfeItemModal.NFI_QUANTIDADE} set={setNfeItemModal} minDigits={3} maxDigits={3} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR UNITÁRIO" name="NFI_VALORUNIT" value={nfeItemModal.NFI_VALORUNIT} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR FRETE" name="NFI_VALORFRETE" value={nfeItemModal.NFI_VALORFRETE} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR SEGURO" name="NFI_VALORSEGURO" value={nfeItemModal.NFI_VALORSEGURO} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ACESSÓRIAS" name="NFI_VALORACESSORIAS" value={nfeItemModal.NFI_VALORACESSORIAS} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="TOTAL BRUTO" name="NFI_VALORTOTALBRUTO" value={nfeItemModal.NFI_VALORTOTALBRUTO} readOnly disabled/>
                    <PettFieldFloat size="col-lg-2 col-md-2 col-sm-4" label="% DESCONTO" name="NFI_DESCPORC" value={nfeItemModal.NFI_DESCPORC} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR DESCONTO" name="NFI_DESCVALOR" value={nfeItemModal.NFI_DESCVALOR} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR COMISSÃO" name="NFI_VALORCOMISSAO" value={nfeItemModal.NFI_VALORCOMISSAO} readOnly disabled/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR TRIBUTOS" name="NFI_VALORTRIBUTOS" value={nfeItemModal.NFI_VALORTRIBUTOS} readOnly disabled/>
                    <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR TOTAL" name="NFI_VALORTOTAL" value={nfeItemModal.NFI_VALORTOTAL} readOnly disabled/>
                    <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CLASS. FISCAL" name="NFI_CLASSFISCAL" value={nfeItemModal.NFI_CLASSFISCAL} set={setNfeItemModal} onClick={() => setShowClassFiscalLoc(true)} onBlur={(e) => localizar(CLASSFISCAL, e.target.value, setNfeItemModal, mapaClassFiscal)} readOnly={disableFields} disabled={disableFields} mask="99999999"/>
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CLASS. FISCAL" name="CLF_DESCRICAO" value={nfeItemModal.CLF_DESCRICAO} set={setNfeItemModal} readOnly disabled/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="EXCEÇÃO" name="NFI_EXCECAO" value={String(nfeItemModal.NFI_EXCECAO)} readOnly disabled/>
                    <PettFieldLoc size="col-lg-2 col-md-3 col-sm-4" label="ALMOXARIFADO" name="NFI_ALMOXARIFADO" value={nfeItemModal.NFI_ALMOXARIFADO} set={setNfeItemModal} onClick={() => setShowAlmoxarifadosLoc(true)} onBlur={(e) => localizar(ALMOXARIFADOS, e.target.value, setNfeItemModal, mapaAlmoxarifados)} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-4" label="NOME ALMOXARIFADO" name="ALM_DESCRICAO" value={nfeItemModal.ALM_DESCRICAO} readOnly disabled/>
                </div>

                <PettTab className="mt-3">
                    <PettTabPanel header="ICMS">
                        <div className="row g-1">
                            <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CST ICMS" name="NFI_CSTICMS" value={nfeItemModal.NFI_CSTICMS} set={setNfeItemModal} onClick={() => setShowIcmsLoc(true)} onBlur={(e) => localizar(ICMS, e.target.value, setNfeItemModal, mapaIcms)} readOnly={disableFields} disabled={disableFields}/>                           
                            <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CST ICMS" name="ICM_DESCRICAO" value={nfeItemModal.ICM_DESCRICAO} readOnly disabled/>                           
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="ORIGEM" name="NFI_ORIGEM" value={nfeItemModal.NFI_ORIGEM} set={setNfeItemModal} options={selectOrigem} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="MODALIDADE" name="NFI_MODICMS" value={nfeItemModal.NFI_MODICMS} set={setNfeItemModal} options={selectModalidade} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="MODALIDADE ST" name="NFI_MODICMSST" value={nfeItemModal.NFI_MODICMSST} set={setNfeItemModal} options={selectModalidadeST} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-2 col-md-3 col-sm-4" label="COMPÕE BASE" name="NFI_COMPOEBASEICMS" value={nfeItemModal.NFI_COMPOEBASEICMS} set={setNfeItemModal} options={selectSimNao} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-2 col-md-3 col-sm-4" label="COMPÕE BASE ST" name="NFI_COMPOEBASEICMSST" value={nfeItemModal.NFI_COMPOEBASEICMSST} set={setNfeItemModal} options={selectSimNao} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CÁLCULO" name="NFI_BASEICMS" value={nfeItemModal.NFI_BASEICMS} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CÁLCULO ST" name="NFI_BASEICMSST" value={nfeItemModal.NFI_BASEICMSST} readOnly disabled/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. ICMS" name="NFI_ALIQICMS" value={nfeItemModal.NFI_ALIQICMS} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. INTERESTADUAL" name="NFI_ALIQICMSINTER" value={nfeItemModal.NFI_ALIQICMSINTER} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. INT. PARTILHA" name="NFI_ALIQICMSINTERPART" value={nfeItemModal.NFI_ALIQICMSINTERPART} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. ICMS ST" name="NFI_ALIQICMSST" value={nfeItemModal.NFI_ALIQICMSST} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. ICMS ST" name="NFI_ALIQICMSST" value={nfeItemModal.NFI_ALIQICMSST} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="MARGEM ADIC. ST" name="NFI_ALIQICMSADICST" value={nfeItemModal.NFI_ALIQICMSADICST} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. FCP" name="NFI_ALIQFCP" value={nfeItemModal.NFI_ALIQFCP} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. FCP ST" name="NFI_ALIQFCPST" value={nfeItemModal.NFI_ALIQFCPST} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ICMS" name="NFI_VALORICMS" value={nfeItemModal.NFI_VALORICMS} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ICMS ST" name="NFI_VALORICMSST" value={nfeItemModal.NFI_VALORICMSST} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="ICMS REMETENTE" name="NFI_VALORICMSUFREMET" value={nfeItemModal.NFI_VALORICMSUFREMET} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="ICMS DESTINATÁRIO" name="NFI_VALORICMSUFDEST" value={nfeItemModal.NFI_VALORICMSUFDEST} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR FCP" name="NFI_VALORFCP" value={nfeItemModal.NFI_VALORFCP} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR FCP ST" name="NFI_VALORFCPST" value={nfeItemModal.NFI_VALORFCPST} readOnly disabled/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="IPI">
                        <div className="row g-1">
                            <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CST IPI" name="NFI_CSTIPI" value={nfeItemModal.NFI_CSTIPI} set={setNfeItemModal} onClick={() => setShowIpiLoc(true)} onBlur={(e) => localizar(IPI, e.target.value, setNfeItemModal, mapaIpi)} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CST IPI" name="IPI_DESCRICAO" value={nfeItemModal.IPI_DESCRICAO} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC." name="NFI_BASEIPI" value={nfeItemModal.NFI_BASEIPI} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR IPI" name="NFI_VALORIPI" value={nfeItemModal.NFI_VALORIPI} readOnly disabled/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. IPI" name="NFI_ALIQIPI" value={nfeItemModal.NFI_ALIQIPI} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="ENQUADRAMENTO" name="NFI_ENQUADRAMENTOIPI" value={nfeItemModal.NFI_ENQUADRAMENTOIPI} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="PIS">
                        <div className="row g-1">
                            <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CST PIS" name="NFI_CSTPIS" value={nfeItemModal.NFI_CSTPIS} set={setNfeItemModal} onClick={() => setShowPisLoc(true)} onBlur={(e) => localizar(PISCOFINS, e.target.value, setNfeItemModal, mapaPis)} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CST PIS" name="PIS_DESCRICAO" value={nfeItemModal.PIS_DESCRICAO} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC." name="NFI_BASEPIS" value={nfeItemModal.NFI_BASEPIS} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR PIS" name="NFI_VALORPIS" value={nfeItemModal.NFI_VALORPIS} readOnly disabled/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. PIS" name="NFI_ALIQPIS" value={nfeItemModal.NFI_ALIQPIS} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC. ST" name="NFI_BASEPISST" value={nfeItemModal.NFI_BASEPISST} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR PIS ST" name="NFI_VALORPISST" value={nfeItemModal.NFI_VALORPISST} readOnly disabled/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. PIS ST" name="NFI_ALIQPISST" value={nfeItemModal.NFI_ALIQPISST} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-2 col-md-3 col-sm-4" label="COMPÕE TOTAL" name="NFI_SOMAPISST" value={nfeItemModal.NFI_SOMAPISST} set={setNfeItemModal} options={selectSimNao} readOnly={disableFields} disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="COFINS">
                        <div className="row g-1">
                            <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="CST COFINS" name="NFI_CSTCOFINS" value={nfeItemModal.NFI_CSTCOFINS} set={setNfeItemModal} onClick={() => setShowCofinsLoc(true)} onBlur={(e) => localizar(PISCOFINS, e.target.value, setNfeItemModal, mapaCofins)} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO CST COFINS" name="PIS_DESCRICAO1" value={nfeItemModal.PIS_DESCRICAO1} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC." name="NFI_BASECOFINS" value={nfeItemModal.NFI_BASECOFINS} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR COFINS" name="NFI_VALORCOFINS" value={nfeItemModal.NFI_VALORCOFINS} readOnly disabled/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. COFINS" name="NFI_ALIQCOFINS" value={nfeItemModal.NFI_ALIQCOFINS} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC. ST" name="NFI_BASECOFINSST" value={nfeItemModal.NFI_BASECOFINSST} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR COFINS ST" name="NFI_VALORCOFINSST" value={nfeItemModal.NFI_VALORCOFINSST} readOnly disabled/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. COFINS ST" name="NFI_ALIQCOFINSST" value={nfeItemModal.NFI_ALIQCOFINSST} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-2 col-md-3 col-sm-4" label="COMPÕE TOTAL" name="NFI_SOMACOFINSST" value={nfeItemModal.NFI_SOMACOFINSST} set={setNfeItemModal} options={selectSimNao} readOnly={disableFields} disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="ISS">
                        <div className="row g-1">
                            <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="TIPO SERVIÇO" name="NFI_TIPOISS" value={nfeItemModal.NFI_TIPOISS} set={setNfeItemModal} onClick={() => setShowIssLoc(true)} onBlur={(e) => localizar(ISS, e.target.value, setNfeItemModal, mapaIss)} mask="999999" readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldLoc size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO TIPO SERVIÇO" name="ISS_DESCRICAO" value={nfeItemModal.ISS_DESCRICAO} readOnly disabled/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="INDICADOR ISS" name="NFI_INDICADORISS" value={nfeItemModal.NFI_INDICADORISS} set={setNfeItemModal} options={selectIndicadorIss} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="INCENTIVO FISCAL" name="NFI_INCENTIVOFSICAL" value={nfeItemModal.NFI_INCENTIVOFSICAL} set={setNfeItemModal} options={selectSimNao} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. ISS" name="NFI_ALIQISS" value={nfeItemModal.NFI_ALIQISS} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC." name="NFI_BASEISS" value={nfeItemModal.NFI_BASEISS} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ISS" name="NFI_VALORISS" value={nfeItemModal.NFI_VALORISS} readOnly disabled/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR DEDUÇÃO" name="NFI_VALORDEDUCAO" value={nfeItemModal.NFI_VALORDEDUCAO} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR RENTENÇÃO" name="NFI_VALORRETENCAO" value={nfeItemModal.NFI_VALORRETENCAO} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR OUTROS" name="NFI_VALORISSOUTROS" value={nfeItemModal.NFI_VALORISSOUTROS} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR DESC. COND." name="NFI_VALORISSDESCCOND" value={nfeItemModal.NFI_VALORISSDESCCOND} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR DESC. INCOND." name="NFI_VALORISSDESCINCOND" value={nfeItemModal.NFI_VALORISSDESCINCOND} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldLoc size="col-lg-2 col-md-3 col-sm-4" label="CIDADE FG" name="NFI_CIDADEISS" value={nfeItemModal.NFI_CIDADEISS} set={setNfeItemModal} onClick={() => setShowCidadesLoc(true)} readOnly disabled={disableFields}/>
                            <PettFieldLoc size="col-lg-2 col-md-3 col-sm-4" label="PAIS FG" name="NFI_PAISISS" value={nfeItemModal.NFI_PAISISS} set={setNfeItemModal} onClick={() => setShowPaisesLoc(true)} readOnly disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="Importação">
                        <div className="row g-1">
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC." name="NFI_BASEII" value={nfeItemModal.NFI_BASEII} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. II" name="NFI_ALIQII" value={nfeItemModal.NFI_ALIQII} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR II" name="NFI_VALORII" value={nfeItemModal.NFI_VALORII} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ADUANA" name="NFI_VALORADUANA" value={nfeItemModal.NFI_VALORADUANA} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR IOF" name="NFI_VALORIOF" value={nfeItemModal.NFI_VALORIOF} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="NUM. REGISTRO DI" name="NFI_DINUMERO" value={nfeItemModal.NFI_DINUMERO} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR AFRMM" name="NFI_VALORADRMM" value={nfeItemModal.NFI_VALORADRMM} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDate size="col-lg-2 col-md-3 col-sm-4" label="DATA DI" name="NFI_DIDATA" value={nfeItemModal.NFI_DIDATA} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="LOCAL DESEMBARAÇO" name="NFI_DIDESEMBARACOLOCAL" value={nfeItemModal.NFI_DIDESEMBARACOLOCAL} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDate size="col-lg-2 col-md-3 col-sm-4" label="DATA DESEMBARAÇO" name="NFI_DIDESEMBARACODATA" value={nfeItemModal.NFI_DIDESEMBARACODATA} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="UF DESEMBARAÇO" name="NFI_DIDESEMBARACOUF" value={nfeItemModal.NFI_DIDESEMBARACOUF} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="VIA DE TRANSPORTE" name="NFI_DITRANSPORTE" value={nfeItemModal.NFI_DITRANSPORTE} set={setNfeItemModal} options={selectViaTransporte} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="INTERMEDIO DI" name="NFI_DIINTERMEDIO" value={nfeItemModal.NFI_DIINTERMEDIO} set={setNfeItemModal} options={selectIntermedio} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMask size="col-lg-2 col-md-3 col-sm-4" label="CNPJ ADQUIRENTE" name="NFI_DICNPJ" value={nfeItemModal.NFI_DICNPJ} set={setNfeItemModal} mask="99.999.999/9999-99" readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="UF ADQUIRENTE" name="NFI_DITERCEIROUF" value={nfeItemModal.NFI_DITERCEIROUF} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="CÓD EXPORTADOR" name="NFI_DIEXPORTADORCOD" value={nfeItemModal.NFI_DIEXPORTADORCOD} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="Exportação">
                        <div className="row g-1">
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" length="15" label="EX DRAWBACK" name="NFI_EXDRAWBACK" value={nfeItemModal.NFI_EXDRAWBACK} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" length="15" label="REGISTRO EXPORTAÇÃO" name="NFI_EXREGISTRO" value={nfeItemModal.NFI_EXREGISTRO} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" length="15" label="QUANTIDADE EXPORTADA" name="NFI_EXQUANTIDADE" value={nfeItemModal.NFI_EXQUANTIDADE} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-4" length="80" label="CHAVE DE ACESSO" name="NFI_EXCHAVEACESSO" value={nfeItemModal.NFI_EXCHAVEACESSO} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="Informações Adicionais">
                        <div className="row g-1">
                            <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="INFORMAÇÕES ADICIONAIS" name="NFI_INFOADICIONAL" value={nfeItemModal.NFI_INFOADICIONAL} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                    <PettTabPanel header="ICMS Retido">
                        <div className="row g-1">
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BASE CALC." name="NFI_BASEICMSRET" value={nfeItemModal.NFI_BASEICMSRET} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="ALIQ. ST RETIDO" name="NFI_ALIQICMSRET" value={nfeItemModal.NFI_ALIQICMSRET} set={setNfeItemModal} minDigits={2} maxDigits={2} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ST RETIDO" name="NFI_VALORICMSRET" value={nfeItemModal.NFI_VALORICMSRET} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ICMS SUBSTITUTO" name="NFI_VALORICMSSUBSTITUTO" value={nfeItemModal.NFI_VALORICMSSUBSTITUTO} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="VALOR ICMS DESONERADO" name="NFI_VALORICMSDESONERADO" value={nfeItemModal.NFI_VALORICMSDESONERADO} set={setNfeItemModal} readOnly={disableFields} disabled={disableFields}/>
                            <PettFieldDrop size="col-lg-6 col-md-6 col-sm-12" label="MOTIVO DESONERACAO" name="NFI_DESONERACAO" value={nfeItemModal.NFI_DESONERACAO} set={setNfeItemModal} options={selectDesoneracao} readOnly={disableFields} disabled={disableFields}/>
                        </div>
                    </PettTabPanel>
                </PettTab>

                <PettModal.Footer className='bg-tema2 border-0 p-0 px-1'>
                    <div className="w-100 d-flex">
                        <PettIf condicional={nfe.NFE_STATUS==="A"}>
                            <PettButton caption="Salvar" icone="checkmark" click={salvar} />
                            <PettButton caption="Cancelar" icone="cancel" click={(e) => cancelar(e) } />
                            <PettIf condicional={nfeItemModal.NFI_CODIGO!==""}>
                                <PettButton caption="Excluir Item" icone="minus" click={() => excluir({codigo: nfeItemModal.NFI_CODIGO || '', nome: nfeItemModal.NFI_DESCRICAO || ''}) }  className="ms-auto"/>
                            </PettIf>
                        </PettIf>
                        <PettIf condicional={nfe.NFE_STATUS!=="A"} title="Item do Pedido...">
                            <PettButton caption="Fechar" icone="cancel" click={(e) => cancelar(e) } />
                        </PettIf>
                    </div>
                </PettModal.Footer>

            </PettModal>    
            <AlmoxarifadosLoc showModal={showAlmoxarifadosLoc} onCloseModal={(data) => { selecionar(data, setNfeItemModal, mapaAlmoxarifados); setShowAlmoxarifadosLoc(false); }}/>
            <BeneficiosLoc showModal={showBeneficiosLoc} onCloseModal={(data) => { selecionar(data, setNfeItemModal, mapaBeneficios); setShowBeneficiosLoc(false); }}/>
            <CidadesLoc showModal={showCidadesLoc} onCloseModal={(data) => { selecionar(data, setNfeItemModal, mapaCidades); setShowCidadesLoc(false); }}/>
            <ClassFiscalLoc showModal={showClassFiscalLoc} onCloseModal={(data) => { selecionar(data, setNfeItemModal, mapaClassFiscal); setShowClassFiscalLoc(false); }}/>
            <IcmsLoc showModal={showIcmsLoc} onCloseModal={(data) => { selecionar(data, setNfeItemModal, mapaIcms); setShowIcmsLoc(false); }}/>
            <IpiLoc showModal={showIpiLoc} onCloseModal={(data) => { selecionar(data, setNfeItemModal, mapaIpi); setShowIpiLoc(false); }}/>
            <IssLoc showModal={showIssLoc} onCloseModal={(data) => { selecionar(data, setNfeItemModal, mapaIss); setShowIssLoc(false); }}/>
            <NaturezasLoc showModal={showNaturezasLoc} onCloseModal={(data) => { selecionar(data, setNfeItemModal, mapaNaturezas); setShowNaturezasLoc(false); }}/>
            <PaisesLoc showModal={showPaisesLoc} onCloseModal={(data) => { selecionar(data, setNfeItemModal, mapaPaises); setShowPaisesLoc(false); }}/>
            <PisCofinsLoc showModal={showPisLoc} onCloseModal={(data) => { selecionar(data, setNfeItemModal, mapaPis); setShowPisLoc(false); }}/>
            <PisCofinsLoc showModal={showCofinsLoc} onCloseModal={(data) => { selecionar(data, setNfeItemModal, mapaCofins); setShowCofinsLoc(false); }}/>
            <ProdutosLoc showModal={showProdutosLoc} onCloseModal={(data) => { selecionar(data, setNfeItemModal, mapaProdutos); setShowProdutosLoc(false); }}/>
        </PettIf>
    </>
}

export default NfesItens;