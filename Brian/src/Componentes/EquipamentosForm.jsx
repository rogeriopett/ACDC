//Atualizacoes:
//2026.11.17 - Trocados os PettField* locais pelos do pett-componentes (PettFieldLoc dividido em codigo + descricao).
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal do pett-componentes.
//2026.11.18 - PettMensagem local (sweetalert2) trocado pelo PettMensagem do pett-componentes.
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Rodape dos modais: btn-group trocado por d-flex gap-1 (espaco entre os botoes).
//2026.11.18 - Datas (geral, filtro, limpeza): PettFieldMask trocado pelo PettFieldDate; enviadas em aaaa-mm-dd (formatarDataIso).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
//2026.11.19 - Modais de formulario com a classe modal-campos (margem lateral menor, campos centralizados).
import { useContext, useEffect, useState } from "react"

import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from "../Api";
import { AuthContext } from '../Contextos/Auth';
import ClientesLoc from "./ClientesLoc";
import ConsultarPlaca from "./ConsultarPlaca/ConsultarPlaca";
import { formatarDataIso, tratarCatch } from "../Funcoes";

function EquipamentosForm({show,registro,fechar,salvar}) {
    const { logout } = useContext(AuthContext);
    const [ showModalPlaca, setShowModalPlaca ] = useState(false);
    const [ showClientesLoc, setShowClientesLoc ] = useState(false);
    const [ equipamento, setEquipamento ] = useState({ 
        EQP_ACESSORIOS: '',
        EQP_ANOFAB: null,
        EQP_ANOMOD: null,
        EQP_CHASSI: '',
        EQP_CLIENTE: '',
        EQP_CODIGO: '',
        EQP_COMBUSTIVEL: '',
        EQP_COR: '',
        EQP_DESCRICAO: '',
        EQP_DTFILTRO: null,
        EQP_DTGERAL: '',
        EQP_DTLIMPEZA: '',
        EQP_LOCALIZACAO: '',
        EQP_MARCA: '',
        EQP_MODELO: '',
        EQP_REVENDEDOR: '',
        EQP_SERIE: null,
        EQP_STATUS: 'A',
        EQP_TAMANHO: '',
        CLI_NOME: '',
    });

    const selectStatus = [
        {value: "A", label: "ATIVO" },
        {value: "I", label: "INATIVO" }
    ];

    async function salvarEquipamento() {
        const formData = new FormData();
        formData.set('op','inserir');
        formData.set('EQP_ACESSORIOS',equipamento.EQP_ACESSORIOS || '');
        formData.set('EQP_ANOFAB',equipamento.EQP_ANOFAB || '');
        formData.set('EQP_ANOMOD',equipamento.EQP_ANOMOD || '');
        formData.set('EQP_CHASSI',equipamento.EQP_CHASSI || '');
        formData.set('EQP_CLIENTE',equipamento.EQP_CLIENTE);
        formData.set('EQP_CODIGO',equipamento.EQP_CODIGO);
        formData.set('EQP_COMBUSTIVEL',equipamento.EQP_COMBUSTIVEL || '');
        formData.set('EQP_COR',equipamento.EQP_COR || '');
        formData.set('EQP_DESCRICAO',equipamento.EQP_DESCRICAO || '');
        formData.set('EQP_DTFILTRO',formatarDataIso(equipamento.EQP_DTFILTRO));
        formData.set('EQP_DTGERAL',formatarDataIso(equipamento.EQP_DTGERAL));
        formData.set('EQP_DTLIMPEZA',formatarDataIso(equipamento.EQP_DTLIMPEZA));
        formData.set('EQP_LOCALIZACAO',equipamento.EQP_LOCALIZACAO || '');
        formData.set('EQP_MARCA',equipamento.EQP_MARCA || '');
        formData.set('EQP_MODELO',equipamento.EQP_MODELO || '');
        formData.set('EQP_REVENDEDOR',equipamento.EQP_REVENDEDOR || '');
        formData.set('EQP_SERIE',equipamento.EQP_SERIE || '');
        formData.set('EQP_STATUS',equipamento.EQP_STATUS || '');
        formData.set('EQP_TAMANHO',equipamento.EQP_TAMANHO || '');
        try {
            const response = await Api.post('firenet/equipamentos',formData);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yessss!','Equipamento cadastrado com sucesso!');
            setEquipamento({ 
                EQP_ACESSORIOS: '',
                EQP_ANOFAB: null,
                EQP_ANOMOD: null,
                EQP_CHASSI: '',
                EQP_CLIENTE: '',
                EQP_CODIGO: '',
                EQP_COMBUSTIVEL: '',
                EQP_COR: '',
                EQP_DESCRICAO: '',
                EQP_DTFILTRO: '',
                EQP_DTGERAL: '',
                EQP_DTLIMPEZA: '',
                EQP_LOCALIZACAO: '',
                EQP_MARCA: '',
                EQP_MODELO: '',
                EQP_REVENDEDOR: '',
                EQP_SERIE: null,
                EQP_STATUS: 'A',
                EQP_TAMANHO: '',
                CLI_NOME: '',
            });
            salvar(response.data.msg); //devolve o registro para a tela que chamou esse form.
            fechar();
        } catch(error) {
            tratarCatch('EquipamentosForm salvarEquipamento',error,logout);
        }
    }    

    function consultarPlacaClose() {
        setShowModalPlaca(false);
    }

    async function consultarPlacaSalvar(dados) {
        // const formData = new FormData();
        // formData.set('op','inserir');
        // formData.set()
        setEquipamento({
            ...equipamento, 
            EQP_ANOFAB: dados.ano,
            EQP_ANOMOD: dados.ano_modelo,
            EQP_CHASSI: dados.extra.chassi,
            EQP_COMBUSTIVEL: dados.combustivel.toUpperCase(), 
            EQP_COR: dados.cor.toUpperCase(), 
            EQP_DESCRICAO: dados.MODELO.toUpperCase(),
            EQP_MARCA: dados.MARCA.toUpperCase(), 
            EQP_SERIE: dados.placa_consultada.toUpperCase(),
            EQP_MODELO: dados.MODELO.toUpperCase(),
        });
        setShowModalPlaca(false);
    }

    useEffect(() => {
        if (registro.SER_CLIENTE) {
            setEquipamento((prevEquipamento) => {
                return {...prevEquipamento, EQP_CLIENTE: registro.SER_CLIENTE, CLI_NOME: registro.CLI_NOME}
            });
        }
    },[registro])

    //funcoes do modal de clientes.
    async function clientesLocalizar(e) {
        if (e.target.value!=='') {
            const formData = new FormData();
            formData.set('op','localizar');
            formData.set('CLI_CODIGO',e.target.value);
            try {
                const response = await Api.post('firenet/clientes',formData);
                if (response.data.erro==='S') throw response;
                const novo = {
                    ...equipamento, 
                    EQP_CLIENTE: e.target.value, 
                    CLI_NOME: response.data.msg.CLI_NOME, 
                };
                setEquipamento(novo);
            } catch(error) {
                const novo = {
                    ...equipamento, 
                    EQP_CLIENTE: '', 
                    CLI_NOME: '', 
                };
                setEquipamento(novo);
                tratarCatch('EquipamentosForm clientesLocalizar',error,logout);
            }
        }
    }

    function clientesLocClose(event, data) {
        if (data.LOC===true) {
            setEquipamento({
                ...equipamento, 
                EQP_CLIENTE: data.CLI_CODIGO, 
                CLI_NOME: data.CLI_NOME
            });
        }
        setShowClientesLoc(false);
    }    
    
    // function equipamentosFormSave(equipamentoAtualizado) {
    //     setServico({
    //         ...servico, 
    //         SER_EQUIPAMENTO: equipamentoAtualizado.EQP_CODIGO, 
    //         EQP_CHASSI: equipamentoAtualizado.EQP_CHASSI,
    //         EQP_COMBUSTIVEL: equipamentoAtualizado.EQP_COMBUSTIVEL,
    //         EQP_COR: equipamentoAtualizado.EQP_COR,
    //         EQP_DESCRICAO: equipamentoAtualizado.EQP_DESCRICAO,
    //         EQP_MARCA: equipamentoAtualizado.EQP_MARCA,
    //         EQP_MODELO: equipamentoAtualizado.EQP_MODELO,
    //         EQP_SERIE: equipamentoAtualizado.EQP_SERIE,
    //     });
    // }
    function cancelar() {
        setEquipamento({
            EQP_ACESSORIOS: '',
            EQP_ANOFAB: null,
            EQP_ANOMOD: null,
            EQP_CHASSI: '',
            EQP_CLIENTE: '',
            EQP_CODIGO: '',
            EQP_COMBUSTIVEL: '',
            EQP_COR: '',
            EQP_DESCRICAO: '',
            EQP_DTFILTRO: null,
            EQP_DTGERAL: null,
            EQP_DTLIMPEZA: '',
            EQP_LOCALIZACAO: '',
            EQP_MARCA: '',
            EQP_MODELO: '',
            EQP_REVENDEDOR: '',
            EQP_SERIE: null,
            EQP_STATUS: 'A',
            EQP_TAMANHO: '',
            CLI_NOME: '',
        });
        fechar(); //funcao passada no props.
    }

    return <>
        <PettModal show={show} fullscreen title="NOVO EQUIPAMENTO" fechar={false} className="modal-campos">
            <div className="container limit-width p-0">
                <div className="row mb-0 mt-2 g-1">
                    <PettFieldText size="col-6" label="CÓDIGO" name="EQP_CODIGO" value={equipamento.EQP_CODIGO} set={setEquipamento} readOnly disabled/>
                    <PettFieldDrop size="col-6" label="STATUS" name="EQP_STATUS" value={equipamento.EQP_STATUS} set={setEquipamento} options={selectStatus}/>
                    <PettFieldText size="col-12" label="DESCRIÇÃO" name="EQP_DESCRICAO" value={equipamento.EQP_DESCRICAO} set={setEquipamento}/>
                    <PettFieldText size="col-6" label="ANO FAB." name="EQP_ANOFAB" value={equipamento.EQP_ANOFAB} set={setEquipamento}/>
                    <PettFieldText size="col-6" label="ANO MOD." name="EQP_ANOMOD" valuee={equipamento.EQP_ANOMOD} set={setEquipamento}/>
                    <PettFieldMask size="col-6" label="SÉRIE / PLACA." name="EQP_SERIE" value={equipamento.EQP_SERIE} set={setEquipamento} mask={import.meta.env.VITE_MASCARA_PLACA}/>
                    <PettFieldText size="col-6" label="MARCA" name="EQP_MARCA" value={equipamento.EQP_MARCA} set={setEquipamento}/>
                    <PettFieldText size="col-6" label="MODELO" name="EQP_MODELO" value={equipamento.EQP_MODELO} set={setEquipamento}/>
                    <PettFieldText size="col-6" label="COMBUSTÍVEL" name="EQP_COMBUSTIVEL" value={equipamento.EQP_COMBUSTIVEL} set={setEquipamento}/>
                    <PettFieldText size="col-6" label="COR" name="EQP_COR" value={equipamento.EQP_COR} set={setEquipamento}/>
                    <PettFieldText size="col-6" label="CHASSI" name="EQP_CHASSI" value={equipamento.EQP_CHASSI} set={setEquipamento}/>
                    <PettFieldDate size="col-6" label="DT. GERAL" name="EQP_DTGERAL" value={equipamento.EQP_DTGERAL} set={setEquipamento}/>
                    <PettFieldDate size="col-6" label="DT. FILTRO" name="EQP_DTFILTRO" value={equipamento.EQP_DTFILTRO} set={setEquipamento}/>
                    <PettFieldDate size="col-6" label="DT. LIMPEZA" name="EQP_DTLIMPEZA" value={equipamento.EQP_DTLIMPEZA} set={setEquipamento}/>
                    <PettFieldText size="col-6" label="ACESSÓRIOS" name="EQP_ACESSORIOS" value={equipamento.EQP_ACESSORIOS} set={setEquipamento}/>
                    <PettFieldText size="col-6" label="LOCALIZAÇÃO" name="EQP_LOCALIZACAO" value={equipamento.EQP_LOCALIZACAO} set={setEquipamento}/>
                    <PettFieldText size="col-6" label="REVENDEDOR" name="EQP_REVENDEDOR" value={equipamento.EQP_REVENDEDOR} set={setEquipamento}/>
                    <PettFieldText size="col-6" label="TAMANHO" name="EQP_TAMANHO" value={equipamento.EQP_TAMANHO} set={setEquipamento}/>
                    <PettFieldLoc size="col-4" label="CLIENTE" name="EQP_CLIENTE" value={equipamento.EQP_CLIENTE} keyfilter="int" set={setEquipamento} onClick={() => setShowClientesLoc(true)} onBlur={(e) => clientesLocalizar(e)}/>
                    <PettFieldText size="col-8" label="NOME CLIENTE" name="CLI_NOME" value={equipamento.CLI_NOME} readOnly disabled/>
                </div>
            </div>
            <PettModal.Footer>
                <div className="container limit-width d-flex gap-1 p-0">
                    <PettButton className="w-100 flex-fill" variant="blue" size="lg" caption="Consultar Placa" click={() => setShowModalPlaca(true)}/>
                    <PettButton className="w-100 flex-fill" variant="red" size="lg" caption="Cancelar" click={() => cancelar()}/>
                    <PettButton className="w-100 flex-fill" variant="green" size="lg" icone="done" caption="Salvar" click={() => salvarEquipamento()}/>
                </div>
            </PettModal.Footer>
        </PettModal>
        <ConsultarPlaca show={showModalPlaca} fechar={consultarPlacaClose} salvar={consultarPlacaSalvar}/>
        <ClientesLoc showModal={showClientesLoc} onCloseModal={clientesLocClose}/>
    </>
}

export default EquipamentosForm;