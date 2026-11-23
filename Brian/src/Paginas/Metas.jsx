//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Barras de progresso do Bootstrap (progress/progress-bar) trocadas pelo PettProgressBar do pett-componentes.
//2026.11.18 - Percentual dentro da barra de progresso na listagem das metas anteriores (removido o texto do percentual que ficava acima da barra).
//2026.11.18 - Barras de progresso em laranja, com o que passa da meta em verde (corExcedente).
//2026.11.18 - Faixas "Meta Atual"/"Metas Anteriores" (bg-success/bg-info fixos) trocadas pelo titulo-secao do Global.css (acento do tema).
import { useContext, useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { NumericFormat } from 'react-number-format';

import { PettIf } from 'pett-componentes';
import { PettProgressBar } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import { useListagem } from '../Hooks/useListagem';
import Sentinela from '../Componentes/Sentinela';
import { formatarDataStr, tratarCatch } from '../Funcoes';

function Metas() {
    const { logout } = useContext(AuthContext);
    const { listar, listagem, carregando, carregarMais, final, erro } = useListagem('firenet/metas', 'Metas listar', logout);
    const [ operacao, setOperacao ] = useState('listar');
    const [ pesquisa, setPesquisa ] = useState({});
    const [ meta, setMeta ] = useState({
        MET_CODIGO: 0,
        MET_DTFIM: '',
        MET_DTINICIO: '',
        MET_METAVALOR: '',
        MET_METAATINGIDA: 0,
        MET_STATUS: 'A',
        MET_TOTALVENDAS: 0
    });

    async function getMetaAtual() {
        const formData = new FormData();
        formData.set('op','visualizar');
        try {
            const response = await Api.post('firenet/metas',formData); 
            if (response.data.erro==='S') throw response;
            setMeta(response.data.msg);
        } catch (error) {
            tratarCatch('Metas visualizar',error,logout);
            setMeta({MET_CODIGO: 0});
        }
    }

    useEffect(() => {    
        getMetaAtual();
        listar(pesquisa,true);
    },[]);

    return <>
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div className="link-icone"><Link to='/home'><i className="fa fa-2x fa-fw fa-chevron-left"></i></Link></div>
                        <div className="flex-grow-1"><p className="text-truncate text-center fw-bolder mt-3">MINHAS METAS</p></div>
                    </div>
                </div>
            </div>
        </div>

        <div className="container limit-width">
            <h2 className="titulo-secao">Meta atual</h2>
        </div>

        <PettIf condicional={meta.MET_CODIGO===0}>
            <div className="container limit-width my-5 text-center">
                <p className="lead">Não foi possível localizar uma meta em aberto.</p>
            </div>
        </PettIf>

        <PettIf condicional={meta.MET_CODIGO!==0}>

            <div className="container limit-width">
                <ul className="list-group mb-3">
                    <li className="list-group-item p-2">
                        <div className="row">      
                            <div className="col-6"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA INICIAL</sup></p><p className="lh-1 m-0">{formatarDataStr(meta.MET_DTINICIO)}</p></div> 
                            <div className="col-6"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA FINAL</sup></p><p className="lh-1 m-0">{formatarDataStr(meta.MET_DTFIM)}</p></div> 
                        </div>
                    </li>
                    <li className="list-group-item p-2">
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">META VALOR</sup></p><p className="lh-1 m-0">
                                    <NumericFormat className="texto-azul"
                                        value={parseFloat(meta.MET_METAVALOR)}
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
                                </p>
                            </div> 
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">TOTAL VENDAS</sup></p><p className="lh-1 m-0">
                                    <NumericFormat className="texto-verde"
                                        value={parseFloat(meta.MET_TOTALVENDAS)}
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
                                </p>
                            </div> 
                        </div>
                    </li>
                    <li className="list-group-item p-2">
                        {/* <p className="lh-1 m-0 mt-1"><sup className="texto-suave">META VALOR</sup></p><p className="lh-1 m-0">{meta.MET_METAVALOR}</p> */}
                        <p className="text-center fs-5 fw-bold lh-1">META ATINGIDA: {meta.MET_METAATINGIDA} %</p>
                        <PettProgressBar className="fs-5" valor={Number(meta.MET_METAATINGIDA) || 0} variant="orange" corExcedente="green" animado altura={30} texto={meta.MET_METAATINGIDA+' %'} rotulo="Meta atingida"/>
                    </li>
                </ul>           
            </div>
        </PettIf>

        <div className="container limit-width">
            <h2 className="titulo-secao">Metas anteriores</h2>
        </div>

        <PettIf condicional={ listagem.length > 0}>
            <div className="container limit-width pb-5 p-0">
                {                     
                    listagem.map(item => (
                        <div className="lista-item w-100" key={item.MET_CODIGO}>
                            <div className="card-body p-0">
                                <div className="px-2 pt-1 d-flex justify-content-between">
                                    <span>{formatarDataStr(item.MET_DTINICIO)}</span>
                                    <span>{formatarDataStr(item.MET_DTFIM)}</span>
                                </div>
                                <div className="px-2 d-flex justify-content-between">
                                    <NumericFormat className="texto-azul"
                                        value={parseFloat(item.MET_METAVALOR)}
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
                                    <NumericFormat className="texto-verde"
                                        value={parseFloat(item.MET_TOTALVENDAS)}
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
                                <div className="col-12 pb-2 px-2 text-truncate texto-suave small">
                                    <PettProgressBar valor={Number(item.MET_METAATINGIDA) || 0} variant="orange" corExcedente="green" texto={item.MET_METAATINGIDA+' %'} rotulo="Meta atingida"/>
                                </div>
                            </div>
                        </div>
                    ))
                } 
            </div>
        </PettIf>           
        <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
    </>
}

export default Metas;