//Atualizacoes:
//2026.11.17 - Trocados os PettField* locais pelos do pett-componentes (PettFieldLoc dividido em codigo + descricao).
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal do pett-componentes.
//2026.11.18 - Incluido o import do PettMensagem do pett-componentes (era usado sem import).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Rodape dos modais: btn-group trocado por d-flex gap-1 (espaco entre os botoes).
//2026.11.18 - Data de nascimento: PettFieldMask trocado pelo PettFieldDate; enviada em aaaa-mm-dd (formatarDataIso).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
//2026.11.19 - Modais de formulario com a classe modal-campos (margem lateral menor, campos centralizados).
import { useContext, useEffect, useState } from "react"

import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from "../Api";
import { AuthContext } from '../Contextos/Auth';
import { formatarDataIso, tratarCatch } from "../Funcoes";

function ClientesForm({show,registro,fechar,salvar}) {
    const { usuario, usuarioLogin, logout } = useContext(AuthContext);
    const [ disableFields, setDisableFields ] = useState(false);
    const [ cliente, setCliente ] = useState(registro || { 
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
        CLI_STATUS: 'A',
        CLI_TABELAPRECO: 'V',
        CLI_TIPOPESSOA: 'J',
        CLI_USUARIO: '' 
    });

    const selectStatus = [
        {value: "A", label: "ATIVO" },
        {value: "I", label: "INATIVO" }
    ];

    const selectTipoPessoa = [
        {value: "F", label: "FISICA" },
        {value: "J", label: "JURIDICA" }
    ];

    const selectTabelaPreco = [
        {value: "V", label: "VENDA" },
        {value: "1", label: "TABELA 1" },
        {value: "2", label: "TABELA 2" },
        {value: "3", label: "TABELA 3" },
        {value: "4", label: "TABELA 4" },
        {value: "5", label: "TABELA 5" },
        {value: "6", label: "TABELA 6" }
    ];
    
    useEffect(() => {
        setDisableFields(false);
        // eslint-disable-next-line
    },[]);

    async function btnSalvar() {
        const formData = new FormData();
        formData.set('op','inserir');
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
        formData.set('CLI_VENDEDOR',usuario.vendedor);
        try {
            const response = await Api.post('firenet/clientes',formData);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yessss!','Cliente cadastrado com sucesso!');
            setCliente({ 
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
                CLI_STATUS: 'A',
                CLI_TABELAPRECO: 'V',
                CLI_TIPOPESSOA: 'J',
                CLI_USUARIO: '' 
            });
            salvar(response.data.msg); //devolve o registro do cliente para a tela que chamou esse form.
            fechar();
        } catch (error) {
            tratarCatch('ClientesForm btnSalvar',error,logout);
            console.log('CATCH',error);
        }
    }    

    return <>
        <PettModal show={show} fullscreen title="NOVO CLIENTE" fechar={false} className="modal-campos">
            <div className="container limit-width p-0">
                <div className="row my-0 g-1">
                    <PettFieldText size="col-6" label="CÓDIGO" name="CLI_CODIGO" value={cliente.CAI_CODIGO} readOnly disabled/>
                    <PettFieldDrop size="col-6" label="STATUS" name="CLI_STATUS" value={cliente.CLI_STATUS} set={setCliente} options={selectStatus} optionLabel="label" readOnly={disableFields} disabled={disableFields}/>
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
                    <PettFieldDrop size="col-6" label="TABELA DE PREÇO" name="CLI_TABELAPRECO" value={cliente.CLI_TABELAPRECO} set={setCliente} options={selectTabelaPreco} optionLabel="label" readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldDrop size="col-6" label="TIPO PESSOA" name="CLI_TIPOPESSOA" value={cliente.CLI_TIPOPESSOA} set={setCliente} options={selectTipoPessoa} optionLabel="label" readOnly={disableFields} disabled={disableFields}/>                        
                </div>
            </div>
            <PettModal.Footer>
                <div className="container limit-width d-flex gap-1 p-0">
                    <PettButton className="w-100 flex-fill" variant="red" size="lg" caption="Cancelar" click={fechar}/>
                    <PettButton className="w-100 flex-fill" variant="green" size="lg" icone="done" caption="Salvar" click={btnSalvar}/>
                </div>
            </PettModal.Footer>
        </PettModal>
    </>
}

export default ClientesForm;