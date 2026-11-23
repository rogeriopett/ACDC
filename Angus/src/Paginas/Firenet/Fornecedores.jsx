import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldCep } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
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
import ColunaCentral from '../../Componentes/ColunaCentral';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { selectAtivoInativo, selectEstadoCivil, selectPessoa } from '../../Combox';
import { formatarDataStr, formatarDataFb, tratarCatch, getFoneMask } from '../../Funcoes';
import { useLocalizar, ATIVIDADES } from '../../Hooks/useLocalizar';

const mapaAtividades = { FOR_ATIVIDADE: 'ATI_CODIGO', ATI_DESCRICAO: 'ATI_DESCRICAO' };

function Fornecedores() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/fornecedores', 'Fornecedores listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ FOR_CNPJ: '', FOR_CODIGO: '', FOR_CONTATO: '', FOR_CPF: '', FOR_EMAIL: '', FOR_NOME: '' });
    const [ valoresPadrao, setValoresPadrao ] = useState({});
    const formatarDadosFB = (dados) => {
        return {
            ...dados,
            FOR_DTNASC: formatarDataFb(fornecedor.FOR_DTNASC) || ''
        };
    };
    const vazio = {
        FOR_AFE: '',
        FOR_ALVARA: '',
        FOR_ALVARASANITARIO: '',
        FOR_ATIVIDADE: 0,
        FOR_BAIRRO: '',
        FOR_CEP: '',
        FOR_CIDADE: '',
        FOR_CIDADECODIGO: 0,
        FOR_CNPJ: '00.000.000/0000-00',
        FOR_CODIGO: '',
        FOR_COMPLEMENTO: '',
        FOR_CONTATO: '',
        FOR_CPF: '000.000.000-00',
        FOR_DTATUALIZACAO: '',
        FOR_DTCADASTRO: '',
        FOR_DTNASC: '01/01/1900',
        FOR_EMAIL: '',
        FOR_EMAIL2: '',
        FOR_ENDERECO: '',
        FOR_ESTADO: '',
        FOR_ESTADOCIVIL: 'NAO TEM',
        FOR_ESTADOCODIGO: 0,
        FOR_FANTASIA: '',
        FOR_FONE0800: '',
        FOR_FONE1: '(00) 00000-0000',
        FOR_FONE2: '(00) 00000-0000',
        FOR_FONE3: '(00) 00000-0000',
        FOR_FRETE: '9 - SEM FRETE',
        FOR_IE: '',
        FOR_MSN: '',
        FOR_NEXTEL: '',
        FOR_NOME: '',
        FOR_NUMERO: '',
        FOR_OBSERVACOES: '',
        FOR_PAIS: '',
        FOR_PAISCODIGO: 1058,
        FOR_REGPROFISSIONAL: '',
        FOR_RG: '',
        FOR_SITE: '',
        FOR_STATUS: 'A',
        FOR_TIPOPESSOA: 'J',
        FOR_USUARIO: '',
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
        registro: fornecedor,
        salvar,
        setOperacao,
        setRegistro: setFornecedor,
        visualizar,
    } = useTabela('firenet/fornecedores', vazio, 'FOR_CODIGO', 'FOR_NOME', formatarDadosFB);
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(fornecedor, () => listar(pesquisa, true));
    const hEditar    = () => editar(fornecedor);
    const hListagem  = () => setOperacao('listar');
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
            const response = await Api.post('firenet/fornecedores',formData);
            if (response.data.erro==="S") throw response;
            setValoresPadrao({
                ...vazio, 
                FOR_ATIVIDADE: valoresPadrao.PAR_CLI_ATIVIDADE || 1,
                FOR_CIDADECODIGO: 0,
                FOR_ESTADOCIVIL: 'NAO TEM',
                FOR_ESTADOCODIGO: 0,
                FOR_PAIS: 'BRASIL',
                FOR_PAISCODIGO: 1058,
                FOR_STATUS: 'A',
                FOR_TIPOPESSOA: 'J',
            });
        } catch (error) {
            tratarCatch('Fornecedores getValoresPadrao',error,logout);
        }
    }

    function reset() {
        const pesquisaVazia = { FOR_CNPJ: '', FOR_CODIGO: '', FOR_CONTATO: '', FOR_CPF: '', FOR_EMAIL: '', FOR_NOME: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const [ showAtividadesLoc, setShowAtividadesLoc ] = useState(false);
   
    const onRowSelect = (event) => {
        visualizar(event.FOR_CODIGO);
    };

    function anexos() {
        PettMensagem.info('Ooops!','Esta função estará disponível em breve.');
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Fornecedores" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}                    condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={() => inserir(valoresPadrao)} condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}                     condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}                      condicional={operacao==="visualizar"}/>
            <PettButton caption="Anexos"    icone="attach"    click={ () => anexos() }             condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}                      condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao}             condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}               condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={fornecedor.FOR_USUARIO} data={fornecedor.FOR_DTATUALIZACAO} hora={fornecedor.FOR_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregando}/>
                <PettIf condicional={!carregando}>
                    <div className="row mb-3 g-1">
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="CÓDIGO" name="FOR_CODIGO" value={fornecedor.FOR_CODIGO} readOnly disabled/>
                        <PettFieldMask size="col-lg-3 col-md-3 col-sm-6" label="CNPJ" name="FOR_CNPJ" value={fornecedor.FOR_CNPJ} set={setFornecedor} readOnly={disableFields} disabled={disableFields} mask="99.999.999/9999-99"/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="INSC. ESTADUAL" name="FOR_IE" value={fornecedor.FOR_IE} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldMask size="col-lg-3 col-md-3 col-sm-6" label="CPF" name="FOR_CPF" value={fornecedor.FOR_CPF} set={setFornecedor} readOnly={disableFields} disabled={disableFields} mask="999.999.999-99"/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="RG" name="FOR_RG" value={fornecedor.FOR_RG} set={setFornecedor} readOnly={disableFields} disabled={disableFields} lenght="20"/>
                        <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="TIPO PESSOA" name="FOR_TIPOPESSOA" value={fornecedor.FOR_TIPOPESSOA} set={setFornecedor} readOnly={disableFields} disabled={disableFields} options={selectPessoa}/>
                        <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="STATUS" name="FOR_STATUS" value={fornecedor.FOR_STATUS} set={setFornecedor} readOnly={disableFields} disabled={disableFields} options={selectAtivoInativo}/>
                        <PettFieldDate size="col-lg-3 col-md-3 col-sm-6" label="DATA NASC." name="FOR_DTNASC" value={fornecedor.FOR_DTNASC} set={setFornecedor} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="NOME" name="FOR_NOME" value={fornecedor.FOR_NOME} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="80"/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="FANTASIA" name="FOR_FANTASIA" value={fornecedor.FOR_FANTASIA} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="80"/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="CONTATO" name="FOR_CONTATO" value={fornecedor.FOR_CONTATO} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="80"/>
                        <PettFieldDrop size="col-lg-4 col-md-6 col-sm-6" label="ESTADO CIVIL" name="FOR_ESTADOCIVIL" value={fornecedor.FOR_ESTADOCIVIL} set={setFornecedor} readOnly={disableFields} disabled={disableFields} options={selectEstadoCivil}/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="FONE 01" name="FOR_FONE1" value={fornecedor.FOR_FONE1} set={setFornecedor} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(fornecedor.FOR_FONE1)}/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="FONE 02" name="FOR_FONE2" value={fornecedor.FOR_FONE2} set={setFornecedor} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(fornecedor.FOR_FONE2)}/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="FONE 03" name="FOR_FONE3" value={fornecedor.FOR_FONE3} set={setFornecedor} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(fornecedor.FOR_FONE3)}/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="FONE 0800" name="FOR_FONE0800" value={fornecedor.FOR_FONE0800} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="EMAIL" name="FOR_EMAIL" value={fornecedor.FOR_EMAIL} set={setFornecedor} upper={false} readOnly={disableFields} disabled={disableFields} length="100"/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="EMAIL 2" name="FOR_EMAIL2" value={fornecedor.FOR_EMAIL2} set={setFornecedor} upper={false} readOnly={disableFields} disabled={disableFields} length="100"/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="MSN/SKYPE" name="FOR_MSN" value={fornecedor.FOR_MSN} set={setFornecedor} upper={false} readOnly={disableFields} disabled={disableFields} length="100"/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="SITE" name="FOR_SITE" value={fornecedor.FOR_SITE} set={setFornecedor} upper={false} readOnly={disableFields} disabled={disableFields} length="100"/>
                    </div>

                    <strong>Endereço</strong>
                    <div className="row mb-3 g-1">
                        <PettFieldCep size="col-lg-2 col-md-3 col-sm-3" label="CEP" name="FOR_CEP" value={fornecedor.FOR_CEP} set={setFornecedor} bairro="FOR_BAIRRO" cidade="FOR_CIDADE" cidadeCodigo="FOR_CIDADECODIGO" endereco="FOR_ENDERECO" estado="FOR_ESTADO" estadoCodigo="FOR_ESTADOCODIGO" readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-9 col-sm-9" label="ENDEREÇO" name="FOR_ENDERECO" value={fornecedor.FOR_ENDERECO} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="100"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-3" label="NÚMERO" name="FOR_NUMERO" value={fornecedor.FOR_NUMERO} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="15"/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-9" label="COMPLEMENTO" name="FOR_COMPLEMENTO" value={fornecedor.FOR_COMPLEMENTO} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="80"/>
                        <PettFieldText size="col-lg-4 col-md-5 col-sm-9" label="BAIRRO" name="FOR_BAIRRO" value={fornecedor.FOR_BAIRRO} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="50"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-3" label="CIDADE CÓDIGO" name="FOR_CIDADECODIGO" value={fornecedor.FOR_CIDADECODIGO} set={setFornecedor} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-4 col-md-5 col-sm-9" label="CIDADE" name="FOR_CIDADE" value={fornecedor.FOR_CIDADE} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="50"/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-3" label="ESTADO CÓDIGO" name="FOR_ESTADOCODIGO" value={fornecedor.FOR_ESTADOCODIGO} set={setFornecedor} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-3" label="ESTADO" name="FOR_ESTADO" value={fornecedor.FOR_ESTADO} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="2"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-3" label="PAÍS CÓDIGO" name="FOR_PAISCODIGO" value={fornecedor.FOR_PAISCODIGO} set={setFornecedor} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-4 col-md-9 col-sm-6" label="PAÍS" name="FOR_PAIS" value={fornecedor.FOR_PAIS} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="80"/>
                    </div>

                    <strong>Outras Informações</strong>
                    <div className="row mb-5 g-1">
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="DATA CADASTRO" name="FOR_DTCADASTRO" value={formatarDataStr(fornecedor.FOR_DTCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="ALVARÁ" name="FOR_ALVARA" value={fornecedor.FOR_ALVARA} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="ALVARÁ SANITÁRIO" name="FOR_ALVARASANITARIO" value={fornecedor.FOR_ALVARASANITARIO} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="CÓDIGO AFE" name="FOR_AFE" value={fornecedor.FOR_AFE} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="REG. PROFISSIONAL" name="FOR_REGPROFISSIONAL" value={fornecedor.FOR_REGPROFISSIONAL} set={setFornecedor} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="ATIVIDADE" name="FOR_ATIVIDADE" value={fornecedor.FOR_ATIVIDADE} set={setFornecedor} onClick={() => setShowAtividadesLoc(true)} onBlur={(e) => localizar(ATIVIDADES, e.target.value, setFornecedor, mapaAtividades)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO ATIVIDADE" name="ATI_DESCRICAO" value={fornecedor.ATI_DESCRICAO} readOnly disabled/>
                        <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="OBSERVAÇÕES" name="FOR_OBSERVACOES" value={fornecedor.FOR_OBSERVACOES} set={setFornecedor} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 gx-1 ">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CÓDIGO" name="FOR_CODIGO" value={pesquisa.FOR_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="NOME" name="FOR_NOME" value={pesquisa.FOR_NOME} set={setPesquisa} />
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="EMAIL" name="FOR_EMAIL" value={pesquisa.FOR_EMAIL} set={setPesquisa} upper={false} />
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CONTATO" name="FOR_CONTATO" value={pesquisa.FOR_CONTATO} set={setPesquisa} />
                    <PettFieldMask size="col-lg-2 col-md-2 col-sm-6" label="CNPJ" name="FOR_CNPJ" value={pesquisa.FOR_CNPJ} set={setPesquisa} mask="?99.999.999/9999-99"/>
                    <PettFieldMask size="col-lg-2 col-md-2 col-sm-6" label="CPF" name="FOR_CPF" value={pesquisa.FOR_CPF} set={setPesquisa} mask="?999.999.999-99"/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="FOR_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="FOR_NOME" header="Nome" sortable ></PettColumn>
                    <PettColumn field="FOR_FANTASIA" header="Nome Fantasia" sortable ></PettColumn>
                    <PettColumn field="FOR_CONTATO" header="Contato" sortable ></PettColumn>
                    <PettColumn field="FOR_FONE1" header="Fone 1" sortable ></PettColumn>
                    <PettColumn field="FOR_FONE2" header="Fone 2" sortable ></PettColumn>
                    <PettColumn field="FOR_FONE3" header="Fone 3" sortable ></PettColumn>
                    <PettColumn field="FOR_CPF" header="CPF" sortable ></PettColumn>
                    <PettColumn field="FOR_CNPJ" header="CNPJ" sortable ></PettColumn>
                    <PettColumn field="FOR_EMAIL" header="Email" sortable ></PettColumn>
                    {/* <Column body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></Column> */}
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>       
        <Rodape />
        <AtividadesLoc showModal={showAtividadesLoc} onCloseModal={(data) => { selecionar(data, setFornecedor, mapaAtividades); setShowAtividadesLoc(false); }}/>
    </>
}

export default Fornecedores;