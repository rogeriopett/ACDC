//Atualizacoes:
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
import React from 'react';
import { NumericFormat } from "react-number-format";

function VendasItensConferencia(props) {
    return <>
        <div className="lista-item">
            <div className="row g-0 mx-1 text-truncate">
                <div className="col-12 text-truncate fs-6 m-0">{props.VEI_DESCRICAO}</div>
            </div>
            <div className="row g-0 mx-2 mb-1">
                <div className="col-2 texto-suave small">{props.VEI_SEQUENCIA}</div>
                <div className="col-2 texto-suave small text-end">{props.VEI_PRODUTO}</div>
                <div className="col-2 texto-suave small text-end">{props.VEI_UNIDADE}</div>
                <div className="col-2 texto-verde small text-end fw-bold">
                        <NumericFormat 
                            value={parseFloat(props.VEI_QUANTIDADE)}
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
                </div>
                <div className="col-2 texto-azul small text-end fw-bold">
                        <NumericFormat 
                            value={parseFloat(props.QTDECONFERIDA)}
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
                </div>
                <div className="col-2 texto-suave small text-end" >
                        {
                            props.STATUSCONFERENCIA==='---'
                                ? <span className="badge bg-secondary">{props.STATUSCONFERENCIA}</span>
                                : <span className="badge bg-success">{props.STATUSCONFERENCIA}</span>
                        }                            
                </div>
                </div>
            </div>
        {/* </div> */}

        {/* <div className="lista-item">
            <div className="row g-0">
                <div className="col-12 m-0 p-2 d-flex align-items-center">
                    <div className="row text-truncate">
                        <div className="col-12 border text-truncate fs-6 m-0">{props.VEI_DESCRICAO}</div>
                        
                        <div className="col-12 border">
                            <div class="d-flex justify-content-between ">
                                <span className="texto-suave small">{props.VEI_SEQUENCIA} aaa</span>
                                <span className="texto-suave small">{props.VEI_PRODUTO}</span>
                                <span className="texto-suave small">{props.VEI_UNIDADE}</span>
                                <span className="texto-verde small text-end fw-bold">
                                    <NumericFormat 
                                        value={parseFloat(props.VEI_QUANTIDADE)}
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
                                <span className="texto-azul small text-end fw-bold">
                                    <NumericFormat 
                                        value={parseFloat(props.QTDECONFERIDA)}
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
                                <span className="texto-suave small" >
                                    {
                                        props.STATUSCONFERENCIA==='---'
                                            ? <span className="badge bg-secondary">{props.STATUSCONFERENCIA}</span>
                                            : <span className="badge bg-success">{props.STATUSCONFERENCIA}</span>
                                    }                            
                                </span>
                            </div>
                        </div> */}
                        
                        {/* <div className="col-12 border w-100 d-flex justify-content-between">
                        <div className="row border w-100 d-flex justify-content-between">

                            <div className="col-1 texto-suave small">
                                {props.VEI_SEQUENCIA}    
                            </div>
                            <div className="col-2 texto-suave small">
                                {props.VEI_PRODUTO}    
                            </div>
                            <div className="col-1 texto-suave small">
                                {props.VEI_UNIDADE}
                            </div>
                            <div className="col-2 text-end texto-verde small">
                                <NumericFormat 
                                    value={parseFloat(props.VEI_QUANTIDADE)}
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
                            </div>
                            <div className="col-3 text-end texto-azul small fw-bold">
                                <NumericFormat 
                                    value={parseFloat(props.QTDECONFERIDA)}
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
                            </div>
                            <div className="col-3 text-end texto-verde small fw-bold">
                                {
                                    props.STATUSCONFERENCIA==='---'
                                        ? <span className="badge bg-secondary">{props.STATUSCONFERENCIA}</span>
                                        : <span className="badge bg-success">{props.STATUSCONFERENCIA}</span>
                                }                            
                            </div>

                        </div>
                        </div> */}
                    {/* </div>
                </div>
            </div>
        </div> */}
    </>
} 

export default VendasItensConferencia;