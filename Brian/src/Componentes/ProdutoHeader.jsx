//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Visual refeito: card no tema (mesma largura da lista), foto quadrada, codigo e nome ao lado, estoque e preco embaixo.
import React from 'react';
import { NumericFormat } from 'react-number-format';

import { PettIf } from 'pett-componentes';

import Formata from './Formata';

function ProdutoHeader(props) {
    return <>
        <PettIf condicional={props.PRO_CODIGO>0}>
            <div className="produto-header mb-3">
                <div className="d-flex align-items-center gap-3">
                    <img data-fancybox="avatar" src={props.PRF_ARQUIVO} alt={props.PRO_CODIGO} className="produto-header-foto"/>
                    <div className="flex-grow-1 overflow-hidden">
                        <span className="badge bg-success"><Formata formato="00000000">{props.PRO_CODIGO}</Formata></span>
                        <p className="fw-bold lh-sm m-0 mt-1">{props.PRO_NOME}</p>
                    </div>
                </div>
                <div className="produto-header-rodape d-flex justify-content-between align-items-end mt-2 pt-2">
                    <div>
                        <p className="lh-1 m-0"><sup className="texto-suave">ESTOQUE</sup></p>
                        <p className="lh-1 m-0 fw-bold">
                            <NumericFormat
                                value={parseFloat(props.PRO_ESTOQUEATUAL)}
                                displayType="text"
                                thousandsGroupStyle="thousand"
                                decimalSeparator=","
                                decimalScale={4}
                                fixedDecimalScale={true}
                                thousandSeparator="."
                                allowNegative={true}
                            /> {props.PRO_UNIDADE}
                        </p>
                    </div>
                    <div className="text-end">
                        <p className="lh-1 m-0"><sup className="texto-suave">PREÇO DE VENDA</sup></p>
                        <p className="lh-1 m-0 fw-bold fs-5 texto-vermelho">
                            <NumericFormat
                                value={parseFloat(props.PRO_PRECOVENDA)}
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
            </div>
        </PettIf>
    </>
}

export default ProdutoHeader;
