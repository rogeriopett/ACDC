import { useContext, useEffect, useState } from 'react';
import { Link } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIcon } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';

function MetasConfig(props) {
    const { showModal, onCloseModal } = props;
    const { logout } = useContext(AuthContext);
    
    // Agora usando o hook com o quarto parâmetro 'false' para carga única
    const { listagem, setListagem, listar } = useListagem('firenet/metasconfig', 'MetasConfig listar', logout, false);
    
    const [ pesquisa ] = useState({});
    const vazio = { MTG_CODIGO: '', MTG_FIM: '', MTG_INICIO: '', MTG_PORCENTAGEM: '' };

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: metaConfig,
        salvar,
        setOperacao,
        setRegistro: setMetaConfig
    } = useTabela('firenet/metasconfig', vazio, 'MTG_CODIGO', 'MTG_CODIGO');
    
    // Handlers ajustados
    const hSalvar = async () => { 
        await salvar(listagem, setListagem); 
        await listar(); // Recarrega a grid após salvar
        setOperacao('listar'); 
    };

    const hExcluir = (item) => {
        // Usando o excluir do hook para aproveitar a mensagem de confirmação padrão
        excluir(item, () => listar());
    };

    const hEditar = (item) => editar(item);
    
    const hCancelar = () => { 
        if (operacao === 'inserir') cancelarInsercao(); 
        else cancelarEdicao();
        setOperacao('listar'); 
    };

    useEffect(() => {
        if (showModal) {
            setOperacao('listar');
            listar(); 
        }
    }, [showModal, listar, setOperacao]);

    const onRowSelect = (event) => {
        hEditar(event.MTG_CODIGO);
    };
    
    const opcoesRegistro = (rowData) => {
        return <>
            <Link to="" onClick={() => hExcluir(rowData)} title="Excluir">
                <PettIcon name="trash"/>
            </Link>
        </>
    };

    const fechar = () => {
        onCloseModal(false);
    };

    return (
        <PettModal show={showModal} title={'Configuração das metas ('+operacao+')'} size="md" position="top" onHide={fechar}>
            <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
                <div className="row g-1 mb-3">
                    <PettFieldText size="col-lg-3 col-md-3 col-sm-6" label="CÓDIGO" name="MTG_CODIGO" value={metaConfig.MTG_CODIGO} readOnly disabled/>
                    <PettFieldFloat size="col-lg-3 col-md-3 col-sm-6" label="INÍCIO" name="MTG_INICIO" value={metaConfig.MTG_INICIO} set={setMetaConfig} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldFloat size="col-lg-3 col-md-3 col-sm-6" label="FIM" name="MTG_FIM" value={metaConfig.MTG_FIM} set={setMetaConfig} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldFloat size="col-lg-3 col-md-3 col-sm-6" label="PORCENTAGEM" name="MTG_PORCENTAGEM" value={metaConfig.MTG_PORCENTAGEM} set={setMetaConfig} readOnly={disableFields} disabled={disableFields}/>
                </div>
            </PettIf>

            <PettIf condicional={!carregandoRegistro}>
                <div className="box shadow-sm mb-2">
                    <PettButton caption="Salvar" icone="checkmark" click={hSalvar} condicional={operacao==="inserir" || operacao==="atualizar"}/>
                    <PettButton caption="Cancelar" icone="cancel" click={hCancelar} condicional={operacao==="inserir" || operacao==="atualizar"}/>
                    <PettButton caption="Novo" icone="plus" click={inserir} condicional={operacao==="listar" || operacao===""}/>
                </div>

                <PettIf condicional={operacao==="listar"}>
                    <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                        <PettColumn field="MTG_CODIGO" header="Código" sortable ></PettColumn>
                        <PettColumn field="MTG_INICIO" header="Início" align="right" alignHeader="right"></PettColumn>
                        <PettColumn field="MTG_FIM" header="Fim" align="right" alignHeader="right"></PettColumn>
                        <PettColumn field="MTG_PORCENTAGEM" header="Porcentagem" align="right" alignHeader="right"></PettColumn>
                        <PettColumn body={opcoesRegistro} header="Opções" exportable={false} align="center" alignHeader="center"></PettColumn>
                    </PettGrid>
                </PettIf>
            </PettIf>

            <PettModal.Footer className='bg-tema2 border-0 p-0 px-1'>
                <div className="w-100 d-flex justify-content-end">
                    <PettButton caption="Fechar" icone="cancel" click={fechar} />
                </div>
            </PettModal.Footer>
        </PettModal>
    );
}

export default MetasConfig;