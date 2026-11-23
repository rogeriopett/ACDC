//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
import { useEffect, useState, useContext } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';
import { NumericFormat } from 'react-number-format';

import { PettButton } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import Carrossel from '../Componentes/Carrossel';
import ProdutoHeader from '../Componentes/ProdutoHeader';
import Loading from '../Componentes/Loading';
import { formatarDataStr, tratarCatch } from '../Funcoes';

function Produto(props) {
    const { logout } = useContext(AuthContext);
    const { id } = useParams();
    const navigate = useNavigate();
    const [ produto, setProduto ] = useState({});
    const [ imagens, setImagens ] = useState([]);
    const [ carregando, setCarregando ] = useState(false);

    async function VerProduto() {
        setCarregando(true);    
        var formData = new FormData();
        formData.set('op', 'visualizar');
        formData.set('PRO_CODIGO', id);
        try {
            const response = await Api.post('firenet/produtos',formData);
            if (response.data.erro==='N') {
                setProduto(response.data.msg);
                setImagens(response.data.msg.FOTOS);              
            } else {
                setProduto({PRO_CODIGO:0});
                setImagens([]);                
                if (response.data.token==='expirado') {
                    logout();
                } 
            }
            setCarregando(false);
        } catch (error) {
            tratarCatch('Produto visualizar',error,logout);
            setCarregando(false);
        }
    }   
   
    useEffect(() => {
        VerProduto();
        // eslint-disable-next-line
    },[]);

    function Botoes1() {
        return <>
            <div className="col-6">
                <PettButton className="w-100" variant="green" icone="vintage_camera" caption="Fotos" link={'/produtofotos/'+id} size="lg" icoSize="24"/>
            </div>
            <div className="col-6">
                <PettButton className="w-100" variant="green" icone="vintage_camera" caption="Add Fotos" link={'/produtofotosenviar/'+id} size="lg" icoSize="24"/>
            </div> 
        </>
    }

    return <>    
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width p-0">
                <Loading status={carregando}/>
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div>
                            <Link to="" onClick={() => navigate(-1)} className="link-icone"><i className="fa fa-2x fa-fw fa-chevron-left mx-2"></i></Link>
                        </div>
                        <div className="flex-grow-1 text-truncate"><p className="text-truncate fw-bold text-center mt-3">DETALHES DO PRODUTO</p></div>
                        <div>
                            <div className="link-icone me-3">&nbsp;</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <PettIf condicional={produto.PRO_CODIGO<=0}>
            <div className="container limit-width vh-100 d-flex justify-content-center align-items-center">
                <p className="text-center lead"><span style={{fontSize: '7em'}} className="texto-suave"><i className="fa fa-fw fa-record-vinyl"></i></span><br/>Não foi possível localizar o produto.</p>
            </div>  
        </PettIf>
        <PettIf condicional={produto.PRO_CODIGO>0}>
            <div className="container-fluid limit-width py-2">
                <PettIf condicional={ imagens.length > 0 }>
                    <div className="container limit-width p-0 pb-2">
                        <Carrossel fotos={imagens} />
                    </div>
                </PettIf>
                <ProdutoHeader 
                    imagens={imagens}
                    PRF_ARQUIVO={produto.PRF_ARQUIVO}
                    PRO_CODIGO={produto.PRO_CODIGO}
                    PRO_ESTOQUEATUAL={produto.PRO_ESTOQUEATUAL}
                    PRO_NOME={produto.PRO_NOME}
                    PRO_PRECOVENDA={produto.PRO_PRECOVENDA}
                    PRO_UNIDADE={produto.PRO_UNIDADE}
                />
                <ul className="list-group mb-3">  
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">FAMÍLIA</sup></p><p className="lh-1 m-0">{produto.FAM_DESCRICAO}</p></li>  
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">GRUPO</sup></p><p className="lh-1 m-0">{produto.GRU_DESCRICAO}</p></li>  
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS</sup></p><p className="lh-1 m-0">{produto.PRO_STATUS}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">PREÇO DE VENDA</sup></p>
                                <p className="lh-1 m-0 fw-bold texto-vermelho">
                                    <NumericFormat 
                                        value={parseFloat(produto.PRO_PRECOVENDA)}
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
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">TABELA 01</sup></p>
                                <p className="lh-1 m-0">
                                    <NumericFormat 
                                        value={parseFloat(produto.PRO_PRECO1)}
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
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">TABELA 02</sup></p>
                                <p className="lh-1 m-0">
                                    <NumericFormat 
                                        value={parseFloat(produto.PRO_PRECO2)}
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
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">TABELA 03</sup></p>
                                <p className="lh-1 m-0">
                                    <NumericFormat 
                                        value={parseFloat(produto.PRO_PRECO3)}
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
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">TABELA 04</sup></p>
                                <p className="lh-1 m-0">
                                    <NumericFormat 
                                        value={parseFloat(produto.PRO_PRECO4)}
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
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">TABELA 05</sup></p>
                                <p className="lh-1 m-0">
                                    <NumericFormat 
                                        value={parseFloat(produto.PRO_PRECO5)}
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
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">TABELA 06</sup></p>
                                <p className="lh-1 m-0">
                                    <NumericFormat 
                                        value={parseFloat(produto.PRO_PRECO6)}
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
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA CADASTRO</sup></p><p className="lh-1 m-0">{formatarDataStr(produto.PRO_DTCADASTRO)} {produto.PRO_HRCADASTRO}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA ATUALIZAÇÃO</sup></p><p className="lh-1 m-0">{formatarDataStr(produto.PRO_DTATUALIZACAO)} {produto.PRO_HRATUALIZACAO}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">DETALHES</sup></p><span className="lh-1 m-0"><section dangerouslySetInnerHTML={{ __html: produto.PRO_DESCRICAO || '-' }} /></span></li>
                </ul>
                <div className="row gx-2 mb-5">
                    <Botoes1 />
                </div>             
            </div>
        </PettIf>
    </>
}

export default Produto;