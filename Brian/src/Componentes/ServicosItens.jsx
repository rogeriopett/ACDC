//Atualizacoes:
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
import React from 'react';
import { NumericFormat } from "react-number-format";

function ServicosItens(props) {
    return <>
        <div className="lista-item w-100">
            <div className="row g-0">
                <div className="col-12 m-0 p-2 d-flex align-items-center">
                    <div className="row text-truncate w-100 g-0">
                        {/* <div className="col-12 text-truncate fs-6 m-0 lh-1"><Link className="lista-link stretched-link" onClick={props.edicao} to="">{props.VEI_DESCRICAO}</Link></div> */}
                        <div className="col-12 text-truncate fs-6 m-0 lh-1">{props.SEI_DESCRICAO}</div>
                        {/* <div className="col-12 text-truncate texto-suave small lh-1 border ">
                            <div className="row w-100 border border-danger "> */}
                        <div className="col-1 texto-suave small lh-1 mt-1">
                            {props.SEI_SEQUENCIA}    
                        </div>
                        <div className="col-2 texto-suave small lh-1 mt-1">
                            {props.SEI_PRODUTO}    
                        </div>
                        <div className="col-1 texto-suave small lh-1 mt-1">
                            {props.SEI_UNIDADE}
                        </div>
                        <div className="col-2 text-end texto-verde small lh-1 mt-1">
                            <NumericFormat 
                                value={parseFloat(props.SEI_QUANTIDADE)}
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
                        <div className="col-3 text-end texto-suave small lh-1 mt-1 fw-bold">
                            <NumericFormat 
                                value={parseFloat(props.SEI_VALORUNIT)}
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
                        <div className="col-3 text-end texto-azul small lh-1 mt-1 fw-bold">
                            <NumericFormat 
                                value={parseFloat(props.SEI_VALORTOTAL)}
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
                            {/* </div>
                        </div> */}
                    </div>
                </div>
            </div>
        </div>
    </>
} 

export default ServicosItens;