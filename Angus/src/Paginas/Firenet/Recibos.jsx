import { useContext, useEffect, useState } from 'react';
import extenso from 'extenso';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor.jsx';
import BarraOpcoes from '../../Componentes/BarraOpcoes.jsx';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ClientesLoc from '../../Componentes/Localizadores/ClientesLoc';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { primeiroDiaMesPassado, ultimoDiaMesSeguinte, formatarDataFb, formatarDataStr, formatarMoeda, hoje, formatarDataStr2 } from '../../Funcoes';

function Recibos() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/recibos', 'Recibos listar', logout);
    const [ pesquisa, setPesquisa ] = useState({
        datainicial: formatarDataFb(primeiroDiaMesPassado()),
        datafinal: formatarDataFb(ultimoDiaMesSeguinte()),
        RCB_CNOME: '',
        RCB_CODIGO: '',
        RCB_DATA: '',
        RCB_SNOME: '',
    });
    const formatarDadosFB = (dados) => {
        let valor=String(recibo.RCB_VALOR).replace('.', ',');
        return {
            ...dados,
            RCB_VALOREXTENSO: extenso(valor, {  mode: 'currency' }) ?? '',
        };
    };
     
    const vazio = {
        RCB_CBAIRRO: '',
        RCB_CCEP: '',
        RCB_CCIDADE: '',
        RCB_CCNPJCPF: '',
        RCB_CENDERECO: '',
        RCB_CFONE1: '',
        RCB_CNOME: '',
        RCB_CNUMERO: '',
        RCB_CODIGO: '',
        RCB_DATA: hoje,
        RCB_DTATUALIZACAO: hoje,
        RCB_PROVENIENTE: '',
        RCB_SBAIRRO: '',
        RCB_SCEP: '',
        RCB_SCIDADE: '',
        RCB_SCNPJCPF: '',
        RCB_SENDERECO: '',
        RCB_SFONE1: '',
        RCB_SNOME: '',
        RCB_SNUMERO: '',
        RCB_USUARIO: '',
        RCB_VALOR: '0',
        RCB_VALOREXTENSO: '',
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
        registro: recibo,
        salvar,
        setOperacao,
        setRegistro: setRecibo,
        visualizar,
    } = useTabela('firenet/recibos', vazio, 'RCB_CODIGO', 'RCB_CNOME', formatarDadosFB);
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(recibo, () => listar(pesquisa, true));
    const hEditar    = () => editar(recibo);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = {
            datainicial: formatarDataFb(primeiroDiaMesPassado()),
            datafinal: formatarDataFb(ultimoDiaMesSeguinte()),
            RCB_CNOME: '',
            RCB_CODIGO: '',
            RCB_DATA: '',
            RCB_SNOME: '',
        };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const [ showSacadosLoc, setShowSacadosLoc ] = useState(false);
    const [ showCedentesLoc, setShowCedentesLoc ] = useState(false);
    
        // let valor=String(recibo.RCB_VALOR).replace('.', ',');
        // formData.set('RCB_VALOREXTENSO', extenso(valor, {  mode: 'currency' }) || '');

    const onRowSelect = (event) => {
        visualizar(event.RCB_CODIGO);
    };

    function cedentesLocClose(event, data) {
        if (data.LOC===true) {
            setRecibo({
                ...recibo, 
                RCB_CBAIRRO: data.CLI_BAIRRO, 
                RCB_CCEP: data.CLI_CEP, 
                RCB_CCIDADE: data.CLI_CIDADE, 
                RCB_CCNPJCPF: data.CLI_TIPOPESSOA==='J'?data.CLI_CNPJ:data.CLI_CPF,
                RCB_CENDERECO: data.CLI_ENDERECO,
                RCB_CFONE1: data.CLI_FONE1,
                RCB_CNOME: data.CLI_NOME,
                RCB_CNUMERO: data.CLI_NUMERO
            });
        }
        setShowCedentesLoc(false);
    }

    function sacadosLocClose(event, data) {
        if (data.LOC===true) {
            setRecibo({
                ...recibo, 
                RCB_SBAIRRO: data.CLI_BAIRRO, 
                RCB_SCEP: data.CLI_CEP, 
                RCB_SCIDADE: data.CLI_CIDADE, 
                RCB_SCNPJCPF: data.CLI_TIPOPESSOA==='J'?data.CLI_CNPJ:data.CLI_CPF,
                RCB_SENDERECO: data.CLI_ENDERECO,
                RCB_SFONE1: data.CLI_FONE1,
                RCB_SNOME: data.CLI_NOME,
                RCB_SNUMERO: data.CLI_NUMERO
            });
        }
        setShowSacadosLoc(false);
    }

    function inverter() {
        const atual=recibo;
        setRecibo((prev) => ({
            ...prev, 
            RCB_SBAIRRO: atual.RCB_CBAIRRO, 
            RCB_SCEP: atual.RCB_CCEP, 
            RCB_SCIDADE: atual.RCB_CCIDADE, 
            RCB_SCNPJCPF: atual.RCB_CCNPJCPF,
            RCB_SENDERECO: atual.RCB_CENDERECO,
            RCB_SFONE1: atual.RCB_CFONE1,
            RCB_SNOME: atual.RCB_CNOME,
            RCB_SNUMERO: atual.RCB_CNUMERO
        }));
        
        setRecibo((prev) => ({
            ...prev, 
            RCB_CBAIRRO: atual.RCB_SBAIRRO, 
            RCB_CCEP: atual.RCB_SCEP, 
            RCB_CCIDADE: atual.RCB_SCIDADE, 
            RCB_CCNPJCPF: atual.RCB_SCNPJCPF,
            RCB_CENDERECO: atual.RCB_SENDERECO,
            RCB_CFONE1: atual.RCB_SFONE1,
            RCB_CNOME: atual.RCB_SNOME,
            RCB_CNUMERO: atual.RCB_SNUMERO
        }));
        
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Recibos" linkBack="/">
            <PettButton caption="Localizar" icone="search"      click={hListagem}                        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"        click={inserir}                          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"       click={hExcluir}                         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"      click={hEditar}                          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark"   click={hSalvar}                          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"      click={cancelarInsercao}                 condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"      click={cancelarEdicao}                   condicional={operacao==="atualizar"}/>
            <PettButton caption="Sacado"    icone="search"      click={ () => setShowSacadosLoc(true) }  condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cedente"   icone="search"      click={ () => setShowCedentesLoc(true) } condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Inverter"  icone="synchronize" click={ () => inverter() }               condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <AtualizadoPor usuario={recibo.RCB_USUARIO} data={recibo.RCB_DTATUALIZACAO} hora={recibo.RCB_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                        <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="RCB_CODIGO" value={recibo.RCB_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="RCB_DATA" value={formatarDataStr(recibo.RCB_DATA)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA ATUALIZAÇÃO" name="RCB_DTATUALIZACAO" value={formatarDataStr(recibo.RCB_DTATUALIZACAO)} readOnly disabled/>
                    </div>
                    <div className="row g-1 mb-3">
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-12" label="VALOR" name="RCB_VALOR" value={recibo.RCB_VALOR} set={setRecibo} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-10 col-md-8 col-sm-12" label="VALOR POR EXTENSO" name="RCB_VALOREXTENSO" value={recibo.RCB_VALOREXTENSO} readOnly disabled/>
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="PROVENIENTE" name="RCB_PROVENIENTE" value={recibo.RCB_PROVENIENTE} set={setRecibo} readOnly={disableFields} disabled={disableFields}/>
                    </div>

                    <strong>Dados do Sacado</strong>
                    <div className="row g-1 mb-3 pt-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-12" label="CPf/CNPJ" name="RCB_SCNPJCPF" value={recibo.RCB_SCNPJCPF} set={setRecibo} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-10 col-md-9 col-sm-12" label="NOME" name="RCB_SNOME" value={recibo.RCB_SNOME} set={setRecibo} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-12" label="CEP" name="RCB_SCEP" value={recibo.RCB_SCEP} set={setRecibo} readOnly={disableFields} disabled={disableFields} mask="99999-999"/>
                        <PettFieldText size="col-lg-8 col-md-6 col-sm-12" label="ENDEREÇO" name="RCB_SENDERECO" value={recibo.RCB_SENDERECO} set={setRecibo} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-12" label="NÚMERO" name="RCB_SNUMERO" value={recibo.RCB_SNUMERO} set={setRecibo} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="BAIRRO" name="RCB_SBAIRRO" value={recibo.RCB_SBAIRRO} set={setRecibo} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="CIDADE" name="RCB_SCIDADE" value={recibo.RCB_SCIDADE} set={setRecibo} readOnly={disableFields} disabled={disableFields} />
                    </div>

                    <strong>Dados do Cedente</strong>
                    <div className="row g-1 mb-5 pt-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-12" label="CPf/CNPJ" name="RCB_CCNPJCPF" value={recibo.RCB_CCNPJCPF} set={setRecibo} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-10 col-md-9 col-sm-12" label="NOME" name="RCB_CNOME" value={recibo.RCB_CNOME} set={setRecibo} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldMask size="col-lg-2 col-md-3 col-sm-12" label="CEP" name="RCB_CCEP" value={recibo.RCB_CCEP} set={setRecibo} readOnly={disableFields} disabled={disableFields} mask="99999-999"/>
                        <PettFieldText size="col-lg-8 col-md-6 col-sm-12" label="ENDEREÇO" name="RCB_CENDERECO" value={recibo.RCB_CENDERECO} set={setRecibo} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-12" label="NÚMERO" name="RCB_CNUMERO" value={recibo.RCB_CNUMERO} set={setRecibo} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="BAIRRO" name="RCB_CBAIRRO" value={recibo.RCB_CBAIRRO} set={setRecibo} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="CIDADE" name="RCB_CCIDADE" value={recibo.RCB_CCIDADE} set={setRecibo} readOnly={disableFields} disabled={disableFields} />
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-3 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="CÓDIGO" name="RCB_CODIGO" value={pesquisa.RCB_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldDate size="col-lg-2 col-md-2 col-sm-6" label="DATA INICIAL" name="datainicial" value={pesquisa.datainicial} set={setPesquisa}/>
                    <PettFieldDate size="col-lg-2 col-md-2 col-sm-6" label="DATA FINAL" name="datafinal" value={pesquisa.datafinal} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-6" label="SACADO" name="RCB_SNOME" value={pesquisa.RCB_SNOME} set={setPesquisa} />
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="CEDENTE" name="RCB_CNOME" value={pesquisa.RCB_CNOME} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="RCB_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="RCB_DATA" header="Data" body={(rowData) => formatarDataStr2(rowData,'RCB_DATA')} sortable ></PettColumn>
                    <PettColumn field="RCB_SNOME" header="Sacado" sortable></PettColumn>
                    <PettColumn field="RCB_CNOME" header="Cedente" sortable></PettColumn>
                    <PettColumn field="RCB_VALOR" header="Valor" body={(rowData) => formatarMoeda(rowData,'RCB_VALOR')} sortable align="right" alignHeader="right"></PettColumn>
                    <PettColumn field="RCB_PROVENIENTE" header="Proveniente"></PettColumn>
                    {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
        <ClientesLoc showModal={showSacadosLoc} onCloseModal={sacadosLocClose}/>
        <ClientesLoc showModal={showCedentesLoc} onCloseModal={cedentesLocClose}/>
    </>
}

export default Recibos;