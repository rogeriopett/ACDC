import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
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
import Loading from '../../Componentes/Loading';
import MetasConfig from './MetasConfig';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import VendedoresLoc from '../../Componentes/Localizadores/VendedoresLoc';
import { formatarDataFb, formatarDataStr, formatarDataStr2, formatarMoeda, hoje, primeiroDiaMes, tratarCatch, ultimoDiaMes } from '../../Funcoes';
import { useLocalizar, VENDEDORES } from '../../Hooks/useLocalizar';

const mapaVendedores = { MET_VENDEDOR: 'VEN_CODIGO', VEN_NOME: 'VEN_NOME' };

function Metas() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/metas', 'Metas listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ MET_CODIGO: '', MET_STATUS: 'T', MET_VENDEDOR: '', VEN_NOME: '' });
    const vazio = { 
        MET_CODIGO: '',
        MET_COMISSAO: 0,
        MET_COMISSAOTIPO: 'RECEBIMENTO',
        MET_DTFIM: formatarDataFb(ultimoDiaMes()),
        MET_DTINICIO: formatarDataFb(primeiroDiaMes()),
        MET_DTCADASTRO: hoje,
        MET_SALARIOBASE: 0,
        MET_STATUS: 'A',
        MET_METAVALOR: 0,
        MET_VENDEDOR: '',
    };

    const formatarDadosFB = (dados) => {
        return {
            ...dados,
            MET_DTFIM: formatarDataFb(meta.MET_DTFIM), //Converte data de DD/MM/AAAA para AAAA-MM-DD
            MET_DTINICIO: formatarDataFb(meta.MET_DTINICIO), 
        };
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
        registro: meta,
        salvar,
        setOperacao,
        setRegistro: setMeta,
        visualizar,
    } = useTabela('firenet/metas', vazio, 'MET_CODIGO', 'VEN_NOME', formatarDadosFB);
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(meta, () => listar(pesquisa, true));
    const hEditar    = () => editar(meta);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { MET_CODIGO: '', MET_STATUS: 'T', MET_VENDEDOR: '', VEN_NOME: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const [ showMetasConfig, setShowMetasConfig ] = useState(false);
    const [ showVendedoresLoc, setShowVendedoresLoc ] = useState(false);

    const selectStatus = [
        { value: "A", label: "ABERTA" },
        { value: "B", label: "BAIXADA" }
    ];

    const selectStatusPesquisa = [
        { value: "T", label: "TODAS" },
        { value: "A", label: "ABERTAS" },
        { value: "B", label: "BAIXADAS" }
    ];

    const onRowSelect = (event) => {
        visualizar(event.MET_CODIGO);
    };

    const bodyStatus = (rowData) => {
        return <>
            <PettIf condicional={rowData.MET_STATUS==='A'}>
                <span className="badge bg-primary">ABERTA</span>
            </PettIf>
            <PettIf condicional={rowData.MET_STATUS==='B'}>
                <span className="badge bg-success">BAIXADA</span>
            </PettIf>
        </>
    }

    const bodyMetaAtingida = (rowData) => {
        //if (rowData.MET_ATINGIDA > '1') {
            return <>
                <PettIf condicional={rowData.MET_STATUS==='B'}>
                    <PettIf condicional={rowData.MET_METAATINGIDA < 100}>
                        <div className="progress-stacked position-relative">
                            <div className="progress" role="progressbar" aria-label="10" aria-valuenow={rowData.MET_METAATINGIDA} aria-valuemin="0" aria-valuemax='100' style={{width: `${rowData.MET_METAATINGIDA}%`}}>
                                <div className="progress-bar bg-success"></div>
                            </div>
                            <span className="progress-text">{rowData.MET_METAATINGIDA}%</span>
                        </div>
                    </PettIf>
                    <PettIf condicional={rowData.MET_METAATINGIDA >= 100}>
                        <div className="progress-stacked position-relative">
                            <div className="progress" role="progressbar" aria-label="100" aria-valuenow="100" aria-valuemin="0" aria-valuemax={rowData.MET_METAATINGIDA} style={{width: '100%'}}>
                                <div className="progress-bar bg-success"></div>
                            </div>
                            <div className="progress" role="progressbar" aria-label="100+" aria-valuenow="30" aria-valuemin="0" aria-valuemax={rowData.MET_METAATINGIDA} style={{width: `${rowData.MET_METAATINGIDA - 100}%`}}>
                                <div className="progress-bar bg-danger"></div>
                            </div>
                            <span className="progress-text">{rowData.MET_METAATINGIDA}%</span>
                        </div>
                    </PettIf>
                </PettIf>
                <PettIf condicional={rowData.MET_STATUS==='A'}>
                    <PettIf condicional={rowData.MET_METAATINGIDA < 100}>
                        <div className="progress-stacked position-relative">
                            <div className="progress" role="progressbar" aria-label="10" aria-valuenow={rowData.MET_METAATINGIDA} aria-valuemin="0" aria-valuemax='100' style={{width: `${rowData.MET_METAATINGIDA}%`}}>
                                <div className="progress-bar progress-bar-striped progress-bar-animated bg-primary"></div>
                            </div>
                            <span className="progress-text">{rowData.MET_METAATINGIDA}%</span>
                        </div>
                    </PettIf>
                    <PettIf condicional={rowData.MET_METAATINGIDA >= 100}>
                        <div className="progress-stacked position-relative">
                            <div className="progress" role="progressbar" aria-label="100" aria-valuenow="100" aria-valuemin="0" aria-valuemax={rowData.MET_METAATINGIDA} style={{width: '100%'}}>
                                <div className="progress-bar progress-bar-striped progress-bar-animated bg-primary"></div>
                            </div>
                            <div className="progress" role="progressbar" aria-label="100+" aria-valuenow="30" aria-valuemin="0" aria-valuemax={rowData.MET_METAATINGIDA} style={{width: `${rowData.MET_METAATINGIDA - 100}%`}}>
                                <div className="progress-bar progress-bar-striped progress-bar-animated bg-danger"></div>
                            </div>
                            <span className="progress-text">{rowData.MET_METAATINGIDA}%</span>
                        </div>
                    </PettIf>
                </PettIf>
                
            </>
    }

    async function baixar() {
        const confirmou = await PettMensagem.confirmar('Baixar Meta?','Tem certeza que deseja baixar a meta '+meta.MET_CODIGO+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','baixar');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('MET_CODIGO',meta.MET_CODIGO || '');
            try {
                const response = await Api.post('firenet/metas',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!','Meta baixada com sucesso.');
                setMeta(response.data.msg);
            } catch (error) {
                tratarCatch('Meta baixar',error,logout);
            }
        }
    }

    async function reabrir() {
        const confirmou = await PettMensagem.confirmar('Reabrir Meta?','Tem certeza que deseja reabrir a meta '+meta.MET_CODIGO+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','reabrir');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('MET_CODIGO',meta.MET_CODIGO || '');
            try {
                const response = await Api.post('firenet/metas',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!','Meta reaberta com sucesso.');
                setMeta(response.data.msg);
            } catch (error) {
                tratarCatch('Meta reabrir',error,logout);
            }
        }
    }

    async function recalcular() {
        const confirmou = await PettMensagem.confirmar('Recalcular Meta?','Tem certeza que deseja recalcular a meta '+meta.MET_CODIGO+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','recalcular');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('MET_CODIGO',meta.MET_CODIGO || '');
            try {
                const response = await Api.post('firenet/metas',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!','Meta recalculada com sucesso.');
                setMeta(response.data.msg);
            } catch (error) {
                tratarCatch('Meta reabrir',error,logout);
            }
        }
    }

    //funcoes do campo vendedor
    async function vendedoresLocalizar(e) {
        const formData = new FormData();
        formData.set('op','localizar');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('VEN_CODIGO',e.target.value);
        try {
            const response = await Api.post('firenet/vendedores',formData);
            if (response.data.erro==='S') throw response;
            const novo = {...meta, 
                MET_VENDEDOR: e.target.value, 
                VEN_NOME: response.data.msg.VEN_NOME, 
                MET_COMISSAO: response.data.msg.VEN_COMISSAO, 
                MET_COMISSAOTIPO: response.data.msg.VEN_COMISSAOTIPO, 
                MET_SALARIOBASE: response.data.msg.VEN_SALARIOBASE 
            };
            setMeta(novo);
        } catch(error) {
            const novo = {...meta, MET_VENDEDOR: '', VEN_NOME: '', MET_COMISSAOTIPO: '', MET_SALARIOBASE: '' };
            setMeta(novo);
            tratarCatch('Metas vendedoresLocalizar',error,logout);
        }
    }

    function vendedoresLocClose(event, data) {
        if (data.LOC===true) {
            setMeta({...meta, 
                MET_VENDEDOR: data.VEN_CODIGO, 
                VEN_NOME: data.VEN_NOME, 
                MET_COMISSAO: data.VEN_COMISSAO, 
                MET_COMISSAOTIPO: data.VEN_COMISSAOTIPO, 
                MET_SALARIOBASE: data.VEN_SALARIOBASE 
            });
        }
        setShowVendedoresLoc(false);
    }

    function metasConfigClose(event, data) {
        setShowMetasConfig(false);
    }
    
    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Metas" linkBack="/">
            <PettButton caption="Localizar"     icone="search"      click={hListagem}                           condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"          icone="plus"        click={inserir}                             condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"       icone="minus"       click={hExcluir}                            condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"        icone="pencil"      click={hEditar}                             condicional={operacao==="visualizar"}/>
            <PettButton caption="Configurações" icone="gear"        click={ () => setShowMetasConfig(true) }    condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Recalcular"    icone="reset"       click={ () => recalcular(meta.MET_CODIGO) } condicional={operacao==="visualizar"}/>
            <PettButton caption="Reabrir"       icone="undo"        click={ () => reabrir(meta.MET_CODIGO) }    condicional={operacao==="visualizar"}/>
            <PettButton caption="Baixar"        icone="flash_green" click={ () => baixar(meta.MET_CODIGO) }     condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"        icone="checkmark"   click={hSalvar}                             condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"      icone="cancel"      click={cancelarInsercao}                    condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"      icone="cancel"      click={cancelarEdicao}                      condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={meta.MET_USUARIO} data={meta.MET_DTATUALIZACAO} hora={meta.MET_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="MET_CODIGO" value={meta.MET_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="MET_DTCADASTRO" value={formatarDataStr(meta.MET_DTCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA BAIXA" name="MET_DTBAIXA" value={formatarDataStr(meta.MET_DTBAIXA)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-6" label="STATUS" name="MET_STATUS" value={meta.MET_STATUS} readOnly disabled options={selectStatus}/>
                    </div>
                    <div className="row g-1 mb-3">
                        <PettFieldDate size="col-lg-2 col-md-3 col-sm-6" label="DATA INÍCIO" name="MET_DTINICIO" value={meta.MET_DTINICIO} set={setMeta} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-lg-2 col-md-3 col-sm-6" label="DATA FIM" name="MET_DTFIM" value={meta.MET_DTFIM} set={setMeta} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="VENDEDOR" name="MET_VENDEDOR" value={meta.MET_VENDEDOR} set={setMeta} onClick={() => setShowVendedoresLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, setMeta, mapaVendedores)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME VENDEDOR" name="VEN_NOME" value={meta.VEN_NOME} readOnly disabled/>
                    </div>

                    <strong>Bonificação por meta</strong>
                    <div className="row mb-3 g-1 pt-1">
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="SALÁRIO BASE" name="MET_SALARIOBASE" value={meta.MET_SALARIOBASE} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="META VALOR" name="MET_METAVALOR" value={meta.MET_METAVALOR} set={setMeta} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="META ATINGIDA" name="MET_METAATINGIDA" value={meta.MET_METAATINGIDA} readOnly disabled/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-4" label="BÔNUS %" name="MET_BONUSPORC" value={meta.MET_BONUSPORC} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="BÔNUS VALOR" name="MET_BONUSVALOR" value={meta.MET_BONUSVALOR} readOnly disabled/>
                    </div>

                    <strong>Bonificação por comissão</strong>
                    <div className="row mb-3 g-1 pt-1">
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="TOTAL VENDAS" name="MET_TOTALVENDAS" value={meta.MET_TOTALVENDAS} readOnly disabled/> 
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="TOTAL VENDAS COMISSIONADAS" name="MET_TOTALVENDASCOMISSIONADAS" value={meta.MET_TOTALVENDASCOMISSIONADAS} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="TOTAL LIQUIDADO" name="MET_TOTALLIQUIDADO" value={meta.MET_TOTALLIQUIDADO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-4" label="COMISSÃO TIPO" name="MET_COMISSAOTIPO" value={meta.MET_COMISSAOTIPO} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="COMISSÃO" name="MET_COMISSAO" value={meta.MET_COMISSAO} readOnly disabled/>
                        <PettFieldMoney size="col-lg-2 col-md-3 col-sm-4" label="COMISSÃO TOTAL" name="MET_TOTALCOMISSAO" value={meta.MET_TOTALCOMISSAO} readOnly disabled/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="MET_CODIGO" value={pesquisa.MET_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldDrop size="col-lg-2 col-md-2 col-sm-12" label="STATUS" name="MET_STATUS" value={pesquisa.MET_STATUS} set={setPesquisa} options={selectStatusPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="VENDEDOR" name="MET_VENDEDOR" value={pesquisa.MET_VENDEDOR} set={setPesquisa} />
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="NOME" name="VEN_NOME" value={pesquisa.VEN_NOME} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="MET_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="MET_VENDEDOR" header="Vendedor" sortable ></PettColumn>
                    <PettColumn field="VEN_NOME" header="Nome" sortable></PettColumn>
                    <PettColumn field="MET_STATUS" header="Status" body={bodyStatus} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="MET_DTINICIO" header="Início" body={(rowData) => formatarDataStr2(rowData,'MET_DTINICIO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="MET_DTFIM" header="Fim" body={(rowData) => formatarDataStr2(rowData,'MET_DTFIM')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="MET_METAVALOR" header="Valor Meta" body={(rowData) => formatarMoeda(rowData,'MET_METAVALOR')} align="right" alignHeader="right" sortable ></PettColumn>
                    <PettColumn field="MET_METAATINGIDA" header="Meta Atingida" body={bodyMetaAtingida} align="center" alignHeader="center" sortable ></PettColumn>
                    <PettColumn field="MET_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'MET_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />

        <MetasConfig showModal={showMetasConfig} onCloseModal={metasConfigClose}/>
        <VendedoresLoc showModal={showVendedoresLoc} onCloseModal={(data) => { selecionar(data, setMeta, mapaVendedores); setShowVendedoresLoc(false); }}/>
    </>
}

export default Metas;