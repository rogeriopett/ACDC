//Atualizacoes:
//2026.11.18 - Cores seguem o tema do pett-componentes (lista-item, lista-link, texto-suave, texto-verde/azul no lugar de card, link-dark, text-secondary, text-success/primary).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Fonte da listagem um pouco menor (fonte-sm no nome, fonte-xs nos detalhes).
//2026.11.18 - Linhas com lh-sm (antes lh-1, muito juntas) e margem vertical (my-1) na foto.
import React from 'react';
import { NumericFormat } from "react-number-format";

function ProdutoCard(props) {
    let classeOferta=props.PRO_OFERTA==="N"?"texto-verde":"texto-azul";
    return <>
        <div className="lista-item">
            <div className="p-0">
                {/* <div className="row g-0"> */}
                <div className="d-flex justify-content-between">
                    <div><img src={props.PRF_ARQUIVO} className="rounded img-fluid my-1" alt="" style={{maxWidth: '60px'}}/></div>
                    <div className="w-100 m-0 p-2 text-truncate">
                        <div className="row text-truncate">
                            <div className="col-12 text-truncate fonte-sm m-0 lh-sm"><a className="lista-link stretched-link" href={'/produto/'+props.PRO_CODIGO}>{props.PRO_NOME}</a></div>
                            <div className="col-12 text-truncate texto-suave fonte-xs mt-0 lh-sm">{props.GRU_DESCRICAO}</div>
                            <div className="col-12 text-truncate texto-suave fonte-xs d-flex justify-content-between lh-sm">
                                <span>
                                    {props.PRO_CODIGO}
                                </span>
                                <span>
                                    {props.PRO_UNIDADE}
                                </span>
                                <span>
                                    <NumericFormat
                                        value={parseFloat(props.PRO_ESTOQUEATUAL)}
                                        // isNumericString={true}
                                        displayType="text"
                                        prefix=""
                                        thousandsGroupStyle="thousand"
                                        decimalSeparator=","
                                        decimalScale={4}
                                        fixedDecimalScale={true}
                                        thousandSeparator="."
                                        allowNegative={true}
                                    />
                                </span>
                                <span className={"fw-bold me-2 "+classeOferta}>
                                    <NumericFormat
                                        value={parseFloat(props.PRO_PRECOVENDA)}
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
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </>
}

export default ProdutoCard;
