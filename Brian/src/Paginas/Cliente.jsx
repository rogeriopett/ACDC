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
//2026.11.27 - Dados do cliente com o componente local CampoInfo dentro de um div campo-info-grupo (como os PettField*), no lugar do ul/li/p/sup.
//2026.11.27 - Mensagem de registro nao encontrado com o componente local NaoEncontrado (PettIcon no lugar do fa-record-vinyl; sem vh-100).
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
import CampoInfo from '../Componentes/CampoInfo';
import Loading from '../Componentes/Loading';
import NaoEncontrado from '../Componentes/NaoEncontrado';
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

        <Loading status={carregando}/>
        <NaoEncontrado show={!carregando && cliente.CLI_CODIGO<=0} mensagem="Não foi possível localizar o cliente."/>
        <PettIf condicional={cliente.CLI_CODIGO>0}>
            <div className="container-fluid limit-width py-2">
                <div className="campo-info-grupo mb-3">
                    <CampoInfo size="col-6" label="CÓDIGO" value={cliente.CLI_CODIGO}/>
                    <CampoInfo size="col-6" label="STATUS" value={cliente.CLI_STATUS}/>
                    <CampoInfo label="NOME / RAZÃO SOCIAL" value={cliente.CLI_NOME}/>
                    <CampoInfo label="CONTATO" value={cliente.CLI_CONTATO}/>
                    <CampoInfo label="EMAIL" value={cliente.CLI_EMAIL}/>
                    <CampoInfo size="col-6" label="CNPJ" value={cliente.CLI_CNPJ}/>
                    <CampoInfo size="col-6" label="CPF" value={cliente.CLI_CPF}/>
                    <CampoInfo size="col-6" label="INSCRIÇÃO ESTADUAL" value={cliente.CLI_IE}/>
                    <CampoInfo size="col-6" label="RG" value={cliente.CLI_RG}/>
                    <CampoInfo size="col-6" label="FONE 01" value={cliente.CLI_FONE1}/>
                    <CampoInfo size="col-6" label="FONE 02" value={cliente.CLI_FONE2}/>
                    <CampoInfo size="col-6" label="FONE 03" value={cliente.CLI_FONE3}/>
                    <CampoInfo size="col-6" label="DT. NASC." value={formatarDataStr(cliente.CLI_DTNASC)}/>
                    <CampoInfo label="ENDEREÇO" value={cliente.CLI_ENDERECO}/>
                    <CampoInfo size="col-4" label="NÚMERO" value={cliente.CLI_NUMERO}/>
                    <CampoInfo size="col-8" label="COMPLEMENTO" value={cliente.CLI_COMPLEMENTO}/>
                    <CampoInfo label="BAIRRO" value={cliente.CLI_BAIRRO}/>
                    <CampoInfo label="CIDADE" value={cliente.CLI_CIDADE}/>
                    <CampoInfo size="col-6" label="ESTADO" value={cliente.CLI_ESTADO}/>
                    <CampoInfo size="col-6" label="CEP" value={cliente.CLI_CEP}/>
                    <CampoInfo size="col-6" label="TIPO PESSOA" value={cliente.CLI_TIPOPESSOA}/>
                    <CampoInfo size="col-6" label="TABELA DE PREÇO" value={cliente.CLI_TABELAPRECO}/>
                    <CampoInfo size="col-6" label="DATA ATUALIZAÇÃO" value={formatarDataStr(cliente.CLI_DTATUALIZACAO)}/>
                    <CampoInfo size="col-6" label="USUÁRIO" value={cliente.CLI_USUARIO}/>
                    <CampoInfo label="OBSERVAÇÕES"><section dangerouslySetInnerHTML={{ __html: cliente.CLI_OBSERVACOES || '-' }} /></CampoInfo>
                </div>        
            </div>
        </PettIf>

        <PettModal show={showModal} fullscreen title="EDITAR CLIENTE" fechar={false} className="modal-campos">
            <div className="container limit-width p-0">
                <div className="row mb-0 mt-0 g-1 mt-2">
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