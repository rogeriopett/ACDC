//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Trocados os PettField* locais pelos do pett-componentes (PettFieldLoc dividido em codigo + descricao).
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal do pett-componentes.
//2026.11.18 - PettMensagem local (sweetalert2) trocado pelo PettMensagem do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Rodape dos modais: btn-group trocado por d-flex gap-1 (espaco entre os botoes).
//2026.11.18 - Datas dos filtros: PettFieldMask trocado pelo PettFieldDate; enviadas em aaaa-mm-dd (filtrosParaApi do Funcoes).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
//2026.11.19 - Modais de formulario com a classe modal-campos (margem lateral menor, campos centralizados).
import React, { useState, useEffect, useContext } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { NumericFormat } from "react-number-format";

import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import { useListagem } from '../Hooks/useListagem';
import ClientesLoc from '../Componentes/ClientesLoc';
import CondicoesLoc from '../Componentes/CondicoesLoc';
import Sentinela from '../Componentes/Sentinela';
import { filtrosParaApi, formatarData, formatarDataStr, tratarCatch, primeiroDiaMes, ultimoDiaMes } from '../Funcoes';

function useFiltros(chave = "filtros_vendas") {
    const [filtros, setFiltros] = React.useState(() => {
        const armazenado = localStorage.getItem(chave);
        if (armazenado) {
            const parsed = JSON.parse(armazenado);
            return {
                ...parsed,
                dataInicial: parsed.dataInicial ? parsed.dataInicial : formatarData(primeiroDiaMes),
                dataFinal: parsed.dataFinal ? parsed.dataFinal : formatarData(ultimoDiaMes),
                // dataInicial: parsed.dataInicial ? new Date(parsed.dataInicial) : null,
                // dataFinal: parsed.dataFinal ? new Date(parsed.dataFinal) : null
            }
        }

        //o Date() retorna assim: Date Tue Sep 01 2025 00:00:00 GMT-0300 (Horário Padrão de Brasília)
        //se colocar toISOString() retorna assim: 2025-09-01T03:00:00.000Z
        //o componente Calendar precisa da data neste formato: Date Tue Sep 01 2025 00:00:00 GMT-0300 (Horário Padrão de Brasília)
        //usar new Date(filtros.dataInicial).toISOString().split('T')[0]) ao enviar para o backend.
        // const hoje = new Date();
        const dataInicial = formatarData(primeiroDiaMes);
        const dataFinal = formatarData(ultimoDiaMes);
        // const dataInicial = new Date(hoje.getFullYear(), hoje.getMonth(), 1);
        // const dataFinal = new Date(hoje.getFullYear(), hoje.getMonth() + 1, 0);
        //const dataInicial = new Date(hoje.getFullYear(), hoje.getMonth(), 1).toISOString();
        //const dataFinal = new Date(hoje.getFullYear(), hoje.getMonth() + 1, 0).toISOString();
        return { dataCampo: 'CADASTRO', dataInicial, dataFinal, status: "TODOS", viaInternet: "TODOS", pesquisa: "", vendedor: "MEUS PEDIDOS" };
    });

    React.useEffect(() => {
        localStorage.setItem(chave, JSON.stringify(filtros));
    }, [filtros, chave]);

    return [filtros, setFiltros];
}

function Vendas() {
    const [ filtros, setFiltros ] = useFiltros();
    const { logout } = useContext(AuthContext);
    const navigate = useNavigate();
    const { listagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/vendas', 'Vendas listar', logout);
    const [ venda, setVenda ] = useState({'VED_CLIENTE': '', 'VED_NOME':''});
    const [ operacao, setOperacao ] = useState('listar');
    const [ disableFields, setDisableFields ] = useState(false);    
    const [ showModal, setShowModal ] = useState(false); //para novo pedido.
    const [ showModalFiltros, setShowModalFiltros ] = useState(false); //para os filtros.
    const [ showClientesLoc, setShowClientesLoc ] = useState(false);
    const [ showCondicoesLoc, setShowCondicoesLoc ] = useState(false);

    const selectFormaPagto = [
        {value: "BOLETO", label: "BOLETO" },
        {value: "FATURA", label: "FATURA" },
        {value: "DINHEIRO", label: "DINHEIRO" },
        {value: "CHEQUE", label: "CHEQUE" },
        {value: "CHEQUE-PRE", label: "CHEQUE-PRE" },
        {value: "CARTAO CREDITO", label: "CARTAO CREDITO" },
        {value: "CARTAO DEBITO", label: "CARTAO DEBITO" },
        {value: "DEPOSITO", label: "DEPOSITO" },
        {value: "PIX", label: "PIX" },
        {value: "PONTOS", label: "PONTOS" },
        {value: "PROMISSORIA", label: "PROMISSORIA" },
    ];

    const selectStatus = [
        {value: "TODOS", label: "TODOS" },
        {value: "A", label: "ABERTOS" },
        {value: "F", label: "FINALIZADOS" },
        {value: "C", label: "CANCELADOS" },
        {value: "I", label: "INUTILIZADOS" },
    ];

    const selectViaInternet = [
        {value: "TODOS", label: "TODOS" },
        {value: "A", label: "SIM - ABERTOS" },
        {value: "F", label: "SIM - FINALIZADOS" },
        {value: "N", label: "NÃO" },
    ];

    const selectDataCampo = [
        {value: "CADASTRO", label: "CADASTRO" },
        {value: "EMISSAO", label: "EMISSAO" },
        {value: "BAIXA", label: "BAIXA" },
    ];

    const selectVendedor = [
        {value: "MEUS PEDIDOS", label: "MEUS PEDIDOS" },
        {value: "TODOS", label: "TODOS" },
    ];

    function resetarFiltros() {
        // const hoje = new Date();
        const dataCampo = 'CADASTRO';
        const dataInicial = formatarData(primeiroDiaMes);
        const dataFinal = formatarData(ultimoDiaMes);
        // const dataInicial = new Date(hoje.getFullYear(), hoje.getMonth(), 1);
        // const dataFinal = new Date(hoje.getFullYear(), hoje.getMonth() +1, 0);
        const status = 'TODOS';
        const viaInternet = 'TODOS';
        const pesquisa = '';
        const vendedor = "MEUS PEDIDOS";
        setFiltros({ dataCampo, dataInicial, dataFinal, status, viaInternet, pesquisa, vendedor });
    }

    useEffect(() => {
        setDisableFields(false);
        listar(filtrosParaApi(filtros),true);
    },[]);

    function Pesquisar() {
        listar(filtrosParaApi(filtros),true);
        setShowModalFiltros(false);
    };
    
    async function salvar() {
        const formData = new FormData();
        formData.set('op','inserir');
        formData.set('VED_CLIENTE',venda.VED_CLIENTE || '');
        formData.set('VED_CONDICAO',venda.VED_CONDICAO || '');
        formData.set('VED_FORMAPAGTO',venda.VED_FORMAPAGTO || '');
        formData.set('VED_OBSERVACOES',venda.VED_OBSERVACOES || '');
        console.log('salvar...')
        try {
            const response = await Api.post('firenet/vendas',formData);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yessss!','Pedido gerado com sucesso!');
            setShowModal(false);
            navigate('/venda/'+response.data.msg.VED_CODIGO);
        } catch (error) {
            tratarCatch('Vendas salvar',error,logout);
        }
    }    

    const localizarKeyDown = (e) => {
        if (e.keyCode === 13) {
            Pesquisar();
        }
    } 

    async function clientesLocalizar(e) {
        if (e.target.value!=='') {
            const formData = new FormData();
            formData.set('op','localizar');
            formData.set('CLI_CODIGO',e.target.value);
            try {
                const response = await Api.post('firenet/clientes',formData);
                if (response.data.erro==='S') throw response;
                const novoVenda = {...venda, VED_CLIENTE: e.target.value, VED_NOME: response.data.msg.CLI_NOME };
                setVenda(novoVenda);
            } catch(error) {
                const novoVenda = {...venda, VED_CLIENTE: '', VED_NOME: '' };
                setVenda(novoVenda);
                tratarCatch('Venda clientesLocalizar',error,logout);
            }
        }
    }

    function clientesLocClose(event, data) {
        if (data.LOC===true) {
            setVenda({
                ...venda, 
                VED_CLIENTE: data.CLI_CODIGO, 
                VED_CONDICAO: data.CLI_CONDICAO, 
                VED_CONTATO: data.CLI_CONTATO, 
                VED_FORMAPAGTO: data.CPG_FORMAPAGTO, 
                VED_NOME: data.CLI_NOME, 
                VED_TIPOCONSUMIDOR: data.CLI_TIPOCONSUMIDOR,
                CPG_DESCRICAO: data.CPG_DESCRICAO,
                CPG_MEIOPAGAMENTO: data.CPG_MEIOPAGAMENTO,
            });
        }
        setShowClientesLoc(false);
    }

    //funcoes do campo condicao
    async function condicoesLocalizar(e) {
        if (e.target.value!=='') {
            const formData = new FormData();
            formData.set('op','localizar');
            formData.set('CPG_CODIGO',e.target.value);
            try {
                const response = await Api.post('firenet/condicoes',formData);
                if (response.data.erro==='S') throw response;
                const novo = {
                    ...venda, 
                    VED_CONDICAO: e.target.value, 
                    VED_FORMAPAGTO: response.data.msg.CPG_FORMAPAGTO,
                    CPG_DESCRICAO: response.data.msg.CPG_DESCRICAO, 
                    CPG_MEIOPAGAMENTO: response.data.msg.CPG_MEIOPAGAMENTO,
                };
                setVenda(novo);
            } catch(error) {
                const novo = {
                    ...venda, 
                    VED_CONDICAO: '', 
                    // VED_FORMAPAGTO: '',
                    CPG_DESCRICAO: '', 
                    CPG_MEIOPAGAMENTO: '',
                };
                setVenda(novo);
                tratarCatch('Vendas condicoesLocalizar',error,logout);
            }
        }
    }

    function condicoesLocClose(event, data) {
        if (data.LOC===true) {
            setVenda({
                ...venda, 
                VED_CONDICAO: data.CPG_CODIGO, 
                VED_FORMAPAGTO: data.CPG_FORMAPAGTO, 
                CPG_DESCRICAO: data.CPG_DESCRICAO, 
                CPG_MEIOPAGAMENTO: data.CPG_MEIOPAGAMENTO 
            });
        }
        setShowCondicoesLoc(false);
    }    

    return <>
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div className="link-icone"><Link to='/home'><i className="fa fa-2x fa-fw fa-chevron-left"></i></Link></div>
                        <div className="flex-grow-1"><p className="text-truncate text-center fw-bolder mt-3">PEDIDOS DE VENDAS</p></div>
                        <div className="link-icone me-3"><Link to='' onClick={() => setShowModal(true)}><i className="fa fa-2x fa-fw fa-plus"></i></Link></div>
                        <div className="link-icone"><Link to='' onClick={() => setShowModalFiltros(true)}><i className="fa fa-2x fa-fw fa-sliders-h"></i></Link></div>
                    </div>
                </div>
            </div>
        </div>

        <PettIf condicional={ listagem.length > 0}>
        <div className="container limit-width p-0">
            {                    
                listagem.map(venda => (
                    <div className="lista-item w-100" key={venda.VED_CODIGO}>
                        <div className="row">
                            <div className="col-12 px-3 pt-1 text-truncate">
                                <Link to={"/venda/"+venda.VED_CODIGO} className="lista-link stretched-link">
                                    <span className="fw-bold">{venda.VED_CLIENTE} - {venda.VED_NOME}</span>
                                </Link>
                            </div>
                            <div className="row">                               
                                <div className="col-12 mx-2 pb-2 lh-1 d-flex justify-content-between align-items-center">
                                    <span className="small">{venda.VED_CODIGO} - {venda.VED_VENDEDOR}</span>
                                    <span className="texto-suave small">{formatarDataStr(venda.VED_DTCADASTRO)}</span>
                                    <span className="texto-suave small">{formatarDataStr(venda.VED_DTEMISSAO)}</span>
                                    <span className="texto-vermelho fw-bold small">
                                        <NumericFormat 
                                            value={parseFloat(venda.VED_VALORTOTAL)}
                                            // isNumericString={true}
                                            displayType="text"
                                            prefix="R$ "
                                            thousandsGroupStyle="thousand"
                                            decimalSeparator=","
                                            decimalScale={2}
                                            fixedDecimalScale={true}
                                            thousandSeparator="."
                                            allowNegative={true}
                                        />&nbsp;
                                        <PettIf condicional={venda.VED_STATUS==="A"}>
                                            <PettIf condicional={venda.VED_VIAINTERNETSTATUS==='A'}>
                                                <span className="text-light badge bg-info">{venda.VED_STATUS+'-'+venda.VED_VIAINTERNETSTATUS}</span>
                                            </PettIf>
                                            <PettIf condicional={venda.VED_VIAINTERNETSTATUS==='F'}>
                                                <span className="text-light badge bg-primary">{venda.VED_STATUS+'-'+venda.VED_VIAINTERNETSTATUS}</span>
                                            </PettIf>
                                        </PettIf>
                                        <PettIf condicional={venda.VED_STATUS==="F"}>
                                            <span className="text-light badge bg-success">{venda.VED_STATUS+'-'+venda.VED_VIAINTERNETSTATUS}</span>
                                        </PettIf>
                                        <PettIf condicional={venda.VED_STATUS==="C"}>
                                            <span className="badge bg-danger">{venda.VED_STATUS+'-'+venda.VED_VIAINTERNETSTATUS}</span>
                                        </PettIf>
                                        <PettIf condicional={venda.VED_STATUS==="I"}>
                                            <span className="text-light badge bg-warning">{venda.VED_STATUS+'-'+venda.VED_VIAINTERNETSTATUS}</span>
                                        </PettIf>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                ))
            }   
        </div>
        </PettIf>
        <Sentinela onIntersect={() => carregarMais(operacao, filtrosParaApi(filtros))} carregando={carregando} final={final} length={listagem.length} erro={erro} />
        {/* <Sentinela onIntersect={carregarMais} carregando={carregando} final={final} length={listagem.length} erro={erro}/> */}

        <PettModal show={showModalFiltros} fullscreen title="FILTROS" fechar={false} className="modal-campos">
                <div className="container limit-width p-0">
                    <div className="row g-1">
                        { import.meta.env.VITE_PEDIDOS_TODOS==="false"
                            ? <PettFieldDrop size="col-12" label="PEDIDOS" name="vendedor" value={filtros.vendedor} set={setFiltros} options={selectVendedor} optionLabel="label" readOnly disabled/>
                            : <PettFieldDrop size="col-12" label="PEDIDOS" name="vendedor" value={filtros.vendedor} set={setFiltros} options={selectVendedor} optionLabel="label" readOnly={disableFields} disabled={disableFields}/>
                        }
                        <PettFieldDrop size="col-12" label="STATUS" name="status" value={filtros.status} set={setFiltros} options={selectStatus} optionLabel="label" readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-12" label="VIA INTERNET" name="viaInternet" value={filtros.viaInternet} set={setFiltros} options={selectViaInternet} optionLabel="label" readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-12" label="DATA" name="dataCampo" value={filtros.dataCampo} set={setFiltros} options={selectDataCampo} optionLabel="label" readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-12" label="DATA INICIAL" name="dataInicial" value={filtros.dataInicial} set={setFiltros} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDate size="col-12" label="DATA FINAL" name="dataFinal" value={filtros.dataFinal} set={setFiltros} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-12" label="LOCALIZAR" name="pesquisa" value={filtros.pesquisa} set={setFiltros} onKeyDown={(e) => localizarKeyDown(e)} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </div>
            <PettModal.Footer>
                <div className="container limit-width p-0">
                    <div className="d-flex gap-1 w-100">
                        <PettButton className="flex-fill" variant="red" size="lg" caption="Cancelar" click={() => setShowModalFiltros(false)}/>
                        <PettButton className="flex-fill" variant="yellow" size="lg" caption="Resetar" click={() => resetarFiltros(false)}/>
                        <PettButton className="flex-fill" variant="green" size="lg" icone="done" caption="Filtrar" click={() => Pesquisar()}/>
                    </div>
                </div>
            </PettModal.Footer>
        </PettModal>

        <PettModal show={showModal} fullscreen title="NOVO PEDIDO" fechar={false} className="modal-campos">
                <div className="container limit-width p-0">
                    <div className="row g-1">
                        <PettFieldLoc size="col-4" label="CLIENTE" name="VED_CLIENTE" value={venda.VED_CLIENTE} keyfilter="int" set={setVenda} onClick={() => setShowClientesLoc(true)} onBlur={(e) => clientesLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-8" label="NOME CLIENTE" name="VED_NOME" value={venda.VED_NOME} readOnly disabled/>
                        <PettFieldLoc size="col-4" label="CONDIÇÃO" name="VED_CONDICAO" value={venda.VED_CONDICAO} keyfilter="int" set={setVenda} onClick={() => setShowCondicoesLoc(true)} onBlur={(e) => condicoesLocalizar(e)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-8" label="DESCRIÇÃO CONDIÇÃO" name="CPG_DESCRICAO" value={venda.CPG_DESCRICAO} readOnly disabled/>
                        <PettFieldDrop size="col-12" label="FORMA PAGAMENTO" name="VED_FORMAPAGTO" value={venda.VED_FORMAPAGTO} set={setVenda} options={selectFormaPagto} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldTextArea size="col-12" label="OBSERVAÇÕES" name="VED_OBSERVACOES" value={venda.VED_OBSERVACOES} set={setVenda} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </div>
            <PettModal.Footer>
                <div className="container limit-width p-0">
                    <div className="d-flex gap-1 w-100">
                        <PettButton className="flex-fill" variant="red" size="lg" caption="Cancelar" click={() => setShowModal(false)}/>
                        <PettButton className="flex-fill" variant="green" size="lg" icone="done" caption="Salvar" click={() => salvar()}/>
                    </div>
                </div>
            </PettModal.Footer>
        </PettModal>
        <ClientesLoc showModal={showClientesLoc} onCloseModal={clientesLocClose}/>
        <CondicoesLoc showModal={showCondicoesLoc} onCloseModal={condicoesLocClose}/>
    </>
}

export default Vendas;