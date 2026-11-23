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
//2026.11.18 - Data de nascimento: PettFieldMask trocado pelo PettFieldDate, enviada em aaaa-mm-dd; corrigido o envio, que lia CLI_NASC (inexistente) e apagava a data.
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
//2026.11.19 - Modais de formulario com a classe modal-campos (margem lateral menor, campos centralizados).
import { useContext, useEffect, useState } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';
import moment from 'moment';

import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import { ParametrosContext } from '../Contextos/Parametros';
import Loading from '../Componentes/Loading';
import { formatarDataIso, formatarDataStr, tratarCatch } from '../Funcoes';

function Cliente(props) {
    //const {  } = useContext(AuthContext);
    const navigate = useNavigate();
    const { usuarioLogin, logout } = useContext(AuthContext);
    const { parametros } = useContext(ParametrosContext);
    const { id } = useParams();
    const [ carregando, setCarregando ] = useState(true);
    const [ disableFields, setDisableFields ] = useState(false); //false=tras aberto para edicao.
    const [ showModal, setShowModal ] = useState(false);
    const [ cliente, setCliente ] = useState({
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
    
    const SelectItemsSTATUS = [
        {value: "A", label: "ATIVO" },
        {value: "I", label: "INATIVO" }
    ];

    const SelectItemsTIPOPESSOA = [
        {value: "F", label: "FISICA" },
        {value: "J", label: "JURIDICA" }
    ];

    const SelectItemsTABELAPRECO = [
        {value: "V", label: "VENDA" },
        {value: "1", label: "TABELA 1" },
        {value: "2", label: "TABELA 2" },
        {value: "3", label: "TABELA 3" },
        {value: "4", label: "TABELA 4" },
        {value: "5", label: "TABELA 5" },
        {value: "6", label: "TABELA 6" }
    ];

    async function VerCliente() {
        setCarregando(true);       
        var formData = new FormData();
        formData.set('op', 'visualizar');
        formData.set('CLI_CODIGO', id);

        try {
            const response = await Api.post('firenet/clientes',formData);
            if (response.data.erro==='N') {
                setCliente(response.data.msg);
            } else {
                //setCliente({CLI_CODIGO:0});
                const CLI_CODIGO=0;
                setCliente({...cliente, CLI_CODIGO});
                if (response.data.token==="expirado") {
                    logout();
                }
            }
            setCarregando(false);
        } catch (error) {
            tratarCatch('Cliente verCliente',error,logout);
            setCarregando(false);
        }
    }
   
    useEffect(() => {
        setDisableFields(false);
        VerCliente();
        // eslint-disable-next-line
    },[]);

    function btnEditar() {
        setShowModal(true);
    }

    async function btnSalvar() {
        const formData = new FormData();
        formData.set('op','atualizar');
        formData.set('CLI_BAIRRO',cliente.CLI_BAIRRO || '');
        formData.set('CLI_CEP',cliente.CLI_CEP || '');
        formData.set('CLI_CIDADE',cliente.CLI_CIDADE || '');
        formData.set('CLI_CNPJ',cliente.CLI_CNPJ || '');
        formData.set('CLI_CODIGO',cliente.CLI_CODIGO);
        formData.set('CLI_COMPLEMENTO',cliente.CLI_COMPLEMENTO || '');
        formData.set('CLI_CONTATO',cliente.CLI_CONTATO || '');
        formData.set('CLI_CPF',cliente.CLI_CPF || '');
        formData.set('CLI_DTNASC',formatarDataIso(cliente.CLI_DTNASC));
        formData.set('CLI_EMAIL',cliente.CLI_EMAIL || '');
        formData.set('CLI_ENDERECO',cliente.CLI_ENDERECO || '');
        formData.set('CLI_ESTADO',cliente.CLI_ESTADO || '');
        formData.set('CLI_FONE1',cliente.CLI_FONE1 || '');
        formData.set('CLI_FONE2',cliente.CLI_FONE2 || '');
        formData.set('CLI_FONE3',cliente.CLI_FONE3 || '');
        formData.set('CLI_IE',cliente.CLI_IE || '');
        formData.set('CLI_NOME',cliente.CLI_NOME || '');
        formData.set('CLI_NUMERO',cliente.CLI_NUMERO || '');
        formData.set('CLI_RG',cliente.CLI_RG || '');
        formData.set('CLI_STATUS',cliente.CLI_STATUS);
        formData.set('CLI_TABELAPRECO',cliente.CLI_TABELAPRECO);
        formData.set('CLI_TIPOPESSOA',cliente.CLI_TIPOPESSOA);
        formData.set('CLI_USUARIO',usuarioLogin);
        const CLI_USUARIO = usuarioLogin;
        const CLI_DTATUALIZACAO = moment().format('DD/MM/YYYY');
        setCliente({...cliente, CLI_DTATUALIZACAO, CLI_USUARIO});
        try {
            const response = await Api.post('firenet/clientes',formData);
            if (response.data.erro==='S') throw response;
            setShowModal(false); 
            PettMensagem.sucesso('Yesss!','Dados salvos com sucesso.');
        } catch (error) {
            tratarCatch('Cliente salvar',error,logout);
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
                        <div className="flex-grow-1 text-truncate"><p className="text-truncate fw-bold text-center mt-3">DADOS DO CLIENTE</p></div>
                        <div>
                            <div className="link-icone me-3">
                                <PettIf condicional={parametros.PAR_CLIALTERAR==="S"}>
                                    <Link to='' onClick={btnEditar}><i className="fa fa-2x fa-fw fa-pencil"></i></Link>
                                </PettIf>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <PettIf condicional={cliente.CLI_CODIGO<=0}>
            <div className="container limit-width vh-100 d-flex justify-content-center align-items-center">
                <p className="text-center lead"><span style={{fontSize: '7em'}} className="texto-suave"><i className="fa fa-fw fa-record-vinyl"></i></span><br/>Não foi possível localizar o cliente.</p>
            </div>  
        </PettIf>
        <PettIf condicional={cliente.CLI_CODIGO>0}>
            <Loading status={carregando}/>
            <div className="container-fluid limit-width py-2">
                <ul className="list-group mb-3">  
                    <li className="list-group-item p-2">    
                        <div className="row">
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">CÓDIGO</sup></p><p className="lh-1 m-0">{cliente.CLI_CODIGO}</p>
                            </div>    
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">STATUS</sup></p><p className="lh-1 m-0">{cliente.CLI_STATUS}</p>
                            </div>      
                        </div>  
                    </li>                 
                    <li className="list-group-item p-2"><div className="row"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">NOME / RAZÃO SOCIAL</sup></p><p className="lh-1 m-0">{cliente.CLI_NOME}</p></div></li>  
                    <li className="list-group-item p-2"><div className="row"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">CONTATO</sup></p><p className="lh-1 m-0">{cliente.CLI_CONTATO}</p></div></li>  
                    <li className="list-group-item p-2"><div className="row"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">EMAIL</sup></p><p className="lh-1 m-0">{cliente.CLI_EMAIL}</p></div></li>  
                    <li className="list-group-item p-2">    
                        <div className="row">
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">CNPJ</sup></p><p className="lh-1 m-0">{cliente.CLI_CNPJ}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">CPF</sup></p><p className="lh-1 m-0">{cliente.CLI_CPF}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2">    
                        <div className="row">
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">INSCRIÇÃO ESTADUAL</sup></p><p className="lh-1 m-0">{cliente.CLI_IE}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">RG</sup></p><p className="lh-1 m-0">{cliente.CLI_RG}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">FONE 01</sup></p><p className="lh-1 m-0">{cliente.CLI_FONE1}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">FONE 02</sup></p><p className="lh-1 m-0">{cliente.CLI_FONE2}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">FONE 03</sup></p><p className="lh-1 m-0">{cliente.CLI_FONE3}</p>
                            </div>      
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DT. NASC.</sup></p><p className="lh-1 m-0">{formatarDataStr(cliente.CLI_DTNASC)}</p>
                            </div>    
                        </div>  
                    </li>
                    <li className="list-group-item p-2"><div className="row"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">ENDEREÇO</sup></p><p className="lh-1 m-0">{cliente.CLI_ENDERECO}</p></div></li>
                    <li className="list-group-item p-2">    
                        <div className="row">      
                            <div className="col-4">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">NÚMERO</sup></p><p className="lh-1 m-0">{cliente.CLI_NUMERO}</p>
                            </div>      
                            <div className="col-4">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">COMPLEMENTO</sup></p><p className="lh-1 m-0">{cliente.CLI_COMPLEMENTO}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2"><div className="row"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">BAIRRO</sup></p><p className="lh-1 m-0">{cliente.CLI_BAIRRO}</p></div></li>
                    <li className="list-group-item p-2"><div className="row"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">CIDADE</sup></p><p className="lh-1 m-0">{cliente.CLI_CIDADE}</p></div></li>
                    <li className="list-group-item p-2">    
                        <div className="row">
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">ESTADO</sup></p><p className="lh-1 m-0">{cliente.CLI_ESTADO}</p>
                            </div>    
                            <div className="col-4">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">CEP</sup></p><p className="lh-1 m-0">{cliente.CLI_CEP}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2">    
                        <div className="row">
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">TIPO PESSOA</sup></p><p className="lh-1 m-0">{cliente.CLI_TIPOPESSOA}</p>
                            </div>    
                            <div className="col-4">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">TABELA DE PREÇO</sup></p><p className="lh-1 m-0">{cliente.CLI_TABELAPRECO}</p>
                            </div>    
                        </div>  
                    </li> 
                    <li className="list-group-item p-2">    
                        <div className="row">
                            <div className="col-6">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">DATA ATUALIZAÇÃO</sup></p><p className="lh-1 m-0">{formatarDataStr(cliente.CLI_DTATUALIZACAO)}</p>
                            </div>    
                            <div className="col-4">
                                <p className="lh-1 m-0 mt-1"><sup className="texto-suave">USUÁRIO</sup></p><p className="lh-1 m-0">{cliente.CLI_USUARIO}</p>
                            </div>    
                        </div>  
                    </li> 

                    <li className="list-group-item p-2"><p className="lh-1 m-0 mt-1"><sup className="texto-suave">OBSERVAÇÕES</sup></p><span className="lh-1 m-0"><section dangerouslySetInnerHTML={{ __html: cliente.CLI_OBSERVACOES || '-' }} /></span></li>
                </ul>
                <div className="row gx-2 mb-5">
                    
                </div>             
            </div>
        </PettIf>
        {/* <BarraInferior active=""/> */}

        <PettModal show={showModal} fullscreen title="EDITAR CLIENTE" fechar={false} className="modal-campos">
                <div className="container limit-width p-0">
                    <div className="row mb-0 mt-0 gx-1 mt-2">
                        <PettFieldText size="col-6" label="CÓDIGO" name="CLI_CODIGO" value={cliente.CLI_CODIGO} readOnly disabled/>
                        <PettFieldDrop size="col-6" label="STATUS" name="CLI_STATUS" value={cliente.CLI_STATUS} set={setCliente} options={SelectItemsSTATUS} optionLabel="label" readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-12" label="NOME / RAZÃO SOCIAL" name="CLI_NOME" value={cliente.CLI_NOME} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-12" label="CONTATO" name="CLI_CONTATO" value={cliente.CLI_CONTATO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-12" label="EMAIL" name="CLI_EMAIL" value={cliente.CLI_EMAIL} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMask size="col-6" label="CNPJ" name="CLI_CNPJ" value={cliente.CLI_CNPJ} set={setCliente} readOnly={disableFields} disabled={disableFields} mask="99.999.999/9999-99"/>
                        <PettFieldMask size="col-6" label="CPF" name="CLI_CPF" value={cliente.CLI_CPF} set={setCliente} readOnly={disableFields} disabled={disableFields} mask="999.999.999-99"/>
                        <PettFieldText size="col-6" label="INSCRIÇÃO ESTADUAL" name="CLI_IE" value={cliente.CLI_IE} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-6" label="RG" name="CLI_RG" value={cliente.CLI_RG} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMask size="col-6" label="FONE 01" name="CLI_FONE1" value={cliente.CLI_FONE1} set={setCliente} readOnly={disableFields} disabled={disableFields} mask="(999) 99999-9999"/>
                        <PettFieldMask size="col-6" label="FONE 02" name="CLI_FONE2" value={cliente.CLI_FONE2} set={setCliente} readOnly={disableFields} disabled={disableFields} mask="(999) 99999-9999"/>
                        <PettFieldMask size="col-6" label="FONE 03" name="CLI_FONE3" value={cliente.CLI_FONE3} set={setCliente} readOnly={disableFields} disabled={disableFields} mask="(999) 99999-9999"/>
                        <PettFieldDate size="col-6" label="DT. NASC." name="CLI_DTNASC" value={cliente.CLI_DTNASC} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-12" label="ENDEREÇO" name="CLI_ENDERECO" value={cliente.CLI_ENDERECO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-6" label="NÚMERO" name="CLI_NUMERO" value={cliente.CLI_NUMERO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldMask size="col-6" label="CEP" name="CLI_CEP" value={cliente.CLI_CEP} set={setCliente} readOnly={disableFields} disabled={disableFields} mask="99999-999"/>
                        <PettFieldText size="col-12" label="COMPLEMENTO" name="CLI_COMPLEMENTO" value={cliente.CLI_COMPLEMENTO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-12" label="BAIRRO" name="CLI_BAIRRO" value={cliente.CLI_BAIRRO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-12" label="CIDADE" name="CLI_CIDADE" value={cliente.CLI_CIDADE} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-6" label="ESTADO" name="CLI_ESTADO" value={cliente.CLI_ESTADO} set={setCliente} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-6" label="TABELA DE PREÇO" name="CLI_TABELAPRECO" value={cliente.CLI_TABELAPRECO} set={setCliente} options={SelectItemsTABELAPRECO} optionLabel="label" readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldDrop size="col-6" label="TIPO PESSOA" name="CLI_TIPOPESSOA" value={cliente.CLI_TIPOPESSOA} set={setCliente} options={SelectItemsTIPOPESSOA} optionLabel="label" readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </div>
            <PettModal.Footer>
                <div className="container limit-width d-flex gap-1 p-0">
                    <PettButton className="w-100 flex-fill" variant="red" size="lg" caption="Cancelar" click={() => setShowModal(false)}/>
                    <PettButton className="w-100 flex-fill" variant="green" size="lg" icone="done" caption="Salvar" click={() => btnSalvar()}/>
                </div>
            </PettModal.Footer>
        </PettModal>

    </>
}

export default Cliente;