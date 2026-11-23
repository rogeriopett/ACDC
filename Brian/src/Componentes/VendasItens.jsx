//Atualizacoes:
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
import React from 'react';
import { NumericFormat } from "react-number-format";

function VendasItens(props) {
    return <>
        <div className="lista-item" >
            <div className="row g-0">
                <div className="col-12 m-0 p-2 d-flex align-items-center">
                    <div className="row text-truncate">
                        <div className="col-12 text-truncate fs-6 m-0">{props.VEI_DESCRICAO}</div>
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
                        <div className="col-3 text-end texto-suave small fw-bold">
                            <NumericFormat 
                                value={parseFloat(props.VEI_VALORUNIT)}
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
                        <div className="col-3 text-end texto-azul small fw-bold">
                            <NumericFormat 
                                value={parseFloat(props.VEI_VALORTOTAL)}
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
        </div>
    </>
} 

export default VendasItens;