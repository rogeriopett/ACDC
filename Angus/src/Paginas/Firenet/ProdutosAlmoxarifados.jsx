import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import Api from '../../Api';
import { formatarAtivoInativo, tratarCatch } from '../../Funcoes';

function ProdutosAlmoxarifados(props) {
    const { produto, showModal, onCloseModal } = props;
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const [ almoxarifados, setAlmoxarifados ] = useState([]);
    
    useEffect(() => {
        // if (produto) {
        if (showModal && produto?.PRO_CODIGO && produto.PRO_CODIGO !== '0') {
            estoque();
        }
    }, [showModal,produto.PRO_CODIGO]);

    async function estoque() {
        const formData = new FormData();
        formData.set('op','estoque');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('PRO_CODIGO', produto.PRO_CODIGO ?? '');
        try {
            const response = await Api.post('firenet/produtos',formData);
            if (response.data.erro==='S') throw response;
            setAlmoxarifados(response.data.msg);
        } catch (error) {
            tratarCatch('ProdutosAlmoxarifados estoque',error,logout);
        }
    }

    function fechar(e) {
        onCloseModal();
    }
 
    return <>
        <PettModal show={showModal} title="Quantidades por Almoxarifado..." size="lg" fechar={false}>
            <div className="row g-1">
                <div className="col-12">Código: <strong>{produto.PRO_CODIGO}</strong></div>
                <div className="col-12">Nome: <strong>{produto.PRO_NOME}</strong></div>
                <div className="col-12 mb-3">Estoque Atual: <strong>{produto.PRO_ESTOQUEATUAL}</strong></div>
            </div>
            {/* <PettGrid className="mt-4" listagem={almoxarifados} rowSelect={onRowSelect}> */}
            <PettGrid className="mt-4" listagem={almoxarifados} >
                <PettColumn field="PRQ_ALMOXARIFADO" header="Código" ></PettColumn>
                <PettColumn field="ALM_DESCRICAO" header="Almoxarifado" ></PettColumn>
                <PettColumn field="ALM_STATUS" header="Status" body={(rowData) => formatarAtivoInativo(rowData,'ALM_STATUS')} align="center" alignHeader="center"></PettColumn>
                <PettColumn field="PRQ_QUANTIDADE" header="Estoque Atual" align="right" alignHeader="right"></PettColumn>
            </PettGrid>

            <PettModal.Footer className='bg-tema2 border-0 p-0 px-1'>
                <div className="w-100 d-flex">
                    <PettButton caption="Fechar" icone="cancel" click={(e) => fechar(e) } />
                </div>
            </PettModal.Footer>

        </PettModal>    
    </>
}

export default ProdutosAlmoxarifados;