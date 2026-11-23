//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Trocados PettFieldText, PettFieldDrop e PettFieldMask locais pelos do pett-componentes.
//2026.11.17 - Campo de e-mail (InputText do PrimeReact) trocado pelo PettFieldText.
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal do pett-componentes.
//2026.11.18 - Incluido o import do PettMensagem do pett-componentes (era usado sem import).
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Rodape dos modais: btn-group trocado por d-flex gap-1 (espaco entre os botoes).
//2026.11.18 - Datas dos filtros: PettFieldMask trocado pelo PettFieldDate; enviadas em aaaa-mm-dd (formatarDataIso).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
//2026.11.19 - Modais de formulario com a classe modal-campos (margem lateral menor, campos centralizados).
import React, { useState, useEffect, useContext } from 'react';
import { Link } from 'react-router-dom';
import { NumericFormat } from "react-number-format";

import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import { useListagem } from '../Hooks/useListagem';
import Sentinela from '../Componentes/Sentinela';
import { formatarData, formatarDataIso, formatarDataStr, tratarCatch, primeiroDiaMesPassado, ultimoDiaMesSeguinte } from '../Funcoes';

function useFiltros(chave = "filtros_receber") {
    const [filtros, setFiltros] = React.useState(() => {
        const armazenado = localStorage.getItem(chave);
        if (armazenado) {
            const parsed = JSON.parse(armazenado);
            return {
                ...parsed,
                dataInicial: parsed.dataInicial ? parsed.dataInicial : formatarData(primeiroDiaMesPassado),
                dataFinal: parsed.dataFinal ? parsed.dataFinal : formatarData(ultimoDiaMesSeguinte),
                // dataInicial: parsed.dataInicial ? new Date(parsed.dataInicial) : null,
                // dataFinal: parsed.dataFinal ? new Date(parsed.dataFinal) : null
            }
        }

        //o Date() retorna assim: Date Tue Sep 01 2025 00:00:00 GMT-0300 (Horário Padrão de Brasília)
        //se colocar toISOString() retorna assim: 2025-09-01T03:00:00.000Z
        //o componente Calendar precisa da data neste formato: Date Tue Sep 01 2025 00:00:00 GMT-0300 (Horário Padrão de Brasília)
        //usar new Date(filtros.dataInicial).toISOString().split('T')[0]) ao enviar para o backend.
        const hoje = new Date();
        const dataInicial = formatarData(primeiroDiaMesPassado);
        const dataFinal = formatarData(ultimoDiaMesSeguinte);
        // const dataInicial = new Date(hoje.getFullYear(), hoje.getMonth(), 1);
        // const dataFinal = new Date(hoje.getFullYear(), hoje.getMonth() + 1, 0);
        //const dataInicial = new Date(hoje.getFullYear(), hoje.getMonth(), 1).toISOString();
        //const dataFinal = new Date(hoje.getFullYear(), hoje.getMonth() + 1, 0).toISOString();
        return { dataInicial, dataFinal, status: "TODAS", dataCampo: "VENCIMENTO", pesquisa: "" };
    });

    React.useEffect(() => {
        localStorage.setItem(chave, JSON.stringify(filtros));
    }, [filtros, chave]);
    
    return [filtros, setFiltros];
}

function Receber() {
    const [ filtros, setFiltros ] = useFiltros();
    const { logout } = useContext(AuthContext);
    const [ listagem, setListagem ] = useState([]);
    const [ carregando, setCarregando ] = useState(true);
    const [ pagina, setPagina ] = useState(0);
    const [ final, setFinal ] = useState(false);
    const [ erro, setErro ] = useState(false);

    //const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/receber', 'Receber listar', logout);    
    const [ totais, setTotais ] = useState([]);
    const [ showModal, setShowModal ] = useState(false);
    const [ showModalFiltros, setShowModalFiltros ] = useState(false); //para os filtros.
    const [ operacao, setOperacao ] = useState('listar');
    const [ email, setEmail ] = useState('');
    const [ enviando, setEnviando ] = useState('');
    const [ disableFields, setDisableFields ] = useState(false);

    const selectStatus = [
        {value: "TODAS", label: "TODAS" },
        {value: "A", label: "ABERTOS" },
        {value: "B", label: "BAIXADOS" },
        {value: "C", label: "CANCELADOS" },
        {value: "P", label: "PRE BAIXADOS" },
    ];

    const selectDataCampo = [
        {value: "EMISSAO", label: "EMISSAO" },
        {value: "PAGAMENTO", label: "PAGAMENTO" },
        {value: "VENCIMENTO", label: "VENCIMENTO" },
    ];

    async function listarReceber(nPagina,bFinal,bLimpar) {
        if (!bFinal) {
            setCarregando(true);    
            const novaPagina=nPagina+1;
            var formData = new FormData();
            formData.set('op', 'listar');
            formData.set('pagina', novaPagina);
            formData.set('pesquisa', filtros.pesquisa);
            formData.set('dataInicial', formatarDataIso(filtros.dataInicial));
            formData.set('dataFinal', formatarDataIso(filtros.dataFinal));
            // formData.set('datainicial', new Date(filtros.dataInicial).toISOString().split('T')[0]);
            // formData.set('datafinal', new Date(filtros.dataFinal).toISOString().split('T')[0]);
            // formData.set('datainicial', new Date(filtros.dataInicial).toLocaleDateString()); //a string em filtros está assim: 2024-12-10T03:00:00.000Z e desta forma pegamos apenas a data neste formado: 10/12/2024
            // formData.set('datafinal', new Date(filtros.dataFinal).toLocaleDateString());
            formData.set('dataCampo',filtros.dataCampo);
            formData.set('status',filtros.status);

            try {
                const response = await Api.post('firenet/receber',formData);
                if (response.data.erro==='S') throw response;
                const novaListagem = [];
                if (response.data.contador > 0) {
                    if (!bLimpar){
                        //const novaListagem = [...listagem] //novalistagem recebe listagem atual.
                        novaListagem.push(...listagem); //novalistagem recebe listagem atual.
                        setListagem([]);
                    }
                    novaListagem.push(...response.data.msg.listagem); //novalistagem recebe mais a nova listagem.
                } else {
                    //se ja tem uma listagem, continua com ela
                    //se a pesquisa retornou 20 registros, ao dar scroll para a pagina 2 que retorna com 0 registros, continua com a listagem atual.
                    if (novaPagina > 1) { 
                        novaListagem.push(...listagem); 
                    }
                }

                if (novaPagina===1) {
                    setTotais(response.data.msg.totais);
                }

                //verifica se pode conter mais registros. 
                //se retornou com 20 registros, pode ser que ainda tenha mais.
                //se retornou com menos de 20 registros, é pq chegou no final da lista.
                if (response.data.contador < response.data.rpp) {
                    setFinal(true);
                }

                setListagem(novaListagem);
                setCarregando(false);
                setPagina(novaPagina);
                setErro(false);
            } catch (error) {
                tratarCatch('Receber listar',error,logout);
                setCarregando(false);
                setErro(true);
            }
        }
    }

    function carregarMais() {
        if (!carregando && !final) {
            listarReceber(pagina,final,false); 
        }
    }

    function resetarFiltros() {
        const hoje = new Date();
        const dataInicial = formatarData(primeiroDiaMesPassado);
        const dataFinal = formatarData(ultimoDiaMesSeguinte);
        // const dataInicial = new Date(hoje.getFullYear(), hoje.getMonth(), 1);
        // const dataFinal = new Date(hoje.getFullYear(), hoje.getMonth() +1, 0);
        const dataCampo = 'VENCIMENTO';
        const status = 'TODAS';
        const pesquisa = '';
        setFiltros({ dataInicial, dataFinal, dataCampo, status, pesquisa });
    }

    useEffect(() => {
        setDisableFields(false);
        listarReceber(0,false,true);      
    },[]);

   
    function Pesquisar() {
        setPagina(0);
        setFinal(false);
        setListagem([]);      
        listarReceber(0,false,true);
        setShowModalFiltros(false);
    };
    
    const localizarKeyDown = (e) => {
        if (e.keyCode === 13) {
            Pesquisar();
        }
    }  

    async function enviarListagem() {
        setEnviando(true);
        const formData = new FormData();
        formData.set('op','enviarpdf');
        formData.set('pesquisa', filtros.pesquisa);
        formData.set('dataInicial', formatarDataIso(filtros.dataInicial));
        formData.set('dataFinal', formatarDataIso(filtros.dataFinal));
        // formData.set('datainicial', new Date(filtros.dataInicial).toISOString().split('T')[0]);
        // formData.set('datafinal', new Date(filtros.dataFinal).toISOString().split('T')[0]);
        //formData.set('datainicial', new Date(filtros.dataInicial).toLocaleDateString()); //a string em filtros está assim: 2024-12-10T03:00:00.000Z e desta forma pegamos apenas a data neste formado: 10/12/2024
        //formData.set('datafinal', new Date(filtros.dataFinal).toLocaleDateString());
        formData.set('dataCampo', filtros.dataCampo);
        formData.set('status', filtros.status);
        formData.set('email', email);

        try {
            const response = await Api.post('firenet/receber',formData);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yessss!',response.data.msg);
        } catch (error) {
            tratarCatch('Receber enviarListagem',error,logout);
        }
        setEmail('');
        setEnviando(false);
        setShowModal(false);
    }

    return <>
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div className="link-icone"><Link to='/home'><i className="fa fa-2x fa-fw fa-chevron-left"></i></Link></div>
                        <div className="flex-grow-1"><p className="text-truncate text-center fw-bolder mt-3">CONTAS A RECEBER</p></div>
                        <div className="link-icone me-3"><Link to='' onClick={() => setShowModal(true)}><i className="fa fa-2x fa-fw fa-share"></i></Link></div>
                        <div className="link-icone"><Link to='' onClick={() => setShowModalFiltros(true)}><i className="fa fa-2x fa-fw fa-sliders-h"></i></Link></div>
                    </div>
                </div>
            </div>
        </div>

        <div className="fixed-bottom barra-tema p-1">
            <div className="container-fluid limit-width" style={{fontSize: '11px'}}>
                <div className="row g-1">
                    <div className="col-2 text-end">ABERTO&nbsp;</div>
                    <div className="col-4 text-light text-end rounded bg-danger">
                        <NumericFormat 
                            value={parseFloat(totais.VALORABERTOS)}
                            // isNumericString={true}
                            displayType="text"
                            prefix="R$ "
                            thousandsGroupStyle="thousand"
                            decimalSeparator=","
                            decimalScale={2}
                            fixedDecimalScale={true}
                            thousandSeparator="."
                            allowNegative={true}
                        />
                    </div>
                    <div className="col-2 text-end">PRÉ B.&nbsp;</div>
                    <div className="col-4 text-light text-end rounded bg-primary">
                        <NumericFormat 
                            value={parseFloat(totais.VALORPREBAIXADOS)}
                            // isNumericString={true}
                            displayType="text"
                            prefix="R$ "
                            thousandsGroupStyle="thousand"
                            decimalSeparator=","
                            decimalScale={2}
                            fixedDecimalScale={true}
                            thousandSeparator="."
                            allowNegative={true}
                        />
                    </div>

                
                    <div className="col-2 text-end">BAIXADO&nbsp;</div>
                    <div className="col-4 text-light text-end rounded bg-success">
                        <NumericFormat 
                            value={parseFloat(totais.VALORBAIXADOS)}
                            // isNumericString={true}
                            displayType="text"
                            prefix="R$ "
                            thousandsGroupStyle="thousand"
                            decimalSeparator=","
                            decimalScale={2}
                            fixedDecimalScale={true}
                            thousandSeparator="."
                            allowNegative={true}
                        />
                    </div>
                    <div className="col-2 text-end">TOTAL&nbsp;</div>
                    <div className="col-4 text-black text-end rounded bg-warning">
                        <NumericFormat 
                            value={parseFloat(totais.VALORTOTAL)}
                            // isNumericString={true}
                            displayType="text"
                            prefix="R$ "
                            thousandsGroupStyle="thousand"
                            decimalSeparator=","
                            decimalScale={2}
                            fixedDecimalScale={true}
                            thousandSeparator="."
                            allowNegative={true}
                        />
                    </div>                  

                    <div className="col-2 text-end">CANCEL.&nbsp;</div>
                    <div className="col-4 text-light text-end rounded bg-secondary">
                        <NumericFormat 
                            value={parseFloat(totais.VALORCANCELADOS)}
                            // isNumericString={true}
                            displayType="text"
                            prefix="R$ "
                            thousandsGroupStyle="thousand"
                            decimalSeparator=","
                            decimalScale={2}
                            fixedDecimalScale={true}
                            thousandSeparator="."
                            allowNegative={true}
                        />
                    </div>
                    <div className="col-2 text-end">PAGO&nbsp;</div>
                    <div className="col-4 text-black text-end rounded bg-light">
                        <NumericFormat 
                            value={parseFloat(totais.VALORTOTALPAGO)}
                            // isNumericString={true}
                            displayType="text"
                            prefix="R$ "
                            thousandsGroupStyle="thousand"
                            decimalSeparator=","
                            decimalScale={2}
                            fixedDecimalScale={true}
                            thousandSeparator="."
                            allowNegative={true}
                        />
                    </div>

                </div>
            </div>
        </div>

        <PettIf condicional={ listagem.length > 0}>
            <div className="container limit-width p-0">
                {                    
                    listagem.map(receber => (
                        <div className="lista-item w-100" key={receber.REE_CODIGO}>
                            <div className="card-body text-truncate p-1">
                                {/* <div className="col-12 mx-2 lh-1 pt-2 text-truncate"> */}
                                        <Link to={"/receber/"+receber.REE_CODIGO} className="lista-link stretched-link">
                                            <span className="fw-bold">{receber.REE_CLIENTE} - {receber.CLI_NOME}</span>
                                        </Link>
                                {/* </div> */}
                                <div className="row">
                                    <div className="col-12 d-flex justify-content-between align-items-center">
                                        <span className="small">{receber.REE_CODIGO}</span>
                                        <span className="texto-suave small">{formatarDataStr(receber.REE_DTVENCIMENTO)}</span>
                                        <span className="texto-suave small">{formatarDataStr(receber.REE_DTPAGAMENTO)}</span>
                                        <span className="texto-vermelho fw-bold small me-1">
                                            <NumericFormat 
                                                value={parseFloat(receber.REE_VALOR)}
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
                                            <PettIf condicional={receber.REE_STATUS==="A"}>
                                                <span className="text-light badge bg-danger">{receber.REE_STATUS}</span>
                                            </PettIf>
                                            <PettIf condicional={receber.REE_STATUS==="B"}>
                                                <span className="text-light badge bg-success">{receber.REE_STATUS}</span>
                                            </PettIf>
                                            <PettIf condicional={receber.REE_STATUS==="C"}>
                                                <span className="badge bg-secondary">{receber.REE_STATUS}</span>
                                            </PettIf>
                                            <PettIf condicional={receber.REE_STATUS==="P"}>
                                                <span className="text-light badge bg-primary">{receber.REE_STATUS}</span>
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
        <Sentinela onIntersect={carregarMais} carregando={carregando} final={final} length={listagem.length} erro={erro}/>
        {/* <Sentinela onIntersect={() => carregarMais(operacao, filtros)} carregando={carregando} final={final} length={listagem.length} erro={erro} /> */}

        <PettModal show={showModalFiltros} fullscreen title="FILTROS" fechar={false} className="modal-campos">
            <div className="container limit-width p-0">
                <div className="row g-1">
                    <PettFieldDrop size="col-12" label="STATUS" name="status" value={filtros.status} set={setFiltros} options={selectStatus} optionLabel="label" readOnly={disableFields} disabled={disableFields}/>
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

        <PettModal show={showModal} fullscreen title="Enviar Contas a Receber" fechar={false} className="modal-campos">
                <div className="container limit-width p-0">
                    <div className="row mb-0 mt-3 gx-2">
                        <PettFieldText size="col-12 mb-2" label="EMAIL DO DESTINATARIO" name="EMAIL" value={email} setMap={(e) => setEmail(e.target.value)} upper={false} type="email" required/>
                    </div>
                </div>
            <PettModal.Footer>
                <div className="container limit-width p-0">
                    <div className="d-flex gap-1 w-100">
                        <PettButton className="flex-fill" variant="red" size="lg" caption="Cancelar" click={() => setShowModal(false)}/>
                        {
                            enviando
                                ? <PettButton className="flex-fill" variant="green" size="lg" icone="loading_white" animado caption="Enviando..." disabled/>
                                : <PettButton className="flex-fill" variant="green" size="lg" icone="paper_plane" caption="Enviar" click={() => enviarListagem()}/>
                        }
                    </div>
                </div>
            </PettModal.Footer>
        </PettModal>
    </>
}

export default Receber;