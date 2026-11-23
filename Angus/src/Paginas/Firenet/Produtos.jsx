import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettEditor } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';

import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import ClassFiscalLoc from '../../Componentes/Localizadores/ClassFiscalLoc';
import FamiliasLoc from '../../Componentes/Localizadores/FamiliasLoc';
import FornecedoresLoc from '../../Componentes/Localizadores/FornecedoresLoc';
import GruposLoc from '../../Componentes/Localizadores/GruposLoc';
import IcmsLoc from '../../Componentes/Localizadores/IcmsLoc';
import IpiLoc from '../../Componentes/Localizadores/IpiLoc';
import IssLoc from '../../Componentes/Localizadores/IssLoc';
import Loading from '../../Componentes/Loading';
import PisCofinsLoc from '../../Componentes/Localizadores/PisCofinsLoc';
import ProdutosAlmoxarifados from './ProdutosAlmoxarifados';
import ProdutosLoc from '../../Componentes/Localizadores/ProdutosLoc';
import MarcasLoc from '../../Componentes/Localizadores/MarcasLoc';
import UnidadesLoc from '../../Componentes/Localizadores/UnidadesLoc';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { selectAliquotaPor, selectAtivoInativo, selectIndicadorIss, selectOrigem, selectModalidade, selectModalidadeST, selectSimNao, selectProdutoServico, selectPropriaTerceiros, selectTipoItem  } from '../../Combox';
import { formatarAtivoInativo, formatarDataStr, formatarMoeda, tratarCatch } from '../../Funcoes';
import { useLocalizar, CLASSFISCAL, FAMILIAS, FORNECEDORES, GRUPOS, ICMS, IPI, ISS, MARCAS, PISCOFINS, PRODUTOS, UNIDADES } from '../../Hooks/useLocalizar';

const mapaClassFiscal  = { PRO_CLASSFISCAL: 'CLF_CODIGO', CLF_DESCRICAO: 'CLF_DESCRICAO', PRO_EXCECAO: 'CLF_EXCECAO' };
const mapaCofins       = { PRO_CSTCOFINS: 'PIS_CODIGO', PIS_DESCRICAO1: 'PIS_DESCRICAO' };
const mapaFamilias     = { PRO_FAMILIA: 'FAM_CODIGO', FAM_DESCRICAO: 'FAM_DESCRICAO' };
const mapaFornecedores = { PRO_FORNECEDOR: 'FOR_CODIGO', FOR_NOME: 'FOR_NOME' };
const mapaGrupos       = { PRO_GRUPO: 'GRU_CODIGO', GRU_DESCRICAO: 'GRU_DESCRICAO' };
const mapaIcms         = { PRO_CSTICMS: 'ICM_CODIGO', ICM_DESCRICAO: 'ICM_DESCRICAO' };
const mapaIpi          = { PRO_CSTIPI: 'IPI_CODIGO', IPI_DESCRICAO: 'IPI_DESCRICAO' };
const mapaIss          = { PRO_TIPOISS: 'ISS_CODIGO', ISS_DESCRICAO: 'ISS_DESCRICAO' };
const mapaMarcas       = { PRO_MARCA: 'MAR_CODIGO', MAR_DESCRICAO: 'MAR_DESCRICAO' };
const mapaPis          = { PRO_CSTPIS: 'PIS_CODIGO', PIS_DESCRICAO: 'PIS_DESCRICAO' };
const mapaProdutos     = { PRO_PRODUTOREAL: 'PRO_CODIGO' };
const mapaUnidades     = { PRO_UNIDADE: 'UNI_CODIGO', UNI_DESCRICAO: 'UNI_DESCRICAO' };

function Produtos() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/produtos', 'Produtos listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ PRO_CODIGO: '', PRO_LOCALIZACAO: '', PRO_NOME: '', FAM_DESCRICAO: '', GRU_DESCRICAO: '' });
    const [ valoresPadrao, setValoresPadrao ] = useState({});
    const vazio = {
        PRO_ALIQCOFINS: '0',
        PRO_ALIQCOFINSST: '0',
        PRO_ALIQICMS: '0',
        PRO_ALIQICMSADICST: '0',
        PRO_ALIQICMSRED: '0',
        PRO_ALIQICMSST: '0',
        PRO_ALIQIPI: '0',
        PRO_ALIQISS: '0',
        PRO_ALIQOUTROS: '0',
        PRO_ALIQPIS: '0',
        PRO_ALIQPISST: '0',
        PRO_ALTURA: '0',
        PRO_ATUALIZAR: 'S',
        PRO_ATUALIZATABELA: 'S',
        PRO_CEST: '',
        PRO_CFOP: '',
        PRO_CFOPFORA: '',
        PRO_CLASSFISCAL: '',
        PRO_CODIGO: '0',
        PRO_CODIGOBARRAS: '',
        PRO_CODIGOFAB: '',
        PRO_COMISSAO: '0',
        PRO_COMPOEBASEICMS: 'S',
        PRO_COMPOEBASEICMSST: 'N',
        PRO_COMPOSTO: 'N',
        PRO_CONVERSAO: '1',
        PRO_CORSABOR: '',
        PRO_CSTCOFINS: '',
        PRO_CSTICMS: '',
        PRO_CSTIPI: '',
        PRO_CSTPIS: '',
        PRO_CUBICO: '0',
        PRO_DESCMAX: '',
        PRO_DESCRICAO: '',
        PRO_DTATUALIZACAO: '',
        PRO_DTCADASTRO: '',
        PRO_DTULTCOMPRA: '',
        PRO_DTULTVENDA: '',
        PRO_ECFICMS: '',
        PRO_ENQUADRAMENTOIPI: '999',
        PRO_ESTOQUEATUAL: '0',
        PRO_ESTOQUEMAX: '0',
        PRO_ESTOQUEMIN: '0',
        PRO_EXCECAO: '',
        PRO_FAMILIA: '',
        PRO_FCI: '',
        PRO_FORNECEDOR: '',
        PRO_GENERO: '96',
        PRO_GRUPO: '',
        PRO_ICMSALIQUOTAPOR: 'E',
        PRO_INCENTIVOISS: 'S',
        PRO_INDICADORISS: '3 - ISENCAO',
        PRO_INTERNET: 'S',
        PRO_LARGURA: '0',
        PRO_LOCALIZACAO: '',
        PRO_MARCA: '',
        PRO_MARGEM: '',
        PRO_MARGEM1: '',
        PRO_MARGEM2: '',
        PRO_MARGEM3: '',
        PRO_MARGEM4: '',
        PRO_MARGEM5: '',
        PRO_MARGEM6: '',
        PRO_MARKUP: '1',
        PRO_MARKUPCODIGO: '0',
        PRO_MODICMS: '0 - MARGEM VALOR AGREGADO (%)',
        PRO_MODICMSST: '0 - PRECO TABELADO OU MAXIMO SUGERIDO',
        PRO_NOME: '',
        PRO_OBSERVACOES: '',
        PRO_OFERTA: 'N',
        PRO_ORIGEM: '0 - NACIONAL',
        PRO_PALAVRASCHAVE: '',
        PRO_PESAVEL: 'N',
        PRO_PESO: '0',
        PRO_PRECO1: '',
        PRO_PRECO2: '',
        PRO_PRECO3: '',
        PRO_PRECO4: '',
        PRO_PRECO5: '',
        PRO_PRECO6: '',
        PRO_PRECOCUSTO: '0',
        PRO_PRECOCUSTOCOMP: '0',
        PRO_PRECOCUSTOMEDIO: '0',
        PRO_PRECOCUSTOULT: '0',
        PRO_PRECOVENDA: '0',
        PRO_PRECOVENDAMEDIO: '0',
        PRO_PRECOVENDAULT: '0',
        PRO_PRODUCAO: 'T',
        PRO_PRODUTOREAL: '0',
        PRO_PROFUNDIDADE: '0',
        PRO_REGISTROMS: '',
        PRO_STATUS: 'A',
        PRO_SUBSTITUICAOTRIB: 'N',
        PRO_TABPRECO1: '',
        PRO_TABPRECO2: '',
        PRO_TABPRECO3: '',
        PRO_TABPRECO4: '',
        PRO_TABPRECO5: '',
        PRO_TABPRECO6: '',
        PRO_TAMANHO: '',
        PRO_TIPO: 'P',
        PRO_TIPOISS: '',
        PRO_TIPOITEM: '00 - MERCADORIA PARA REVENDA',
        PRO_TOTALIZADORPARCIAL: '',
        PRO_TRIBUTO: 'II',
        PRO_TROCA: 'N',
        PRO_UNIDADE: '',
        PRO_USUARIO: '',
        CLF_DESCRICAO: '', 
        FAM_DESCRICAO: '',
        FOR_NOME: '', 
        GRU_DESCRICAO: '',
        ICM_CALCULACREDITOSN: '', 
        ICM_DESCRICAO: '', 
        IPI_DESCRICAO: '', 
        ISS_DESCRICAO: '', 
        MAR_DESCRICAO: '',
        PIS_DESCRICAO: '',
        PIS_DESCRICAO1: '', 
        UNI_DESCRICAO: '',
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
        registro: produto,
        salvar,
        setOperacao,
        setRegistro: setProduto,
        visualizar,
    } = useTabela('firenet/produtos', vazio, 'PRO_CODIGO', 'PRO_NOME');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(produto, () => listar(pesquisa, true));
    const hEditar    = () => editar(produto);
    // const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
        getValoresPadrao();
    },[]);


    async function getValoresPadrao() {
        const formData = new FormData();
        formData.set('op','parametros');
        formData.set('empresa',empresaSelecionada.value);
        try {
            const response = await Api.post('firenet/produtos',formData);
            if (response.data.erro==="S") throw response;
            setValoresPadrao({
                ...vazio, 
                PRO_CFOP: response.data.msg.PAR_CFOPPADRAO ?? '5102',
                PRO_CFOPFORA: response.data.msg.PAR_CFOPFORAPADRAO ?? '6102',
                PRO_CLASSFISCAL: response.data.msg.PAR_CLASSFISCALPADRAO ?? '12345678',
                PRO_CSTCOFINS: response.data.msg.PAR_CSTCOFINSPADRAO ?? '',
                PRO_CSTICMS: response.data.msg.PAR_CSTICMSPADRAO ?? '',
                PRO_CSTIPI: response.data.msg.PAR_CSTIPIPADRAO ?? '',
                PRO_CSTPIS: response.data.msg.PAR_CSTPISPADRAO ?? '',
                PRO_DESCMAX: response.data.msg.PAR_DESCMAXPADRAO ?? '',
                PRO_ENQUADRAMENTOIPI: response.data.msg.PAR_ENQUADRAMENTOIPI ?? '',
                PRO_FAMILIA: response.data.msg.PAR_PROFAMILIA ?? '',
                PRO_FORNECEDOR: response.data.msg.PAR_PROFORNECEDOR ?? '',
                PRO_GRUPO: response.data.msg.PAR_PROGRUPO ?? '',
                PRO_MARCA: response.data.msg.PAR_PROMARCA ?? '',
                PRO_MARGEM: response.data.msg.PAR_MARGEMPADRAO ?? '',
                PRO_MARGEM1: response.data.msg.TAB_MARGEM1 ?? '0',
                PRO_MARGEM2: response.data.msg.TAB_MARGEM1 ?? '0',
                PRO_MARGEM3: response.data.msg.TAB_MARGEM1 ?? '0',
                PRO_MARGEM4: response.data.msg.TAB_MARGEM1 ?? '0',
                PRO_MARGEM5: response.data.msg.TAB_MARGEM1 ?? '0',
                PRO_MARGEM6: response.data.msg.TAB_MARGEM1 ?? '0',
                PRO_TABPRECO1: response.data.msg.TAB_DESCRICAO1 ?? '',
                PRO_TABPRECO2: response.data.msg.TAB_DESCRICAO2 ?? '',
                PRO_TABPRECO3: response.data.msg.TAB_DESCRICAO3 ?? '',
                PRO_TABPRECO4: response.data.msg.TAB_DESCRICAO4 ?? '',
                PRO_TABPRECO5: response.data.msg.TAB_DESCRICAO5 ?? '',
                PRO_TABPRECO6: response.data.msg.TAB_DESCRICAO6 ?? '',
                PRO_UNIDADE: response.data.msg.PAR_PROUNIDADE ?? '',
                FAM_DESCRICAO: response.data.msg.FAM_DESCRICAO ?? '',
                FOR_NOME: response.data.msg.FOR_NOME ?? '', 
                GRU_DESCRICAO: response.data.msg.GRU_DESCRICAO ?? '',
                ICM_DESCRICAO: response.data.msg.ICM_DESCRICAO ?? '', 
                IPI_DESCRICAO: response.data.msg.IPI_DESCRICAO ?? '', 
                MAR_DESCRICAO: response.data.msg.MAR_DESCRICAO ?? '',
                PIS_DESCRICAO: response.data.msg.PIS_DESCRICAO ?? '',
                PIS_DESCRICAO1: response.data.msg.PIS_DESCRICAO1 ?? '', 
                UNI_DESCRICAO: response.data.msg.UNI_DESCRICAO ?? '',
            });
        } catch (error) {
            tratarCatch('Clientes getValoresPadrao',error,logout);
        }
    }

    function reset() {
        const pesquisaVazia = { PRO_CODIGO: '', PRO_NOME: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const [ showClassFiscalLoc, setShowClassFiscalLoc ] = useState(false);
    const [ showEstoque, setShowEstoque ] = useState(false);
    const [ showFamiliasLoc, setShowFamiliasLoc ] = useState(false);
    const [ showFornecedoresLoc, setShowFornecedoresLoc ] = useState(false);
    const [ showGruposLoc, setShowGruposLoc ] = useState(false);
    const [ showIcmsLoc, setShowIcmsLoc ] = useState(false);
    const [ showIpiLoc, setShowIpiLoc ] = useState(false);
    const [ showIssLoc, setShowIssLoc ] = useState(false);
    const [ showMarcasLoc, setShowMarcasLoc ] = useState(false);
    const [ showPisLoc, setShowPisLoc ] = useState(false);
    const [ showCofinsLoc, setShowCofinsLoc ] = useState(false);
    const [ showProdutosLoc, setShowProdutosLoc ] = useState(false);
    const [ showUnidadesLoc, setShowUnidadesLoc ] = useState(false);
    const selectGenero = [
        { value: "00", label: "00" },
        { value: "01", label: "01" },
        { value: "02", label: "02" },
        { value: "03", label: "03" },
        { value: "04", label: "04" },
        { value: "05", label: "05" },
        { value: "06", label: "06" },
        { value: "07", label: "07" },
        { value: "08", label: "08" },
        { value: "09", label: "09" },
        { value: "10", label: "10" },
        { value: "11", label: "11" },
        { value: "12", label: "12" },
        { value: "13", label: "13" },
        { value: "14", label: "14" },
        { value: "15", label: "15" },
        { value: "16", label: "16" },
        { value: "17", label: "17" },
        { value: "18", label: "18" },
        { value: "19", label: "19" },
        { value: "20", label: "20" },
        { value: "21", label: "21" },
        { value: "22", label: "22" },
        { value: "23", label: "23" },
        { value: "24", label: "24" },
        { value: "25", label: "25" },
        { value: "26", label: "26" },
        { value: "27", label: "27" },
        { value: "28", label: "28" },
        { value: "29", label: "29" },
        { value: "30", label: "30" },
        { value: "31", label: "31" },
        { value: "32", label: "32" },
        { value: "33", label: "33" },
        { value: "34", label: "34" },
        { value: "35", label: "35" },
        { value: "36", label: "36" },
        { value: "37", label: "37" },
        { value: "38", label: "38" },
        { value: "39", label: "39" },
        { value: "40", label: "40" },
        { value: "41", label: "41" },
        { value: "42", label: "42" },
        { value: "43", label: "43" },
        { value: "44", label: "44" },
        { value: "45", label: "45" },
        { value: "46", label: "46" },
        { value: "47", label: "47" },
        { value: "48", label: "48" },
        { value: "49", label: "49" },
        { value: "50", label: "50" },
        { value: "51", label: "51" },
        { value: "52", label: "52" },
        { value: "53", label: "53" },
        { value: "54", label: "54" },
        { value: "55", label: "55" },
        { value: "56", label: "56" },
        { value: "57", label: "57" },
        { value: "58", label: "58" },
        { value: "59", label: "59" },
        { value: "60", label: "60" },
        { value: "61", label: "61" },
        { value: "62", label: "62" },
        { value: "63", label: "63" },
        { value: "64", label: "64" },
        { value: "65", label: "65" },
        { value: "66", label: "66" },
        { value: "67", label: "67" },
        { value: "68", label: "68" },
        { value: "69", label: "69" },
        { value: "70", label: "70" },
        { value: "71", label: "71" },
        { value: "72", label: "72" },
        { value: "73", label: "73" },
        { value: "74", label: "74" },
        { value: "75", label: "75" },
        { value: "76", label: "76" },
        { value: "77", label: "77" },
        { value: "78", label: "78" },
        { value: "79", label: "79" },
        { value: "80", label: "80" },
        { value: "81", label: "81" },
        { value: "82", label: "82" },
        { value: "83", label: "83" },
        { value: "84", label: "84" },
        { value: "85", label: "85" },
        { value: "86", label: "86" },
        { value: "87", label: "87" },
        { value: "88", label: "88" },
        { value: "89", label: "89" },
        { value: "90", label: "90" },
        { value: "91", label: "91" },
        { value: "92", label: "92" },
        { value: "93", label: "93" },
        { value: "94", label: "94" },
        { value: "95", label: "95" },
        { value: "96", label: "96" },
        { value: "97", label: "97" },
        { value: "98", label: "98" },
        { value: "99", label: "99" },
    ];
    
    async function duplicar() {
        const confirmou = await PettMensagem.confirmar('Confirma Duplicar?','Tem certeza que deseja duplicar '+produto.PRO_NOME+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','duplicar');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('PRO_CODIGO',produto.PRO_CODIGO);
            try {
                const response = await Api.post('firenet/produtos',formData);
                if (response.data.erro==='S') throw response;
                setProduto(response.data.msg);

                PettMensagem.sucesso('Yessss!','Produto duplicado tem o código '+response.data.msg.PRO_CODIGO);
            } catch (error) {
                tratarCatch('Produtos duplicar',error,logout);
            }
        }
    }

    const onRowSelect = (event) => {
        visualizar(event.PRO_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Produtos" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hPesquisar}                   condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}                      condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}                     condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}                      condicional={operacao==="visualizar"}/>
            <PettButton caption="Estoque"   icone="warehouse" click={ () => setShowEstoque(true) } condicional={operacao==="visualizar"}/>
            <PettButton caption="Duplicar"  icone="copy"      click={ () => duplicar() }           condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}                      condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao}             condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}               condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={produto.PRO_USUARIO} data={produto.PRO_DTATUALIZACAO} hora={produto.PRO_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="PRO_CODIGO" value={produto.PRO_CODIGO} readOnly disabled keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO BARRAS" name="PRO_CODIGOBARRAS" value={produto.PRO_CODIGOBARRAS} set={setProduto} readOnly={disableFields} disabled={disableFields} length="60"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO FAB." name="PRO_CODIGOFAB" value={produto.PRO_CODIGOFAB} set={setProduto} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="PRO_DTCADASTRO" value={formatarDataStr(produto.PRO_DTCADASTRO)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="STATUS" name="PRO_STATUS" value={produto.PRO_STATUS} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectAtivoInativo}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="OFERTA" name="PRO_OFERTA" value={produto.PRO_OFERTA} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                    </div>
                    <div className="row g-1 mb-3">
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="NOME" name="PRO_NOME" value={produto.PRO_NOME} set={setProduto} readOnly={disableFields} disabled={disableFields} length="100"/>
                        <PettFieldLoc size="col-lg-1 col-md-6 col-sm-12" label="FAMÍLIA" name="PRO_FAMILIA" value={produto.PRO_FAMILIA} set={setProduto} onClick={() => setShowFamiliasLoc(true)} onBlur={(e) => localizar(FAMILIAS, e.target.value, setProduto, mapaFamilias)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-6 col-sm-12" label="DESCRIÇÃO FAMÍLIA" name="FAM_DESCRICAO" value={produto.FAM_DESCRICAO} readOnly disabled/>
                        <PettFieldLoc size="col-lg-1 col-md-6 col-sm-12" label="GRUPO" name="PRO_GRUPO" value={produto.PRO_GRUPO} set={setProduto} onClick={() => setShowGruposLoc(true)} onBlur={(e) => localizar(GRUPOS, e.target.value, setProduto, mapaGrupos)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-6 col-sm-12" label="DESCRIÇÃO GRUPO" name="GRU_DESCRICAO" value={produto.GRU_DESCRICAO} readOnly disabled/>
                        <PettFieldLoc size="col-lg-1 col-md-6 col-sm-12" label="MARCA" name="PRO_MARCA" value={produto.PRO_MARCA} set={setProduto} onClick={() => setShowMarcasLoc(true)} onBlur={(e) => localizar(MARCAS, e.target.value, setProduto, mapaMarcas)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-6 col-sm-12" label="DESCRIÇÃO MARCA" name="MAR_DESCRICAO" value={produto.MAR_DESCRICAO} readOnly disabled/>
                        <PettFieldLoc size="col-lg-1 col-md-6 col-sm-12" label="FORNECEDOR" name="PRO_FORNECEDOR" value={produto.PRO_FORNECEDOR} set={setProduto} onClick={() => setShowFornecedoresLoc(true)} onBlur={(e) => localizar(FORNECEDORES, e.target.value, setProduto, mapaFornecedores)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-6 col-sm-12" label="NOME FORNECEDOR" name="FOR_NOME" value={produto.FOR_NOME} readOnly disabled/>
                        <PettFieldLoc size="col-lg-1 col-md-6 col-sm-12" label="UNIDADE" name="PRO_UNIDADE" value={produto.PRO_UNIDADE} set={setProduto} onClick={() => setShowUnidadesLoc(true)} onBlur={(e) => localizar(UNIDADES, e.target.value, setProduto, mapaUnidades)} readOnly={disableFields} disabled={disableFields} keyfilter="alfa" length="3" upper={true}  />
                        <PettFieldText size="col-lg-3 col-md-6 col-sm-12" label="DESCRIÇÃO UNIDADE" name="UNI_DESCRICAO" value={produto.UNI_DESCRICAO} readOnly disabled keyfilter="alpha" length="3"/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="PALAVRAS CHAVE" name="PRO_PALAVRASCHAVE" value={produto.PRO_PALAVRASCHAVE} set={setProduto} readOnly={disableFields} disabled={disableFields} length="120"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="REGISTRO MS" name="PRO_REGISTROMS" value={produto.PRO_REGISTROMS} set={setProduto} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="COR/SABOR" name="PRO_CORSABOR" value={produto.PRO_CORSABOR} set={setProduto} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="TAMANHO" name="PRO_TAMANHO" value={produto.PRO_TAMANHO} set={setProduto} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="LOCALIZAÇÃO" name="PRO_LOCALIZACAO" value={produto.PRO_LOCALIZACAO} set={setProduto} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="TIPO" name="PRO_TIPO" value={produto.PRO_TIPO} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectProdutoServico}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="COMPOSTO" name="PRO_COMPOSTO" value={produto.PRO_COMPOSTO} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="VISÍVEL NA INTERNET" name="PRO_INTERNET" value={produto.PRO_INTERNET} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="PRODUÇÃO" name="PRO_PRODUCAO" value={produto.PRO_PRODUCAO} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectPropriaTerceiros}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="PESÁVEL" name="PRO_PESAVEL" value={produto.PRO_PESAVEL} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="TROCA" name="PRO_TROCA" value={produto.PRO_TROCA} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="PESO" name="PRO_PESO" value={produto.PRO_PESO} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="3" maxDigits="3"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ALTURA" name="PRO_ALTURA" value={produto.PRO_ALTURA} set={setProduto} readOnly={disableFields} disabled={disableFields} keyfilter="int" />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="LARGURA" name="PRO_LARGURA" value={produto.PRO_LARGURA} set={setProduto} readOnly={disableFields} disabled={disableFields} keyfilter="int" />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PROFUNDIDADE" name="PRO_PROFUNDIDADE" value={produto.PRO_PROFUNDIDADE} set={setProduto} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÚBICO" name="PRO_CUBICO" value={produto.PRO_CUBICO} readOnly disabled />
                        <PettFieldLoc size="col-lg-2 col-md-3 col-sm-6" label="PRODUTO REAL" name="PRO_PRODUTOREAL" value={produto.PRO_PRODUTOREAL} set={setProduto} onClick={() => produtosLocOpen(true)} readOnly disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="CONVERSÃO" name="PRO_CONVERSAO" value={produto.PRO_CONVERSAO} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="3" maxDigits="3"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ESTOQUE ATUAL" name="PRO_ESTOQUEATUAL" value={String(produto.PRO_ESTOQUEATUAL)} readOnly disabled />
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ESTOQUE MIN." name="PRO_ESTOQUEMIN" value={produto.PRO_ESTOQUEMIN} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="3" maxDigits="3"/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ESTOQUE MAX." name="PRO_ESTOQUEMAX" value={produto.PRO_ESTOQUEMAX} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="3" maxDigits="3"/>
                    </div>

                    <strong>Custos</strong>
                    <div className="row g-1 mb-3 pt-1">
                        <PettFieldLoc size="col-lg-2 col-md-3 col-sm-6" label="MARKUP" name="PRO_MARKUPCODIGO" value={produto.PRO_MARKUPCODIGO} set={setProduto} onClick={() => produtosLocOpen(true)} readOnly disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MARKUP" name="PRO_MARKUP" value={produto.PRO_MARKUP} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PREÇO CUSTO" name="PRO_PRECOCUSTO" value={produto.PRO_PRECOCUSTO} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MARGEM" name="PRO_MARGEM" value={produto.PRO_MARGEM} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DESCONTO MÁX." name="PRO_DESCMAX" value={produto.PRO_DESCMAX} set={setProduto} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ULT. PREÇO CUSTO" name="PRO_PRECOCUSTOULT" value={produto.PRO_PRECOCUSTOULT} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PREÇO CUSTO MÉDIO" name="PRO_PRECOCUSTOMEDIO" value={produto.PRO_PRECOCUSTOMEDIO} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ULT. PREÇO VENDA" name="PRO_PRECOVENDAULT" value={produto.PRO_PRECOVENDAULT} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PREÇO VENDA MÉDIO" name="PRO_PRECOVENDAMEDIO" value={produto.PRO_PRECOVENDAMEDIO} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="COMISSÃO" name="PRO_COMISSAO" value={produto.PRO_COMISSAO} set={setProduto} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                    </div>

                    <strong>Preços</strong>
                    <div className="row g-1 pt-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PREÇO VENDA" name="PRO_PRECOVENDA" value={produto.PRO_PRECOVENDA} readOnly disabled />
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="USAR TABELA PADRAO" name="PRO_ATUALIZATABELA" value={produto.PRO_ATUALIZATABELA} readOnly disabled options={selectSimNao} />
                    </div>
                    <div className="row g-1 mb-3">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="TABELA 01" name="PRO_TABPRECO1" value={produto.PRO_TABPRECO1} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="TABELA 02" name="PRO_TABPRECO2" value={produto.PRO_TABPRECO2} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="TABELA 03" name="PRO_TABPRECO3" value={produto.PRO_TABPRECO3} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="TABELA 04" name="PRO_TABPRECO4" value={produto.PRO_TABPRECO4} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="TABELA 05" name="PRO_TABPRECO5" value={produto.PRO_TABPRECO5} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="TABELA 06" name="PRO_TABPRECO6" value={produto.PRO_TABPRECO6} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PREÇO 01" name="PRO_PRECO1" value={produto.PRO_PRECO1} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PREÇO 02" name="PRO_PRECO2" value={produto.PRO_PRECO2} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PREÇO 03" name="PRO_PRECO3" value={produto.PRO_PRECO3} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PREÇO 04" name="PRO_PRECO4" value={produto.PRO_PRECO4} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PREÇO 05" name="PRO_PRECO5" value={produto.PRO_PRECO5} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PREÇO 06" name="PRO_PRECO6" value={produto.PRO_PRECO6} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MARGEM 01" name="PRO_MARGEM1" value={produto.PRO_MARGEM1} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MARGEM 02" name="PRO_MARGEM2" value={produto.PRO_MARGEM2} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MARGEM 03" name="PRO_MARGEM3" value={produto.PRO_MARGEM3} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MARGEM 04" name="PRO_MARGEM4" value={produto.PRO_MARGEM4} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MARGEM 05" name="PRO_MARGEM5" value={produto.PRO_MARGEM5} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="MARGEM 06" name="PRO_MARGEM6" value={produto.PRO_MARGEM6} readOnly disabled />
                    </div>

                    <strong>ICMS</strong>
                    <div className="row g-1 mb-3 pt-1">
                        <PettFieldLoc size="col-lg-1 col-md-12 col-sm-12" label="CST ICMS" name="PRO_CSTICMS" value={produto.PRO_CSTICMS} set={setProduto} onClick={() => setShowIcmsLoc(true)} onBlur={(e) => localizar(ICMS, e.target.value, setProduto, mapaIcms)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-12 col-sm-12" label="DESCRIÇÃO CST ICMS" name="ICM_DESCRICAO" value={produto.ICM_DESCRICAO} readOnly disabled/>
                        <PettFieldDrop size="col-lg-4 col-md-12 col-sm-12" label="ORIGEM" name="PRO_ORIGEM" value={produto.PRO_ORIGEM} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectOrigem} />
                        <PettFieldDrop size="col-lg-4 col-md-12 col-sm-12" label="MODALIDADE" name="PRO_MODICMS" value={produto.PRO_MODICMS} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectModalidade} />
                        <PettFieldDrop size="col-lg-4 col-md-12 col-sm-12" label="MODALIDADE ST" name="PRO_MODICMSST" value={produto.PRO_MODICMSST} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectModalidadeST} />
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="SUBSTITUIÇÃO TRIB." name="PRO_SUBSTITUICAOTRIB" value={produto.PRO_SUBSTITUICAOTRIB} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectSimNao} />
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="COMPÕE BASE" name="PRO_COMPOEBASEICMS" value={produto.PRO_COMPOEBASEICMS} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectSimNao} />
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="COMPÕE BASE ST" name="PRO_COMPOEBASEICMSST" value={produto.PRO_COMPOEBASEICMSST} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectSimNao} />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="TRIBUTO" name="PRO_TRIBUTO" value={produto.PRO_TRIBUTO} set={setProduto} readOnly={disableFields} disabled={disableFields} length="2"/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA POR" name="PRO_ICMSALIQUOTAPOR" value={produto.PRO_ICMSALIQUOTAPOR} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectAliquotaPor} />
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA ICMS" name="PRO_ALIQICMS" value={produto.PRO_ALIQICMS} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="2" maxDigits="2"/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA ICMS ST" name="PRO_ALIQICMSST" value={produto.PRO_ALIQICMSST} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="2" maxDigits="2"/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="MARGEM ADIC. ST" name="PRO_ALIQICMSADICST" value={produto.PRO_ALIQICMSADICST} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="2" maxDigits="2"/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA ICMS RED." name="PRO_ALIQICMSRED" value={produto.PRO_ALIQICMSRED} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="2" maxDigits="2"/>
                    </div>

                    <strong>IPI</strong>
                    <div className="row g-1 mb-3 pt-1">
                        <PettFieldLoc size="col-lg-1 col-md-12 col-sm-12" label="CST IPI" name="PRO_CSTIPI" value={produto.PRO_CSTIPI} set={setProduto} onClick={() => setShowIpiLoc(true)} onBlur={(e) => localizar(IPI, e.target.value, setProduto, mapaIpi)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-12 col-sm-12" label="DESCRIÇÃO CST IPI" name="IPI_DESCRICAO" value={produto.IPI_DESCRICAO} readOnly disabled/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA IPI" name="PRO_ALIQIPI" value={produto.PRO_ALIQIPI} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="2" maxDigits="2"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ENQUADRAMENTO IPI" name="PRO_ENQUADRAMENTOIPI" value={produto.PRO_ENQUADRAMENTOIPI} set={setProduto} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                    </div>

                    <strong>PIS</strong>
                    <div className="row g-1 mb-3 pt-1">
                        <PettFieldLoc size="col-lg-1 col-md-12 col-sm-12" label="CST PIS" name="PRO_CSTPIS" value={produto.PRO_CSTPIS} set={setProduto} onClick={() => setShowPisLoc(true)} onBlur={(e) => localizar(PISCOFINS, e.target.value, setProduto, mapaPis)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-12 col-sm-12" label="DESCRIÇÃO CST PIS" name="PIS_DESCRICAO" value={produto.PIS_DESCRICAO} readOnly disabled/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA PIS" name="PRO_ALIQPIS" value={produto.PRO_ALIQPIS} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="2" maxDigits="2"/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA PIS ST" name="PRO_ALIQPISST" value={produto.PRO_ALIQPISST} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="2" maxDigits="2"/>                   
                    </div>

                    <strong>COFINS</strong>
                    <div className="row g-1 mb-3 pt-1">
                        <PettFieldLoc size="col-lg-1 col-md-12 col-sm-12" label="CST COFINS" name="PRO_CSTCOFINS" value={produto.PRO_CSTCOFINS} set={setProduto} onClick={() => setShowCofinsLoc(true)} onBlur={(e) => localizar(PISCOFINS, e.target.value, setProduto, mapaCofins)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-12 col-sm-12" label="DESCRIÇÃO CST COFINS" name="PIS_DESCRICAO1" value={produto.PIS_DESCRICAO1} readOnly disabled/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA COFINS" name="PRO_ALIQCOFINS" value={produto.PRO_ALIQCOFINS} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="2" maxDigits="2"/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA COFINS ST" name="PRO_ALIQCOFINSST" value={produto.PRO_ALIQCOFINSST} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="2" maxDigits="2"/>
                    </div>

                    <strong>ISS</strong>
                    <div className="row g-1 mb-3 pt-1">
                        <PettFieldLoc size="col-lg-1 col-md-12 col-sm-12" label="TIPO SERVIÇO" name="PRO_TIPOISS" value={produto.PRO_TIPOISS} set={setProduto} onClick={() => setShowIssLoc(true)} onBlur={(e) => localizar(ISS, e.target.value, setProduto, mapaIss)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-12 col-sm-12" label="DESCRIÇÃO TIPO SERVIÇO" name="ISS_DESCRICAO" value={produto.ISS_DESCRICAO} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="INDICADOR ISS" name="PRO_INDICADORISS" value={produto.PRO_INDICADORISS} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectIndicadorIss}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA ISS" name="PRO_ALIQISS" value={produto.PRO_ALIQISS} set={setProduto} readOnly={disableFields} disabled={disableFields} minDigits="2" maxDigits="2"/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="INCENTIVO FISCAL" name="PRO_INCENTIVOISS" value={produto.PRO_INCENTIVOISS} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                    </div>

                    <strong>Outros dados fiscais</strong>
                    <div className="row g-1 mb-3 pt-1">
                        <PettFieldDrop size="col-lg-4 col-md-12 col-sm-12" label="TIPO DE PRODUTO" name="PRO_TIPOITEM" value={produto.PRO_TIPOITEM} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectTipoItem}/>
                        <PettFieldText size="col-lg-4 col-md-12 col-sm-12" label="FCI" name="PRO_FCI" value={produto.PRO_FCI} set={setProduto} readOnly={disableFields} disabled={disableFields} length="40"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CEST" name="PRO_CEST" value={produto.PRO_CEST} set={setProduto} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="GÊNERO" name="PRO_GENERO" value={produto.PRO_GENERO} set={setProduto} readOnly={disableFields} disabled={disableFields} options={selectGenero}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CFOP" name="PRO_CFOP" value={produto.PRO_CFOP} set={setProduto} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CFOP FORA" name="PRO_CFOPFORA" value={produto.PRO_CFOPFORA} set={setProduto} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldLoc size="col-lg-1 col-md-9 col-sm-10" label="CLASS. FISCAL" name="PRO_CLASSFISCAL" value={produto.PRO_CLASSFISCAL} set={setProduto} onClick={() => setShowClassFiscalLoc(true)} onBlur={(e) => localizar(CLASSFISCAL, e.target.value, setProduto, mapaClassFiscal)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-9 col-sm-10" label="DESCRIÇÃO CLASS. FISCAL" name="CLF_DESCRICAO" value={produto.CLF_DESCRICAO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-2" label="EXCEÇÃO" name="PRO_EXCECAO" value={String(produto.PRO_EXCECAO)} readOnly disabled/>
                        <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="OBSERVAÇÕES" name="PRO_OBSERVACOES" value={produto.PRO_OBSERVACOES} set={setProduto} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                    <strong>Descrição do produto para a loja virtual.</strong>                        
                    <div className="row g-1 mb-3 pt-1">
                        <div className="col-lg-12 col-md-12 col-sm-12 mb-5">
                            <PettEditor label="" name="PRO_DESCRICAO" value={produto.PRO_DESCRICAO} set={setProduto} readOnly={disableFields} disabled={disableFields} altura={400} colarComoTexto/>
                        </div>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="PRO_CODIGO" value={pesquisa.PRO_CODIGO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="NOME" name="PRO_NOME" value={pesquisa.PRO_NOME} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="LOCALIZAÇÃO" name="PRO_LOCALIZACAO" value={pesquisa.PRO_LOCALIZACAO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="GRUPO" name="PRO_GRUPO" value={pesquisa.GRU_DESCRICAO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="FAMILIA" name="PRO_FAMILIA" value={pesquisa.FAM_DESCRICAO} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="PRO_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="PRO_CODIGOBARRAS" header="Cód. Barras" sortable ></PettColumn>
                    <PettColumn field="PRO_CODIGOFAB" header="Cód. Fab." sortable ></PettColumn>
                    <PettColumn field="PRO_NOME" header="Nome" sortable ></PettColumn>
                    <PettColumn field="PRO_UNIDADE" header="Und." align="center" alignHeader="center" ></PettColumn>
                    <PettColumn field="PRO_ESTOQUEATUAL" header="Estoque Atual" align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="PRO_PRECOVENDA" header="Preço Venda" body={(rowData) => formatarMoeda(rowData,'PRO_PRECOVENDA')} align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="PRO_STATUS" header="Status" body={(rowData) => formatarAtivoInativo(rowData,'PRO_STATUS')} align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="GRU_DESCRICAO" header="Grupo" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>           
        <Rodape />
        <ProdutosAlmoxarifados produto={produto} showModal={showEstoque} onCloseModal={() => setShowEstoque(false)}/>
        {/* <ProdutosAlmoxarifados produto={produto} showModal={showEstoque} /> */}
        <ClassFiscalLoc showModal={showClassFiscalLoc} onCloseModal={(data) => { selecionar(data, setProduto, mapaClassFiscal); setShowClassFiscalLoc(false); }}/>
        <FamiliasLoc showModal={showFamiliasLoc} onCloseModal={(data) => { selecionar(data, setProduto, mapaFamilias); setShowFamiliasLoc(false); }}/>
        <FornecedoresLoc showModal={showFornecedoresLoc} onCloseModal={(data) => { selecionar(data, setProduto, mapaFornecedores); setShowFornecedoresLoc(false); }}/>
        <GruposLoc showModal={showGruposLoc} onCloseModal={(data) => { selecionar(data, setProduto, mapaGrupos); setShowGruposLoc(false); }}/>
        <IcmsLoc showModal={showIcmsLoc} onCloseModal={(data) => { selecionar(data, setProduto, mapaIcms); setShowIcmsLoc(false); }}/>
        <IpiLoc showModal={showIpiLoc} onCloseModal={(data) => { selecionar(data, setProduto, mapaIpi); setShowIpiLoc(false); }}/>
        <IssLoc showModal={showIssLoc} onCloseModal={(data) => { selecionar(data, setProduto, mapaIss); setShowIssLoc(false); }}/>
        <PisCofinsLoc showModal={showPisLoc} onCloseModal={(data) => { selecionar(data, setProduto, mapaPis); setShowPisLoc(false); }}/>
        <PisCofinsLoc showModal={showCofinsLoc} onCloseModal={(data) => { selecionar(data, setProduto, mapaCofins); setShowCofinsLoc(false); }}/>
        <ProdutosLoc showModal={showProdutosLoc} onCloseModal={(data) => { selecionar(data, setProduto, mapaProdutos); setShowProdutosLoc(false); }}/>
        <MarcasLoc showModal={showMarcasLoc} onCloseModal={(data) => { selecionar(data, setProduto, mapaMarcas); setShowMarcasLoc(false); }}/>
        <UnidadesLoc showModal={showUnidadesLoc} onCloseModal={(data) => { selecionar(data, setProduto, mapaUnidades); setShowUnidadesLoc(false); }}/>
    </>
}

export default Produtos;