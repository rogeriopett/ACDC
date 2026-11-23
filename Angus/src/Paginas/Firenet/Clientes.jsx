import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldCep } from 'pett-componentes';
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

import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtividadesLoc from '../../Componentes/Localizadores/AtividadesLoc';
import AtualizadoPor from '../../Componentes/AtualizadoPor';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import CondicoesLoc from '../../Componentes/Localizadores/CondicoesLoc';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Contatos from './Contatos';
import FornecedoresLoc from '../../Componentes/Localizadores/FornecedoresLoc';
import Loading from '../../Componentes/Loading';
import LocaisLoc from '../../Componentes/Localizadores/LocaisLoc';
import MailingsLoc from '../../Componentes/Localizadores/MailingsLoc';
import PettDialog from '../../Componentes/PettDialog';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import TaxasLoc from '../../Componentes/Localizadores/TaxasLoc';
import VendedoresLoc from '../../Componentes/Localizadores/VendedoresLoc';
import { formatarDataFb, formatarDataStr, getFoneMask, tratarCatch } from '../../Funcoes';
import { selectAtivoInativo, selectDiaVencimento, selectEnquadramento, selectEstadoCivil, selectFrete, selectPessoa, selectTipoConsumidor, selectSimNao } from '../../Combox';
// import { localizarTaxa, selecionarTaxa } from '../../Localizar';

import { useLocalizar, ATIVIDADES, CONDICOES, FORNECEDORES, LOCAIS, MAILINGS, TAXAS, VENDEDORES } from '../../Hooks/useLocalizar';

const mapaAtividades      = { CLI_ATIVIDADE: 'ATI_CODIGO', ATI_DESCRICAO: 'ATI_DESCRICAO' };
const mapaCondicoes       = { CLI_CONDICAO: 'CPG_CODIGO', CPG_DESCRICAO: 'CPG_DESCRICAO' };
const mapaLocaisEstuda    = { CLI_LOCALESTUDA: 'LCA_CODIGO', LCA_DESCRICAO: 'LCA_DESCRICAO' };
const mapaLocaisTrabalho  = { CLI_LOCALTRABALHO: 'LCA_CODIGO', LCA_DESCRICAO: 'LCA_DESCRICAO' };
const mapaMailings        = { CLI_MAILING: 'MAI_CODIGO', MAI_DESCRICAO: 'MAI_DESCRICAO' };
const mapaTaxas           = { CLI_TAXA: 'TAX_CODIGO', TAX_DESCRICAO: 'TAX_DESCRICAO' };
const mapaVendedores      = { CLI_VENDEDOR: 'VEN_CODIGO', VEN_NOME: 'VEN_NOME' };
const mapaTelevendas      = { CLI_TELEVENDA: 'VEN_CODIGO', VEN_NOME1: 'VEN_NOME' };
const mapaTransportadoras = { CLI_TRANSPORTADORA: 'FOR_CODIGO', FOR_NOME: 'FOR_NOME' };

function Clientes() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/clientes', 'Clientes listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ CLI_CNPJ: '', CLI_CODIGO: '', CLI_CONTATO: '', CLI_CPF: '', CLI_EMAIL: '', CLI_NOME: '' });
    const [ valoresPadrao, setValoresPadrao ] = useState({});
    const formatarDadosFB = (dados) => {
        return {
            ...dados,
            CLI_CONJUGEDTNASC: formatarDataFb(cliente.CLI_CONJUFEDTNASC), //Converte data de DD/MM/AAAA para AAAA-MM-DD
            CLI_DTNASC: formatarDataFb(cliente.CLI_DTNASC), 
            CLI_DTOBITO: formatarDataFb(cliente.CLI_DTOBITO),
        };
    };
    
    const vazio = {
        CLI_AFE: '',
        CLI_ALVARA: '',
        CLI_ALVARASANITARIO: '',
        CLI_ATIVIDADE: 0,
        CLI_ATUALIZAR: 'S',
        CLI_BAIRRO: '',
        CLI_BAIRROCOB: '',
        CLI_BLOQUEARVENDA: 'N',
        CLI_CEP: '',
        CLI_CEPCOB: '',
        CLI_CIDADE: '',
        CLI_CIDADECOB: '',
        CLI_CIDADECODIGO: 0,
        CLI_CIDADECODIGOCOB: 0,
        CLI_CLASSIFICACAO: 'A',
        CLI_CNPJ: '',
        CLI_CNPJCOB: '',
        CLI_CNS: '',
        CLI_CODIGO: '',
        CLI_COMPLEMENTO: '',
        CLI_COMPLEMENTOCOB: '',
        CLI_CONDICAO: 1,
        CLI_CONJUGE: '',
        CLI_CONJUGECPF: '',
        CLI_CONJUGEDTNASC: '',
        CLI_CONJUGERG: '',
        CLI_CONTATO: '',
        CLI_CONTRIBUINTEICMS: '9 - NAO CONTRIBUINTE',
        CLI_CPF: '',
        CLI_DESCONTO: 0,
        CLI_DIACOBRANCA: '0',
        CLI_DTATUALIZACAO: '',
        CLI_DTCADASTRO: '',
        CLI_DTNASC: '',
        CLI_DTOBITO: '',
        CLI_EMAIL: '',
        CLI_EMAIL2: '',
        CLI_ENDERECO: '',
        CLI_ENDERECOCOB: '',
        CLI_ENQUADRAMENTO: 'SIMPLES NACIONAL',
        CLI_ESTADO: '',
        CLI_ESTADOCIVIL: 'NAO TEM',
        CLI_ESTADOCOB: '',
        CLI_ESTADOCODIGO: 0,
        CLI_ESTADOCODIGOCOB: 0,
        CLI_FANTASIA: '',
        CLI_FONE0800: '',
        CLI_FONE1: '',
        CLI_FONE2: '',
        CLI_FONE3: '',
        CLI_FRETE: '9 - SEM FRETE',
        CLI_IDESTRANGEIRO: '',
        CLI_IE: '',
        CLI_IECOB: '',
        CLI_IM: '',
        CLI_LIMITECREDITO: '10000',
        CLI_LOCALESTUDA: 0,
        CLI_LOCALTRABALHO: 0,
        CLI_MAE: '',
        CLI_MAEEMAIL: '',
        CLI_MAEFONE: '',
        CLI_MAILING: 0,
        CLI_MENSALISTA: 'N',
        CLI_MSN: '',
        CLI_NATURALIDADE: '',
        CLI_NEXTEL: '',
        CLI_NOME: '',
        CLI_NUMERO: '',
        CLI_NUMEROCOB: '',
        CLI_OBITO: 'N',
        CLI_OBSERVACOES: '',
        CLI_ORIENTACAOCOBRANCA: '',
        CLI_PAI: '',
        CLI_PAIEMAIL: '',
        CLI_PAIFONE: '',
        CLI_PAIS: '',
        CLI_PAISCOB: '',
        CLI_PAISCODIGO: 1058,
        CLI_PAISCODIGOCOB: 1058,
        CLI_PASSWORD: '',
        CLI_PONTOS: '',
        CLI_PROFISSAO: '',
        CLI_RECEBEAVISOS: 'S',
        CLI_REGPROFISSIONAL: '',
        CLI_RG: '',
        CLI_SAME: '',
        CLI_SETOR: '',
        CLI_SEXO: '-',
        CLI_SITE: '',
        CLI_STATUS: 'A',
        CLI_SUFRAMA: '',
        CLI_TABELAPRECO: 'V',
        CLI_TAXA: 0,
        CLI_TELEVENDA: 0,
        CLI_TIPOCLIENTE: 'C',
        CLI_TIPOCONSUMIDOR: '0 - NORMAL',
        CLI_TIPOPESSOA: 'J',
        CLI_TRANSPORTADORA: 0,
        CLI_USUARIO: '',
        CLI_VENDEDOR: 0,
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
        registro: cliente,
        salvar,
        setOperacao,
        setRegistro: setCliente,
        visualizar,
    } = useTabela('firenet/clientes', vazio, 'CLI_CODIGO', 'CLI_NOME', formatarDadosFB);
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(cliente, () => listar(pesquisa, true));
    const hEditar    = () => editar(cliente);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    const [ showAtividadesLoc, setShowAtividadesLoc ] = useState(false);
    const [ showCondicoesLoc, setShowCondicoesLoc ] = useState(false);
    const [ showMailingsLoc, setShowMailingsLoc ] = useState(false);
    const [ showLocaisTrabalhoLoc, setShowLocaisTrabalhoLoc ] = useState(false);
    const [ showLocaisEstudaLoc, setShowLocaisEstudaLoc ] = useState(false);
    const [ showVendedoresLoc, setShowVendedoresLoc ] = useState(false);
    const [ showTaxasLoc, setShowTaxasLoc ] = useState(false);
    const [ showTelevendasLoc, setShowTelevendasLoc ] = useState(false);
    const [ showTransportadorasLoc, setShowTransportadorasLoc ] = useState(false);
    const [ showAlterarLimite, setShowAlterarLimite ] = useState(false);
    const [ showAlterarReposicoes, setShowAlterarReposicoes ] = useState(false);
    const [ showContatos, setShowContatos ] = useState(false);

    const selectClassificacao = [
        { value: "A", label: "A" },
        { value: "B", label: "B" },
        { value: "C", label: "C" },
        { value: "D", label: "D" },
    ];

    const selectContribuinteICMS = [
        { value: "1 - CONTRIBUINTE ICMS", label: "1 - CONTRIBUINTE ICMS" },
        { value: "2 - CONTRIBUINTE ISENTO DE INSCRICAO", label: "2 - CONTRIBUINTE ISENTO DE INSCRICAO" },
        { value: "9 - NAO CONTRIBUINTE", label: "9 - NAO CONTRIBUINTE" }
    ];
  
    const selectSexo = [
        { value: "-", label: "-" },
        { value: "M", label: "MASCULINO" },
        { value: "F", label: "FEMININO" }
    ];

    const selectTabelaPreco = [
        { value: "V", label: "V" },
        { value: "1", label: "1" },
        { value: "2", label: "2" },
        { value: "3", label: "3" },
        { value: "4", label: "4" },
        { value: "5", label: "5" },
        { value: "6", label: "6" },
    ];

    const selectTipoCliente = [
        { value: "C", label: "CLIENTE" },
        { value: "P", label: "PROSPECT" }
    ];

    useEffect(() => {
        listar(pesquisa, true);  
        getValoresPadrao();
    },[]);

    async function getValoresPadrao() {
        const formData = new FormData();
        formData.set('op','parametros');
        formData.set('empresa',empresaSelecionada.value);
        try {
            const response = await Api.post('firenet/clientes',formData);
            if (response.data.erro==="S") throw response;
            setValoresPadrao({
                ...vazio, 
                CLI_ATIVIDADE: response.data.msg.PAR_CLI_ATIVIDADE || 1,
                CLI_BLOQUEARVENDA: response.data.msg.PAR_BLOQUEARVENDA || 'N',
                CLI_CONDICAO: response.data.msg.PAR_CONDICAOPADRAO || 1,
                CLI_FRETE: response.data.msg.PAR_FRETEPORCONTA || '9 - SEM FRETE',
                CLI_LIMITECREDITO: response.data.msg.PAR_LIMITECREDITO || '10000',
                CLI_LOCALESTUDA: response.data.msg.PAR_LOCALESTUDAPADRAO || 1,
                CLI_LOCALTRABALHO: response.data.msg.PAR_LOCALPADRAO || 1,
                CLI_MAILING: response.data.msg.PAR_CLI_MAILING || 1,
                CLI_TAXA: response.data.msg.PAR_TAXAPADRAO || 1,
                CLI_TELEVENDA: response.data.msg.PAR_CLI_TELEVENDA || 1,
                CLI_TIPOCONSUMIDOR: response.data.msg.PAR_NFETIPOCONSUMIDOR || '0 - NORMAL',
                CLI_TRANSPORTADORA: response.data.msg.PAR_TRANSPORTADORAPADRAO || 1,
                CLI_VENDEDOR: response.data.msg.PAR_CLI_VENDEDOR || 1
            });
        } catch (error) {
            tratarCatch('Clientes getValoresPadrao',error,logout);
        }
    }
        
    function reset() {
        const pesquisaVazia = { CLI_CNPJ: '', CLI_CODIGO: '', CLI_CONTATO: '', CLI_CPF: '', CLI_EMAIL: '', CLI_NOME: '', };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.CLI_CODIGO);
    };

    function anexos() {
        PettMensagem.aviso('Ooops!','Esta função estará disponível em breve.');
    }

    function contatosClose() {
        setShowContatos(false);
    }
    
    async function alterarLimiteClose(resultado,valor) {
        setShowAlterarLimite(false);
        if (resultado) {
            const confirmou = await PettMensagem.confirmar('Alterar Limite?','Tem certeza que deseja alterar o limite de crédito para '+valor+'?');
            if (confirmou) {
                const formData = new FormData();
                formData.set('op','limite');
                formData.set('empresa',empresaSelecionada.value);
                formData.set('CLI_CODIGO',cliente.CLI_CODIGO || '');
                formData.set('CLI_LIMITECREDITO',valor || '');
                try {
                    const response = await Api.post('firenet/clientes',formData);
                    if (response.data.erro==='S') throw response;
                    setCliente(response.data.msg);
                } catch (error) {
                    tratarCatch('Clientes alterarLimiteClose',error,logout);
                }
            }
        }
    }

    async function alterarReposicoesClose(resultado,valor) {
        setShowAlterarReposicoes(false);
        if (resultado) {
            const confirmou = await PettMensagem.confirmar('Alterar Reposições?','Tem certeza que deseja alterar o número de reposições para '+valor+'?');
            if (confirmou) {
                const formData = new FormData();
                formData.set('op','reposicoes');
                formData.set('empresa',empresaSelecionada.value);
                formData.set('CLI_CODIGO',cliente.CLI_CODIGO || '');
                formData.set('CLI_REPOSICOES',valor || '');
                try {
                    const response = await Api.post('firenet/clientes',formData);
                    if (response.data.erro==='S') throw response;
                    setCliente(response.data.msg);
                } catch (error) {
                    tratarCatch('Clientes alterarReposicoesClose',error,logout);
                }
            }
        }
    }    
    
    async function setBloquearVenda() {
        const alterar=cliente.CLI_BLOQUEARVENDA==='S'?'NÃO':'SIM';
        const confirmou = await PettMensagem.confirmar('Bloquear/Liberar Venda?','Tem certeza que deseja alterar o campo bloquear venda para '+alterar+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','bloquear');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('CLI_CODIGO',cliente.CLI_CODIGO || '');
            try {
                const response = await Api.post('firenet/clientes',formData);
                if (response.data.erro==='S') throw response;
                setCliente(response.data.msg);
            } catch (error) {
                tratarCatch('Clientes setBloquearVenda',error,logout);
            }
        }
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Clientes" linkBack="/">
            <PettButton caption="Localizar"              icone="search"              click={hListagem}                              condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"                   icone="plus"                click={() => inserir(valoresPadrao)}           condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"                icone="minus"               click={hExcluir}                               condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"                 icone="pencil"              click={hEditar}                                condicional={operacao==="visualizar"}/>
            <PettButton caption="Anexos"                 icone="attach"              click={anexos}                                 condicional={operacao==="visualizar"}/>
            <PettButton caption="Contatos"               icone="contacts"            click={ () => setShowContatos(true) }          condicional={operacao==="visualizar"}/>
            <PettButton caption="Alterar Bloquear Venda" icone="clear_shopping_cart" click={setBloquearVenda}                       condicional={operacao==="visualizar"}/>
            <PettButton caption="Alterar Limite"         icone="us_dollar_circled"   click={ () => setShowAlterarLimite(true) }     condicional={operacao==="visualizar"}/>
            <PettButton caption="Alterar Reposições"     icone="numbers"             click={ () => setShowAlterarReposicoes(true) } condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"                 icone="checkmark"           click={hSalvar}                                condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"               icone="cancel"              click={cancelarInsercao}                       condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"               icone="cancel"              click={cancelarEdicao}                         condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={cliente.CLI_USUARIO} data={cliente.CLI_DTATUALIZACAO} hora={cliente.CLI_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <strong>Geral</strong>
                    <div className="row mb-3 pt-1 g-1">
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="CÓDIGO" name="CLI_CODIGO" value={cliente.CLI_CODIGO} readOnly disabled/>
                        <PettFieldMask size="col-lg-3 col-md-3 col-sm-6" label="CNPJ" name="CLI_CNPJ" value={String(cliente.CLI_CNPJ)} set={setCliente} readOnly={disableFields} disabled={disableFields} mask="99.999.999/9999-99"/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="INSC. ESTADUAL" name="CLI_IE" value={cliente.CLI_IE} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMask size="col-lg-3 col-md-3 col-sm-6" label="CPF" name="CLI_CPF" value={String(cliente.CLI_CPF)} set={setCliente} readOnly={disableFields} disabled={disableFields} mask="999.999.999-99"/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="RG" name="CLI_RG" value={cliente.CLI_RG} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="TIPO PESSOA" name="CLI_TIPOPESSOA" value={cliente.CLI_TIPOPESSOA} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectPessoa}/>
                        <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="STATUS" name="CLI_STATUS" value={cliente.CLI_STATUS} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectAtivoInativo}/>
                        <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="TIPO CLIENTE" name="CLI_TIPOCLIENTE" value={cliente.CLI_TIPOCLIENTE} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectTipoCliente}/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="NOME" name="CLI_NOME" value={cliente.CLI_NOME} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="FANTASIA" name="CLI_FANTASIA" value={cliente.CLI_FANTASIA} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-6" label="CONTATO" name="CLI_CONTATO" value={cliente.CLI_CONTATO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-lg-2 col-md-6 col-sm-6" label="ESTADO CIVIL" name="CLI_ESTADOCIVIL" value={cliente.CLI_ESTADOCIVIL} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectEstadoCivil}/>
                        <PettFieldDate size="col-lg-2 col-md-2 col-sm-6" label="DATA NASC." name="CLI_DTNASC" value={cliente.CLI_DTNASC} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-lg-2 col-md-1 col-sm-6" label="SEXO" name="CLI_SEXO" value={cliente.CLI_SEXO} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectSexo}/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="FONE 01" name="CLI_FONE1" value={cliente.CLI_FONE1} set={setCliente} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(cliente.CLI_FONE1)}/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="FONE 02" name="CLI_FONE2" value={cliente.CLI_FONE2} set={setCliente} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(cliente.CLI_FONE2)}/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="FONE 03" name="CLI_FONE3" value={cliente.CLI_FONE3} set={setCliente} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(cliente.CLI_FONE3)}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="FONE 0800" name="CLI_FONE0800" value={cliente.CLI_FONE0800} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ID. ESTRANGEIRO" name="CLI_IDESTRANGEIRO" value={cliente.CLI_IDESTRANGEIRO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="INSC. MUNICIPAL" name="CLI_IM" value={cliente.CLI_IM} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="SITE" name="CLI_SITE" value={cliente.CLI_SITE} set={setCliente} upper={false} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="EMAIL" name="CLI_EMAIL" value={cliente.CLI_EMAIL} set={setCliente} upper={false} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="EMAIL 2" name="CLI_EMAIL2" value={cliente.CLI_EMAIL2} set={setCliente} upper={false} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="MSN/SKYPE" name="CLI_MSN" value={cliente.CLI_MSN} set={setCliente} upper={false} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldLoc size="col-lg-1 col-md-2 col-sm-12" label="VENDEDOR" name="CLI_VENDEDOR" value={cliente.CLI_VENDEDOR} set={setCliente} onClick={() => setShowVendedoresLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, setCliente, mapaVendedores)} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-5 col-md-4 col-sm-12" label="NOME VENDEDOR" name="VEN_NOME" value={cliente.VEN_NOME} readOnly disabled/>
                        <PettFieldLoc size="col-lg-1 col-md-2 col-sm-12" label="TELEVENDA" name="CLI_TELEVENDA" value={cliente.CLI_TELEVENDA} set={setCliente} onClick={() => setShowTelevendasLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, setCliente, mapaTelevendas)} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-5 col-md-4 col-sm-12" label="NOME TELE VENDA" name="VEN_NOME1" value={cliente.VEN_NOME1} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="REPOSIÇÕES" name="CLI_REPOSICOES" value={String(cliente.CLI_REPOSICOES)} readOnly disabled/>
                    </div>

                    <strong>Dados para Faturamento</strong>
                    <div className="row mb-3 g-1 pt-1">
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="ENQUADRAMENTO" name="CLI_ENQUADRAMENTO" value={cliente.CLI_ENQUADRAMENTO} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectEnquadramento}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="CONTRIBUINTE ICMS" name="CLI_CONTRIBUINTEICMS" value={cliente.CLI_CONTRIBUINTEICMS} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectContribuinteICMS}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="TIPO CONSUMIDOR" name="CLI_TIPOCONSUMIDOR" value={cliente.CLI_TIPOCONSUMIDOR} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectTipoConsumidor}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="FRETE" name="CLI_FRETE" value={cliente.CLI_FRETE} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectFrete}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="% DESCONTO" name="CLI_DESCONTO" value={cliente.CLI_DESCONTO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="TABELA DE PREÇO" name="CLI_TABELAPRECO" value={cliente.CLI_TABELAPRECO} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectTabelaPreco}/>
                        <PettFieldDrop size="col-lg-2 col-md-2 col-sm-6" label="MENSALISTA" name="CLI_MENSALISTA" value={cliente.CLI_MENSALISTA} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-lg-2 col-md-2 col-sm-6" label="DIA COBRANÇA" name="CLI_DIACOBRANCA" value={String(cliente.CLI_DIACOBRANCA)} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectDiaVencimento}/>
                        <PettFieldDrop size="col-lg-2 col-md-2 col-sm-6" label="BLOQUEAR VENDA" name="CLI_BLOQUEARVENDA" value={cliente.CLI_BLOQUEARVENDA} readOnly disabled options={selectSimNao}/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-2" label="CONDIÇÃO" name="CLI_CONDICAO" value={cliente.CLI_CONDICAO} set={setCliente} onClick={() => setShowCondicoesLoc(true)} onBlur={(e) => localizar(CONDICOES, e.target.value, setCliente, mapaCondicoes)} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-4" label="DESCRIÇÃO CONDIÇÃO" name="CPG_DESCRICAO" value={cliente.CPG_DESCRICAO} readOnly disabled/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-2" label="TRANSPORTADORA" name="CLI_TRANSPORTADORA" value={cliente.CLI_TRANSPORTADORA} set={setCliente} onClick={() => setShowTransportadorasLoc(true)} onBlur={(e) => localizar(FORNECEDORES, e.target.value, setCliente, mapaTransportadoras)} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-4" label="NOME TRANSPORTADORA" name="FOR_NOME" value={cliente.FOR_NOME} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-6" label="LIMITE CRÉDITO" name="CLI_LIMITECREDITO" value={cliente.CLI_LIMITECREDITO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PONTOS" name="CLI_PONTOS" value={cliente.CLI_PONTOS} readOnly disabled/>
                    </div>

                    <strong>Endereço</strong>
                    <div className="row mb-3 g-1 pt-1">
                        <PettFieldCep size="col-lg-2 col-md-3 col-sm-3" label="CEP" name="CLI_CEP" value={cliente.CLI_CEP} set={setCliente} bairro="CLI_BAIRRO" cidade="CLI_CIDADE" cidadeCodigo="CLI_CIDADECODIGO" endereco="CLI_ENDERECO" estado="CLI_ESTADO" estadoCodigo="CLI_ESTADOCODIGO" readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-5 col-md-9 col-sm-9" label="ENDEREÇO" name="CLI_ENDERECO" value={cliente.CLI_ENDERECO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-3" label="NÚMERO" name="CLI_NUMERO" value={cliente.CLI_NUMERO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-4 col-sm-4" label="COMPLEMENTO" name="CLI_COMPLEMENTO" value={cliente.CLI_COMPLEMENTO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-5 col-sm-5" label="BAIRRO" name="CLI_BAIRRO" value={cliente.CLI_BAIRRO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-3" label="CIDADE CÓDIGO" name="CLI_CIDADECODIGO" value={cliente.CLI_CIDADECODIGO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-5 col-md-5 col-sm-9" label="CIDADE" name="CLI_CIDADE" value={cliente.CLI_CIDADE} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-3" label="ESTADO CÓDIGO" name="CLI_ESTADOCODIGO" value={cliente.CLI_ESTADOCODIGO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-3" label="ESTADO" name="CLI_ESTADO" value={cliente.CLI_ESTADO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-3" label="PAÍS CÓDIGO" name="CLI_PAISCODIGO" value={cliente.CLI_PAISCODIGO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-5 col-sm-3" label="PAÍS" name="CLI_PAIS" value={cliente.CLI_PAIS} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                    </div>

                    <strong>Outras Informações</strong>
                    <div className="row mb-5 g-1 pt-1">
                        <PettFieldText size="col-xl-2 col-lg-2 col-md-3 col-sm-3" label="DATA CADASTRO" name="CLI_DTCADASTRO" value={formatarDataStr(cliente.CLI_DTCADASTRO)} readOnly disabled/>                   
                        <PettFieldDrop size="col-xl-2 col-lg-2 col-md-3 col-sm-3" label="RECEBE AVISOS" name="CLI_RECEBEAVISOS" value={cliente.CLI_RECEBEAVISOS} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDrop size="col-xl-2 col-lg-2 col-md-3 col-sm-3" label="CLASSIFICAÇÃO" name="CLI_CLASSIFICACAO" value={cliente.CLI_CLASSIFICACAO} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectClassificacao}/>
                        <PettFieldText size="col-xl-2 col-lg-2 col-md-3 col-sm-3" label="SETOR" name="CLI_SETOR" value={cliente.CLI_SETOR} set={setCliente} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-xl-2 col-lg-2 col-md-3 col-sm-3" label="ALVARÁ" name="CLI_ALVARA" value={cliente.CLI_ALVARA} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-xl-2 col-lg-2 col-md-3 col-sm-3" label="ALVARÁ SANITÁRIO" name="CLI_ALVARASANITARIO" value={cliente.CLI_ALVARASANITARIO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-xl-2 col-lg-2 col-md-3 col-sm-3" label="NÚMERO SAME" name="CLI_SAME" value={cliente.CLI_SAME} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-xl-2 col-lg-2 col-md-3 col-sm-3" label="NÚMERO CNS" name="CLI_CNS" value={cliente.CLI_CNS} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-xl-2 col-lg-2 col-md-3 col-sm-3" label="CÓDIGO SUFRAMA" name="CLI_SUFRAMA" value={cliente.CLI_SUFRAMA} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-xl-2 col-lg-2 col-md-3 col-sm-3" label="CÓDIGO AFE" name="CLI_AFE" value={cliente.CLI_AFE} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-xl-2 col-lg-2 col-md-3 col-sm-3" label="ÓBITO" name="CLI_OBITO" value={cliente.CLI_OBITO} set={setCliente} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldDate size="col-xl-2 col-lg-2 col-md-3 col-sm-3" label="DATA ÓBITO" name="CLI_DTOBITO" value={cliente.CLI_DTOBITO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldLoc size="col-lg-1 col-md-6 col-sm-12" label="ATIVIDADE" name="CLI_ATIVIDADE" value={cliente.CLI_ATIVIDADE} set={setCliente} onClick={() => setShowAtividadesLoc(true)} onBlur={(e) => localizar(ATIVIDADES, e.target.value, setCliente, mapaAtividades)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-6 col-sm-12" label="DESCRIÇÃO ATIVIDADE" name="ATI_DESCRICAO" value={cliente.ATI_DESCRICAO} readOnly disabled/>                       
                        <PettFieldLoc size="col-lg-1 col-md-6 col-sm-12" label="TAXA" name="CLI_TAXA" value={cliente.CLI_TAXA} set={setCliente} onClick={() => setShowTaxasLoc(true)} onBlur={(e) => localizar(TAXAS, e.target.value, setCliente, mapaTaxas)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-6 col-sm-12" label="DESCRIÇÃO TAXA" name="TAX_DESCRICAO" value={cliente.TAX_DESCRICAO} readOnly disabled/>                       
                        <PettFieldLoc size="col-lg-1 col-md-6 col-sm-12" label="MAILING" name="CLI_MAILING" value={cliente.CLI_MAILING} set={setCliente} onClick={() => setShowMailingsLoc(true)} onBlur={(e) => localizar(MAILINGS, e.target.value, setCliente, mapaMailings)} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-3 col-md-6 col-sm-12" label="DESCRIÇÃO MAILING" name="MAI_DESCRICAO" value={cliente.MAI_DESCRICAO} readOnly disabled/>
                        <PettFieldLoc size="col-lg-1 col-md-6 col-sm-12" label="LOCAL DE TRABALHO" name="CLI_LOCALTRABALHO" value={cliente.CLI_LOCALTRABALHO} set={setCliente} onClick={() => setShowLocaisTrabalhoLoc(true)} onBlur={(e) => localizar(LOCAIS, e.target.value, setCliente, mapaLocaisTrabalho)} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-3 col-md-6 col-sm-12" label="NOME LOCAL DE TRABALHO" name="LCA_DESCRICAO" value={cliente.LCA_DESCRICAO} readOnly disabled/>
                        <PettFieldLoc size="col-lg-1 col-md-6 col-sm-12" label="LOCAL DE ESTUDO" name="CLI_LOCALESTUDA" value={cliente.CLI_LOCALESTUDA} set={setCliente} onClick={() => setShowLocaisEstudaLoc(true)} onBlur={(e) => localizar(LOCAIS, e.target.value, setCliente, mapaLocaisEstuda)} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-3 col-md-6 col-sm-12" label="NOME LOCAL DE ESTUDO" name="LCA_DESCRICAO1" value={cliente.LCA_DESCRICAO1} readOnly disabled/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-6" label="NATURALIDADE" name="CLI_NATURALIDADE" value={cliente.CLI_NATURALIDADE} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-6 col-sm-6" label="PROFISSÃO" name="CLI_PROFISSAO" value={cliente.CLI_PROFISSAO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-1 col-md-6 col-sm-6" label="REG. PROFISSIONAL" name="CLI_REGPROFISSIONAL" value={cliente.CLI_REGPROFISSIONAL} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-6 col-sm-6" label="NOME CÔNJUGE" name="CLI_CONJUGE" value={cliente.CLI_CONJUGE} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-lg-1 col-md-2 col-sm-4" label="DT. NASC. CÔNJUGE" name="CLI_CONJUGEDTNASC" value={cliente.CLI_CONJUGEDTNASC} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMask size="col-lg-2 col-md-2 col-sm-4" label="CPF CÔNJUGE" name="CLI_CONJUGECPF" value={cliente.CLI_CONJUGECPF} set={setCliente} readOnly={disableFields} disabled={disableFields} mask="999.999.999-99"/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-4" label="RG CÔNJUGE" name="CLI_CONJUGERG" value={cliente.CLI_CONJUGERG} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-5 col-sm-5" label="NOME MÃE" name="CLI_MAE" value={cliente.CLI_MAE} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-4 col-sm-5" label="EMAIL MÃE" name="CLI_MAEEMAIL" value={cliente.CLI_MAEEMAIL} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-2" label="FONE MÃE" name="CLI_MAEFONE" value={cliente.CLI_MAEFONE} set={setCliente} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(cliente.CLI_MAEFONE)}/>
                        <PettFieldText size="col-lg-4 col-md-5 col-sm-5" label="NOME PAI" name="CLI_PAI" value={cliente.CLI_PAI} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-4 col-sm-5" label="EMAIL PAI" name="CLI_PAIEMAIL" value={cliente.CLI_PAIEMAIL} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-2" label="FONE PAI" name="CLI_PAIFONE" value={cliente.CLI_PAIFONE} set={setCliente} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(cliente.CLI_PAIFONE)}/>
                        <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="OBSERVAÇÕES" name="CLI_OBSERVACOES" value={cliente.CLI_OBSERVACOES} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="CLI_CODIGO" value={pesquisa.CLI_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldText size="col-lg-2 col-md-4 col-sm-12" label="NOME" name="CLI_NOME" value={pesquisa.CLI_NOME} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-12" label="CONTATO" name="CLI_CONTATO" value={pesquisa.CLI_CONTATO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-12" label="EMAIL" name="CLI_EMAIL" value={pesquisa.CLI_EMAIL} set={setPesquisa} upper={false}/>
                    <PettFieldMask size="col-lg-2 col-md-3 col-sm-12" label="CPF" name="CLI_CPF" value={pesquisa.CLI_CPF} set={setPesquisa} mask="?999.999.999-99"/>
                    <PettFieldMask size="col-lg-2 col-md-3 col-sm-12" label="CNPJ" name="CLI_CNPJ" value={pesquisa.CLI_CNPJ} set={setPesquisa} mask="?99.999.999/9999-99"/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar}/>
                    <PettButton caption="Limpar" icone="reset" click={reset}/>
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="CLI_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="CLI_NOME" header="Nome" sortable ></PettColumn>
                    <PettColumn field="CLI_FANTASIA" header="Nome Fantasia" sortable ></PettColumn>
                    <PettColumn field="CLI_CONTATO" header="Contato" sortable ></PettColumn>
                    <PettColumn field="CLI_FONE1" header="Fone 1" sortable ></PettColumn>
                    <PettColumn field="CLI_FONE2" header="Fone 2" sortable ></PettColumn>
                    <PettColumn field="CLI_FONE3" header="Fone 3" sortable ></PettColumn>
                    <PettColumn field="CLI_REPOSICOES" header="Rep." sortable ></PettColumn>
                    <PettColumn field="CLI_CPF" header="CPF" sortable ></PettColumn>
                    <PettColumn field="CLI_CNPJ" header="CNPJ" sortable ></PettColumn>
                    <PettColumn field="CLI_EMAIL" header="Email" sortable ></PettColumn>
                    {/* <Column body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></Column> */}
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>       

        <Rodape />
        <AtividadesLoc   showModal={showAtividadesLoc}      onCloseModal={(data) => { selecionar(data, setCliente, mapaAtividades);      setShowAtividadesLoc(false); }}/>
        <CondicoesLoc    showModal={showCondicoesLoc}       onCloseModal={(data) => { selecionar(data, setCliente, mapaCondicoes);       setShowCondicoesLoc(false); }}/>
        <LocaisLoc       showModal={showLocaisTrabalhoLoc}  onCloseModal={(data) => { selecionar(data, setCliente, mapaLocaisTrabalho);  setShowLocaisTrabalhoLoc(false); }}/>
        <LocaisLoc       showModal={showLocaisEstudaLoc}    onCloseModal={(data) => { selecionar(data, setCliente, mapaLocaisEstuda);    setShowLocaisEstudaLoc(false); }}/>
        <FornecedoresLoc showModal={showTransportadorasLoc} onCloseModal={(data) => { selecionar(data, setCliente, mapaTransportadoras); setShowTransportadorasLoc(false); }}/>
        <MailingsLoc     showModal={showMailingsLoc}        onCloseModal={(data) => { selecionar(data, setCliente, mapaMailings);        setShowMailingsLoc(false); }}/>
        <TaxasLoc        showModal={showTaxasLoc}           onCloseModal={(data) => { selecionar(data, setCliente, mapaTaxas);           setShowTaxasLoc(false); }}/>
        <VendedoresLoc   showModal={showVendedoresLoc}      onCloseModal={(data) => { selecionar(data, setCliente, mapaVendedores);      setShowVendedoresLoc(false); }}/>
        <VendedoresLoc   showModal={showTelevendasLoc}      onCloseModal={(data) => { selecionar(data, setCliente, mapaTelevendas);      setShowTelevendasLoc(false); }}/>
        <Contatos        showModal={showContatos}           onCloseModal={contatosClose} cliente={cliente}/>
        <PettDialog      showModal={showAlterarLimite} titulo="Alterar Limite de Crédito" label="DIGITE O VALOR DESEJADO" onClose={alterarLimiteClose} value={cliente.CLI_LIMITECREDITO}/>
        <PettDialog      showModal={showAlterarReposicoes} titulo="Alterar Reposições" label="DIGITE O VALOR DESEJADO" onClose={alterarReposicoesClose} value={cliente.CLI_REPOSICOES} size="sm"/>
    </>
}

export default Clientes;