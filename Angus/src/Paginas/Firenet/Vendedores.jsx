import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldCep } from 'pett-componentes';
import { PettFieldColor } from 'pett-componentes';
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
import AtualizadoPor from '../../Componentes/AtualizadoPor';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import EmailsContasLoc from '../../Componentes/Localizadores/EmailsContasLoc';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { selectAtivoInativo, selectEstadoCivil, selectPessoa, selectSimNao } from '../../Combox';
import { getFoneMask, hexToDecimalColor, formatarDataFb, tratarCatch } from '../../Funcoes';
import { useLocalizar, EMAILSCONTAS } from '../../Hooks/useLocalizar';

const mapaEmailsContas = { VEN_EMAILCONTA: 'EMC_CODIGO', EMC_NOME: 'EMC_NOME' };

function Vendedores() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/vendedores', 'Vendedores listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ VEN_CODIGO: '', VEN_EMAIL: '', VEN_NOME: '' });
    const formatarDadosFB = (dados) => {
        return {
            ...dados,
            VEN_DTNASC: formatarDataFb(vendedor.VEN_DTNASC), 
            VEN_COR: hexToDecimalColor(vendedor.VEN_COR || ''),
        };
    };
    const vazio = {
        VEN_ATUALIZAR: '',
        VEN_BAIRRO: '',
        VEN_CEP: '',
        VEN_CIDADE: 'JARAGUA DO SUL',
        VEN_CIDADECODIGO: 4208906,
        VEN_CNPJ: '',
        VEN_CODIGO: '',
        VEN_COMISSAO: '0',
        VEN_COMISSAOTIPO: 'FATURAMENTO',
        VEN_COMPLEMENTO: '',
        VEN_CONTATO: '',
        VEN_COR: '',
        VEN_CPF: '',
        VEN_DTATUALIZACAO: '',
        VEN_DTCADASTRO: '',
        VEN_DTNASC: '',
        VEN_EMAIL: '',
        VEN_EMAILCONTA: '',
        VEN_ENDERECO: '',
        VEN_ESTADO: '',
        VEN_ESTADOCIVIL: 'NAO TEM',
        VEN_FONE1: '',
        VEN_FONE2: '',
        VEN_FONE3: '',
        VEN_IE: '',
        VEN_MOSTRARAGENDA: 'S',
        VEN_NOME: '',
        VEN_NUMERO: '',
        VEN_OBSERVACOES: '',
        VEN_REGPROFISSIONAL: '',
        VEN_RG: '',
        VEN_SALARIOBASE: '0',
        VEN_SALDOATUAL: '0',
        VEN_SALDOHORAS: '0',
        VEN_SITE: '',
        VEN_STATUS: 'A',
        VEN_TIPOPESSOA: 'J',
        VEN_USUARIO: '',
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
        registro: vendedor,
        salvar,
        setOperacao,
        setRegistro: setVendedor,
        visualizar,
    } = useTabela('firenet/vendedores', vazio, 'VEN_CODIGO', 'VEN_NOME', formatarDadosFB);
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(vendedor, () => listar(pesquisa, true));
    const hEditar    = () => editar(vendedor);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    const [ showEmailsContasLoc, setShowEmailsContasLoc ] = useState(false);
    
    const selectComissaoTipo = [
        { value: "FATURAMENTO", label: "FATURAMENTO" },
        { value: "RECEBIMENTO", label: "RECEBIMENTO" }
    ];
   
    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { VEN_CODIGO: '', VEN_EMAIL: '', VEN_NOME: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.VEN_CODIGO);
    };

    //funcoes do campo conta de email
    async function emailsContasLocalizar(e) {
        const formData = new FormData();
        formData.set('op','localizar');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('EMC_CODIGO',e.target.value);
        try {
            const response = await Api.post('firenet/emailscontas',formData);
            if (response.data.erro==='S') throw response;
            const novoVendedor = {...vendedor, VEN_EMAILCONTA: e.target.value, EMC_NOME: response.data.msg.EMC_NOME };
            setVendedor(novoVendedor);
        } catch(error) {
            const novoVendedor = {...vendedor, VEN_EMAILCONTA: '', EMC_NOME: '' };
            setVendedor(novoVendedor);
            tratarCatch('Vendedores emailsContasLocalizar',error,logout);
        }
    }

    function emailsContasLocClose(event, data) {
        if (data.LOC===true) {
            setVendedor({...vendedor, VEN_EMAILCONTA: data.EMC_CODIGO, EMC_NOME: data.EMC_NOME });
        }
        setShowEmailsContasLoc(false);
    }

    function anexos() {
        PettMensagem.info('Opaaa!','Função ainda não disponível.');
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Vendedores" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Anexos"    icone="attach"    click={anexos }          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={vendedor.VEN_USUARIO} data={vendedor.VEN_DTATUALIZACAO} hora={vendedor.VEN_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row mb-3 g-1">
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="CÓDIGO" name="VEN_CODIGO" value={vendedor.VEN_CODIGO} readOnly disabled/>
                        <PettFieldMask size="col-lg-3 col-md-3 col-sm-6" label="CPF" name="VEN_CPF" value={vendedor.VEN_CPF} set={setVendedor} readOnly={disableFields} disabled={disableFields} mask="999.999.999-99"/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="RG" name="VEN_RG" value={vendedor.VEN_RG} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldMask size="col-lg-3 col-md-3 col-sm-6" label="CNPJ" name="VEN_CNPJ" value={vendedor.VEN_CNPJ} set={setVendedor} readOnly={disableFields} disabled={disableFields} mask="99.999.999/9999-99"/>
                        <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="INSC. ESTADUAL" name="VEN_IE" value={vendedor.VEN_IE} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="TIPO PESSOA" name="VEN_TIPOPESSOA" value={vendedor.VEN_TIPOPESSOA} set={setVendedor} readOnly={disableFields} disabled={disableFields} options={selectPessoa}/>
                        <PettFieldDate size="col-lg-3 col-md-3 col-sm-6" label="DATA NASC." name="VEN_DTNASC" value={vendedor.VEN_DTNASC} set={setVendedor} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-lg-3 col-md-3 col-sm-6" label="STATUS" name="VEN_STATUS" value={vendedor.VEN_STATUS} set={setVendedor} readOnly={disableFields} disabled={disableFields} options={selectAtivoInativo}/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="NOME" name="VEN_NOME" value={vendedor.VEN_NOME} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="80"/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="CONTATO" name="VEN_CONTATO" value={vendedor.VEN_CONTATO} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="80"/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="EMAIL" name="VEN_EMAIL" value={vendedor.VEN_EMAIL} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="100"/>
                        <PettFieldDrop size="col-lg-3 col-md-6 col-sm-6" label="ESTADO CIVIL" name="VEN_ESTADOCIVIL" value={vendedor.VEN_ESTADOCIVIL} set={setVendedor} readOnly={disableFields} disabled={disableFields} options={selectEstadoCivil}/>
                        <PettFieldMask size="col-lg-3 col-md-4 col-sm-6" label="FONE 01" name="VEN_FONE1" value={vendedor.VEN_FONE1} set={setVendedor} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(vendedor.VEN_FONE1)}/>
                        <PettFieldMask size="col-lg-3 col-md-4 col-sm-6" label="FONE 02" name="VEN_FONE2" value={vendedor.VEN_FONE2} set={setVendedor} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(vendedor.VEN_FONE2)}/>
                        <PettFieldMask size="col-lg-3 col-md-4 col-sm-6" label="FONE 03" name="VEN_FONE3" value={vendedor.VEN_FONE3} set={setVendedor} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(vendedor.VEN_FONE3)}/>
                        <PettFieldDrop size="col-lg-2 col-md-4 col-sm-6" label="MOSTRAR AGENDA" name="VEN_MOSTRARAGENDA" value={vendedor.VEN_MOSTRARAGENDA} set={setVendedor} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldColor size="col-lg-2 col-md-4 col-sm-6" label="COR" name="VEN_COR" value={vendedor.VEN_COR} set={setVendedor} readOnly={disableFields} disabled={disableFields} decimal/>
                        <PettFieldMoney size="col-lg-2 col-md-4 col-sm-6" label="SALÁRIO BASE" name="VEN_SALARIOBASE" value={vendedor.VEN_SALARIOBASE} set={setVendedor} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMoney size="col-lg-2 col-md-4 col-sm-6" label="SALDO ATUAL" name="VEN_SALDOATUAL" value={vendedor.VEN_SALDOATUAL} set={setVendedor} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6" label="SALDO HORAS" name="VEN_SALDOHORAS" value={vendedor.VEN_SALDOHORAS} set={setVendedor} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6" label="REG. PROFISSIONAL" name="VEN_REGPROFISSIONAL" value={vendedor.VEN_REGPROFISSIONAL} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="20"/>
                        <PettFieldLoc size="col-lg-1 col-md-12 col-sm-12" label="CONTA DE EMAIL" name="VEN_EMAILCONTA" value={vendedor.VEN_EMAILCONTA} set={setVendedor} onClick={() => setShowEmailsContasLoc(true)} onBlur={(e) => localizar(EMAILSCONTAS, e.target.value, setVendedor, mapaEmailsContas)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-3 col-md-12 col-sm-12" label="NOME CONTA DE EMAIL" name="EMC_NOME" value={vendedor.EMC_NOME} readOnly disabled/>
                        <PettFieldText size="col-lg-4 col-md-12 col-sm-12" label="SITE" name="VEN_SITE" value={vendedor.VEN_SITE} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="100"/>
                        <PettFieldDrop size="col-lg-2 col-md-4 col-sm-6" label="COMISSÃO TIPO" name="VEN_COMISSAOTIPO" value={vendedor.VEN_COMISSAOTIPO} set={setVendedor} readOnly={disableFields} disabled={disableFields} options={selectComissaoTipo}/>
                        <PettFieldFloat size="col-lg-2 col-md-4 col-sm-6" label="COMISSÃO" name="VEN_COMISSAO" value={vendedor.VEN_COMISSAO} set={setVendedor} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6" label="DATA CADASTRO" name="VEN_DTCADASTRO" value={vendedor.VEN_DTCADASTRO} set={setVendedor} readOnly disabled />
                        <PettFieldText size="col-lg-2 col-md-4 col-sm-6" label="SALDO ATUAL" name="VEN_SALDOATUAL" value={vendedor.VEN_SALDOATUAL} set={setVendedor} readOnly disabled />
                        <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="OBSERVAÇÕES" name="VEN_OBSERVACOES" value={vendedor.VEN_OBSERVACOES} set={setVendedor} readOnly={disableFields} disabled={disableFields} />
                    </div>

                    <strong>Endereço</strong>
                    <div className="row mb-5 g-1">
                        <PettFieldCep size="col-lg-2 col-md-3 col-sm-3" label="CEP" name="VEN_CEP" value={vendedor.VEN_CEP} set={setVendedor} bairro="VEN_BAIRRO" cidade="VEN_CIDADE" cidadeCodigo="VEN_CIDADECODIGO" endereco="VEN_ENDERECO" estado="VEN_ESTADO" estadoCodigo="VEN_ESTADOCODIGO" readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-9 col-sm-9" label="ENDEREÇO" name="VEN_ENDERECO" value={vendedor.VEN_ENDERECO} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="100"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-3" label="NÚMERO" name="VEN_NUMERO" value={vendedor.VEN_NUMERO} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="15"/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-9" label="COMPLEMENTO" name="VEN_COMPLEMENTO" value={vendedor.VEN_COMPLEMENTO} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="80"/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-12" label="CIDADE CÓDIGO" name="VEN_CIDADECODIGO" value={vendedor.VEN_CIDADECODIGO} set={setVendedor} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="CIDADE" name="VEN_CIDADE" value={vendedor.VEN_CIDADE} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="50"/>
                        <PettFieldText size="col-lg-4 col-md-6 col-sm-6" label="BAIRRO" name="VEN_BAIRRO" value={vendedor.VEN_BAIRRO} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="50"/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="ESTADO CÓDIGO" name="VEN_ESTADOCODIGO" value={vendedor.VEN_ESTADOCODIGO} set={setVendedor} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="ESTADO" name="VEN_ESTADO" value={vendedor.VEN_ESTADO} set={setVendedor} readOnly={disableFields} disabled={disableFields} length="2"/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="VEN_CODIGO" value={pesquisa.VEN_CODIGO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="NOME" name="VEN_NOME" value={pesquisa.VEN_NOME} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="EMAIL" name="VEN_EMAIL" value={pesquisa.VEN_EMAIL} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="VEN_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="VEN_CPF" header="CPF" sortable ></PettColumn>
                    <PettColumn field="VEN_NOME" header="Nome" sortable ></PettColumn>
                    <PettColumn field="VEN_COMISSAOTIPO" header="Tipo Comissão" sortable ></PettColumn>
                    <PettColumn field="VEN_EMAIL" header="Email" sortable ></PettColumn>
                    <PettColumn field="VEN_FONE1" header="Fone 1" sortable ></PettColumn>
                    <PettColumn field="VEN_FONE2" header="Fone 2" sortable ></PettColumn>
                    <PettColumn field="VEN_FONE3" header="Fone 3" sortable ></PettColumn>
                    <PettColumn field="VEN_CNPJ" header="CNPJ" sortable ></PettColumn>
                    {/* <Column body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></Column> */}
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
        <EmailsContasLoc showModal={showEmailsContasLoc} onCloseModal={(data) => { selecionar(data, setVendedor, mapaEmailsContas); setShowEmailsContasLoc(false); }}/>
    </>
}

export default Vendedores;