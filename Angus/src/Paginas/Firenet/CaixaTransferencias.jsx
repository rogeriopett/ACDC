import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldMoney } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import Api from '../../Api';
import BarraSuperior from '../../Componentes/BarraSuperior';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Rodape from '../../Componentes/Rodape';
import VendedoresLoc from '../../Componentes/Localizadores/VendedoresLoc';
import { tratarCatch } from '../../Funcoes';
import { useLocalizar, VENDEDORES } from '../../Hooks/useLocalizar';

const mapaVendedores   = { VEN_CODIGO: 'VEN_CODIGO', VEN_NOME: 'VEN_NOME' };

function CaixaTransferencias() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const [ transferencia, setTransferencia ] = useState({ VEN_CODIGO: '', VEN_NOME: '', VALOR: '0' });
    const [ vendedor, setVendedor ] = useState({ VEN_CODIGO: '', VEN_NOME: '', VEN_SALDOATUAL: '' });
    const [ showVendedoresLoc, setShowVendedoresLoc ] = useState(false);

    async function getVendedor() {
        var formData = new FormData();
        formData.set('op','saldo');
        formData.set('empresa',empresaSelecionada.value);
        try {
            const response = await Api.post('firenet/vendedores',formData);
            if (response.data.erro==='S') throw response;
            setVendedor(response.data.msg);
        } catch (error) {
            tratarCatch('CaixaTransferencis getVendedor',error,logout);
        }
    }

    useEffect(() => {
        getVendedor();
    },[]);
   
    async function transferir() {
        if (!transferencia.VEN_CODIGO) {
            PettMensagem.erro('Tsc, tsc, tsc!','Selecione o vendedor para quem você deseja transferir.');
            return;
        }
        if (String(transferencia.VEN_CODIGO) === String(vendedor.VEN_CODIGO)) {
            PettMensagem.erro('Tsc, tsc, tsc!','Não é possível transferir para você mesmo.');
            return;
        }
        if (transferencia.VALOR <= 0) {
            PettMensagem.erro('Tsc, tsc, tsc!','Informe o valor que você deseja transferir.');
            return;
        }
        if (transferencia.VALOR > vendedor.VEN_SALDOATUAL) {
            PettMensagem.erro('Tsc, tsc, tsc!','O valor informado é maior que o saldo atual.');
            return;
        }
        const confirmou = await PettMensagem.confirmar('Confirma Transferência?', 'Tem certeza que deseja transferir '+transferencia.VALOR+' para '+transferencia.VEN_NOME+'?');
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','transferir');
            formData.set('empresa',empresaSelecionada.value ?? '');
            formData.set('de',vendedor.VEN_CODIGO ?? '');
            formData.set('para',transferencia.VEN_CODIGO ?? '');
            formData.set('valor',transferencia.VALOR ?? '');
            try {
                const response = await Api.post('firenet/caixa',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!',response.data.msg);
                setTransferencia({ VEN_CODIGO: '', VEN_NOME: '', VALOR: '0' });
                getVendedor();
            } catch (error) {
                tratarCatch('CaixaTransferencias transferir',error,logout);
            }
        }        
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Caixa - Transferências de Saldos" linkBack="/"/>
        <ColunaCentral left="false" right="false" className="container-fluid">
            <p className="lead text-center pt-3">Vendedor: {vendedor.VEN_CODIGO+' - '+vendedor.VEN_NOME}</p>
            <div className="d-flex justify-content-center">
                <div className="row mb-3 g-1" style={{ width: '500px'}}>
                    <PettFieldMoney size="col-12" label="SALDO ATUAL" name="VEN_SALDOATUAL" value={vendedor.VEN_SALDOATUAL} readOnly disabled/>
                    <PettFieldLoc size="col-4" label="VENDEDOR" name="VEN_CODIGO" value={transferencia.VEN_CODIGO} set={setTransferencia} onClick={() => setShowVendedoresLoc(true)} onBlur={(e) => localizar(VENDEDORES, e.target.value, setTransferencia, mapaVendedores)} />
                    <PettFieldText size="col-8" label="VENDEDOR" name="VEN_NOME" value={transferencia.VEN_NOME} set={setTransferencia} readOnly disabled />
                    <PettFieldMoney size="col-12 mb-4" label="VALOR A TRANSFERIR" name="VALOR" value={transferencia.VALOR} set={setTransferencia}/>
                    {/* <PettButton caption="Transferir" icone="done" click={() => transferir() } variant="dark" /> */}

                    <PettButton caption="Transferir" className="btn btn-success" icone="done_branco" click={transferir} variant="green" size="lg"/>
                </div>
            </div>
        </ColunaCentral>
        <Rodape />
        <VendedoresLoc showModal={showVendedoresLoc} onCloseModal={(data) => { selecionar(data, setTransferencia, mapaVendedores); setShowVendedoresLoc(false); }}/>
    </>
}

export default CaixaTransferencias;