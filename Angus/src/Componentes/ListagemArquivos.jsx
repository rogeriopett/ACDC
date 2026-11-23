import { useContext, useEffect, useState } from "react";
import { Link } from 'react-router-dom';

import { PettColumn } from "pett-componentes";
import { PettGrid } from "pett-componentes";
import { PettIcon } from "pett-componentes";
import { PettMensagem } from "pett-componentes";

import Api from "../Api";
import { AuthContext } from '../Contextos/Auth';

function ListagemArquivos(props) {
    const { logout } = useContext(AuthContext);
    const [ listagem, setListagem ] = useState([]);
    const { arquivos, endpoint } = props;
    
    useEffect(() => {
        setListagem(arquivos);
    },[arquivos]);

    async function excluir(arq) {
        const confirmou = await PettMensagem.confirmar('Confirma Exclusão?', `Tem certeza que deseja excluir ${arq.nome}?`);
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','excluirarquivo');
            formData.set('codigo',arq.codigo);
            try {
                const response = await Api.post(endpoint,formData);
                if (response.data.erro==='S') throw response;
                
                //remove o item da listagem.
                let novaListagem = [];
                novaListagem = listagem.filter(item => (String(item.codigo) !== String(arq.codigo)));
                setListagem(novaListagem);
                PettMensagem.sucesso('Yessss!',response.data.msg);
            } catch (error) {
                tratarCatch('ListagemArquivos excluir',error,logout);
            }
        }
    }
        
    const opcoesRegistro = (rowData) => {
        return <>
            <span className="btn badge bg-info text-black" style={{cursor: 'pointer'}} onClick={() => {navigator.clipboard.writeText(rowData.pasta+rowData.nome)}}>Copiar endereço</span>
            <Link to="" onClick={() => excluir({ 'codigo': rowData.codigo, 'nome': rowData.nome })} title="Excluir"><PettIcon name="waste"/></Link>
        </>
    } 

    const onRowSelect = (event) => {
        //visualizar(event.data.BLO_CODIGO);
    };

    return <>
        <h6 className="mt-4 fw-bold">Arquivos disponíveis</h6>
        <PettGrid listagem={listagem} rowSelect={onRowSelect} className="mb-3">
            <PettColumn field="codigo" header="Código" sortable ></PettColumn>
            <PettColumn field="nome" header="Nome" sortable ></PettColumn>
            <PettColumn body={opcoesRegistro} header="Opções" exportable={false} align="center" alignHeader="center"></PettColumn>
        </PettGrid>
    </>
}

export default ListagemArquivos;