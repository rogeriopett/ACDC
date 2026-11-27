//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Trocados os PettField* locais pelos do pett-componentes (PettFieldLoc dividido em codigo + descricao).
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal do pett-componentes.
//2026.11.18 - Incluido o import do PettMensagem do pett-componentes (era usado sem import).
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Rodape dos modais: btn-group trocado por d-flex gap-1 (espaco entre os botoes).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
//2026.11.19 - Modais de formulario com a classe modal-campos (margem lateral menor, campos centralizados).
//2026.11.27 - Mensagem de registro nao encontrado com o componente local NaoEncontrado (PettIcon no lugar do fa-record-vinyl; sem vh-100).
import { useContext, useEffect, useState } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';
import { NumericFormat } from "react-number-format";

import { PettButton } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import { ParametrosContext } from '../Contextos/Parametros';
import Formata from '../Componentes/Formata';
import Loading from '../Componentes/Loading';
import NaoEncontrado from '../Componentes/NaoEncontrado';
import { formatarDataStr, tratarCatch } from '../Funcoes';

function ReceberId(props) {
    const { logout } = useContext(AuthContext);
    const { parametros } = useContext(ParametrosContext);
    const { id } = useParams();
    const navigate = useNavigate();
    const [ carregando, setCarregando ] = useState(false);
    const [ disableFields, setDisableFields ] = useState(false); //false=tras aberto para edicao.
    const [ showModal, setShowModal ] = useState(false);
    const [ receber, setReceber ] = useState({
        CLI_BAIRRO: '',
        CLI_CEP: '',
        CLI_CIDADE: '',
        CLI_CNPJ: '',
        CLI_CODIGO: '',
        CLI_COMPLEMENTO: '',
        CLI_CONTATO: '',
        CLI_CPF: '',
        CLI_DTATUALIZACAO: '',
        CLI_DTNASC: '',
        CLI_EMAIL: '',
        CLI_ENDERECO: '',
        CLI_ESTADO: '',
        CLI_FONE1: '',
        CLI_FONE2: '',
        CLI_FONE3: '',
        CLI_IE: '',   
        CLI_NOME: '',
        CLI_NUMERO: '',
        CLI_RG: '',
        CLI_STATUS: '',
        CLI_TABELAPRECO: '',
        CLI_TIPOPESSOA: '',
        CLI_USUARIO: ''
    });
    
    async function VerReceber() {
        setCarregando(true);
        var formData = new FormData();
        formData.set('op', 'visualizar');
        formData.set('REE_CODIGO', id);

        try {
            const response = await Api.post('firenet/receber',formData);
            //setCliente(response.data.msg);
            if (response.data.erro==='N') {
                setReceber(response.data.msg);
            } else {
                //setCliente({CLI_CODIGO:0});
                const REE_CODIGO=0;
                setReceber({...receber, REE_CODIGO});
                if (response.data.token==='expirado') {
                    logout();
                }
            }
            setCarregando(false);
        } catch (error) {
            tratarCatch('ReceberId visualizar',error,logout);
            setCarregando(false);
        }
    }   
   
    useEffect(() => {
        setDisableFields(false);
        VerReceber();
        // eslint-disable-next-line
    },[]);

    function btnEditar() {
        setShowModal(true);
    }

    async function btnSalvar() {
        const formData = new FormData();
        formData.set('op','prebaixar');
        formData.set('REE_CODIGO',receber.REE_CODIGO || '');
        formData.set('REE_VALORPAGO',receber.REE_VALORPAGO || '');
        try {
            const response = await Api.post('firenet/receber',formData);
            if (response.data.erro==='S') throw response;
            setShowModal(false); 
            setReceber(response.data.msg);
            //setReceber({...receber, REE_DTATUALIZACAO, REE_BAIXADOPOR, REE_USUARIO, REE_STATUS});
            PettMensagem.sucesso('Yesss!','Conta prebaixada com sucesso.');
        } catch (error) {
            tratarCatch('ReceberId btnSalvar',error,logout);
        }
    }

    return <>    
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width p-0">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div>
                            <Link to="" onClick={() => navigate(-1)} className="link-icone"><i className="fa fa-2x fa-fw fa-chevron-left mx-2"></i></Link>
                        </div>
                        <div className="flex-grow-1 text-truncate"><p className="text-truncate fw-bold text-center mt-3">DETALHES RECEBER</p></div>
                        <div>
                            <div className="link-icone me-3">
                                <PettIf condicional={receber.REE_STATUS==="A"}>
                                    <PettIf condicional={parametros.PAR_REEPREBAIXA==="S"}>
                                        <Link to='' onClick={btnEditar}><i className="fa fa-2x fa-fw fa-pencil"></i></Link>
                                    </PettIf>
                                </PettIf>
                                <PettIf condicional={receber.REE_STATUS!=="A"}>
                                    &nbsp;&nbsp; 
                                </PettIf>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <Loading status={carregando}/>
        <NaoEncontrado show={!carregando && receber.REE_CODIGO<=0} mensagem="Não foi possível localizar a conta a receber."/>
        <PettIf condicional={receber.REE_CODIGO>0}>
            <div className="container-fluid limit-width py-2">
                <ul className="list-group mb-3">  
                    <li className="list-group-item p-2">    
                        <div className="row">
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">CÓDIGO</sup></p><p className="lh-1 m-0">{receber.REE_CODIGO}</p>
                            </div>    
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS</sup></p>
                                <PettIf condicional={receber.REE_STATUS==='A'}>
                                    <p className="m-0 badge bg-danger">ABERTO</p>
                                </PettIf>
                                <PettIf condicional={receber.REE_STATUS==='B'}>
                                    <p className="m-0 badge bg-success">BAIXADO</p>
                                </PettIf>
                                <PettIf condicional={receber.REE_STATUS==='C'}>
                                    <p className="m-0 badge bg-secondary">CANCELADO</p>
                                </PettIf>
                                <PettIf condicional={receber.REE_STATUS==='P'}>
                                    <p className="m-0 badge bg-primary">PRE BAIXADO</p>
                                </PettIf>
                            </div>      
                        </div>  
                    </li>                 
                    <li className="list-group-item p-2"><div className="row"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">NOME / RAZÃO SOCIAL</sup></p><p className="lh-1 m-0">{receber.CLI_NOME}</p></div></li>  
                    <li className="list-group-item p-2"><div className="row"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">RECEITA</sup></p><p className="lh-1 m-0">{receber.REC_DESCRICAO}</p></div></li>  
                    <li className="list-group-item p-2"><div className="row"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">CONTA</sup></p><p className="lh-1 m-0">{receber.CON_NOME}</p></div></li>  
                    <li className="list-group-item p-2"><div className="row"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">DESCRIÇÃO</sup></p><p className="lh-1 m-0">{receber.REE_DESCRICAO}</p></div></li>  
                    <li className="list-group-item p-2">    
                        <div className="row">
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA CADASTRO</sup></p><p className="lh-1 m-0">{formatarDataStr(receber.REE_DTCADASTRO)}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">BOLETO</sup></p><p className="lh-1 m-0">{receber.REE_BOLETO}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2">    
                        <div className="row">
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA VENCIMENTO</sup></p><p className="lh-1 m-0">{formatarDataStr(receber.REE_DTVENCIMENTO)}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA PAGAMENTO</sup></p><p className="lh-1 m-0">{formatarDataStr(receber.REE_DTPAGAMENTO)}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">PARCELA NÚMERO</sup></p><p className="lh-1 m-0"><Formata formato="0000">{receber.REE_PARCELANUM}</Formata></p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">TOTAL PARCELAS</sup></p><p className="lh-1 m-0"><Formata formato="0000">{receber.REE_PARCELAQTDE}</Formata></p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">VALOR</sup></p><p className="lh-1 m-0">
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
                                    />
                                </p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">VALOR PAGO</sup></p><p className="lh-1 m-0">
                                    <NumericFormat 
                                        value={parseFloat(receber.REE_VALORPAGO)}
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
                    <li className="list-group-item p-2"><div className="row"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">BAIXADO POR</sup></p><p className="lh-1 m-0">{receber.REE_BAIXADOPOR}</p></div></li>
                </ul>
                <div className="row gx-2 mb-5">
                    
                </div>             
            </div>
        </PettIf>
        {/* <BarraInferior active=""/> */}

        <PettModal show={showModal} fullscreen title="PRE BAIXA" fechar={false} className="modal-campos">
                <div className="container limit-width p-0">
                    <div className="row mb-0 mt-0 gx-1">
                        <PettFieldText size="col-12" label="CÓDIGO" name="REE_CODIGO" value={receber.REE_CODIGO} readOnly disabled/>
                        <PettFieldMoney size="col-12" label="VALOR" name="REE_VALOR" value={receber.REE_VALOR} readOnly disabled/>
                        <PettFieldMoney size="col-12" label="VALOR PAGO" name="REE_VALORPAGO" value={receber.REE_VALORPAGO} set={setReceber} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </div>
            <PettModal.Footer>
                <div className="container limit-width p-0">
                    <div className="d-flex gap-1 w-100">
                        <PettButton className="w-100 flex-fill" variant="red" size="lg" caption="Cancelar" click={() => setShowModal(false)}/>
                        <PettButton className="w-100 flex-fill" variant="green" size="lg" icone="done" caption="Salvar" click={() => btnSalvar()}/>
                    </div>
                </div>
            </PettModal.Footer>
        </PettModal>

    </>
}

export default ReceberId;