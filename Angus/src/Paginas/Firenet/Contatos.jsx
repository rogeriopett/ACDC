import { useContext, useState } from 'react';
import { Link } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIcon } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import Api from '../../Api';
import { getFoneMask, tratarCatch } from '../../Funcoes';

function Contatos(props) {
    const { cliente, showModal, onCloseModal } = props;
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const [ carregando, setCarregando ] = useState(false);
    const [ operacao, setOperacao ] = useState('listar');
    const [ listagem, setListagem ] = useState([]);
    const [ contato, setContato ] = useState({
        CTT_CLIENTE: '',
        CTT_CODIGO: '',
        CTT_DTATUALIZACAO: '',
        CTT_DTCADASTRO: '',
        CTT_EMAIL: '',
        CTT_FONE: '',
        CTT_NOME: '',
        CTT_USUARIO: '',
        CLI_NOME: '',
    });
    // const [ disableFields, setDisableFields ] = useState(true);

    function registroNulo() {
        setContato({
            CTT_CLIENTE: '',
            CTT_CODIGO: '',
            CTT_DTATUALIZACAO: '',
            CTT_DTCADASTRO: '',
            CTT_EMAIL: '',
            CTT_FONE: '',
            CTT_NOME: '',
            CTT_USUARIO: '',
            CLI_NOME: '',
        })
    }

    async function listar() {
        setListagem([]);
        setCarregando(true);    
        var formData = new FormData();
        formData.set('op','listar');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('CTT_CLIENTE',cliente.CLI_CODIGO || '');
        try {
            const response = await Api.post('firenet/contatos',formData);
            if (response.data.erro==='S') throw response;
            setListagem(response.data.msg);
            setCarregando(false);
        } catch (error) {
            tratarCatch('Contatos listar',error,logout);
            setCarregando(false);
        }
    }

    function visualizar(codigo,cliente) {
        getRegistro(codigo,cliente);     
        setOperacao('atualizar');
    }

    async function getRegistro(codigo,cliente) {
        var formData = new FormData();
        formData.set('op','visualizar');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('CTT_CODIGO',codigo);             
        formData.set('CTT_CLIENTE',cliente);             
        try {
            const response = await Api.post('firenet/contatos',formData);
            if (response.data.erro==='S') throw response;
            setContato(response.data.msg);
        } catch (error) {
            registroNulo();
            setOperacao('listar');
            tratarCatch('Contatos getRegistro',error,logout);
        }
    }
    
    async function salvar() {
        const formData = new FormData();
        formData.set('op',operacao);
        formData.set('empresa',empresaSelecionada.value);
        formData.set('CTT_CODIGO',contato.CTT_CODIGO ?? '');
        formData.set('CTT_CLIENTE',cliente.CLI_CODIGO ?? '');
        formData.set('CTT_EMAIL',contato.CTT_EMAIL ?? '');
        formData.set('CTT_FONE',contato.CTT_FONE ?? '');
        formData.set('CTT_NOME',contato.CTT_NOME ?? '');
        try {
            const response = await Api.post('firenet/contatos',formData);
            if (response.data.erro==='S') throw response;
            let novaListagem = [];
            if (operacao==='inserir') { 
                PettMensagem.sucesso('Yessss!','Contato cadastrado com sucesso.');
                novaListagem.push(...listagem);
                novaListagem.push(response.data.msg);
            } else {
                PettMensagem.sucesso('Yessss!','Contato atualizado com sucesso.');
                novaListagem = listagem.filter(item => (String(item.CTT_CODIGO) !== String(contato.CTT_CODIGO)));
                novaListagem.unshift(response.data.msg); //adiciona no inicio da listagem.
            }
            
            //ordena a listagem.
            const novaListagemSort = novaListagem.sort(function(c1,c2) {
                if (c1.CTT_NOME > c2.CTT_NOME) return  1;
                if (c1.CTT_NOME < c2.CTT_NOME) return -1;
                return 0;
            });
            
            setListagem(novaListagemSort);
            setOperacao('listar');
        } catch (error) {
            tratarCatch('Contatos salvar',error,logout);
        }
    }

    function cancelar() {
        registroNulo();
        setOperacao('listar');
    }

    function fechar() {
        onCloseModal();
    }

    function novo() {
        registroNulo();
        setOperacao('inserir');
    }

    async function excluir(item) {
        const confirmou = await PettMensagem.confirmar('Confirma Exclusão?', `Tem certeza que deseja excluir ${item.nome}?`);
        if (confirmou) {
            const formData = new FormData();
            formData.set('op','excluir');
            formData.set('empresa',empresaSelecionada.value);
            formData.set('CTT_CODIGO',item.codigo ?? '');
            formData.set('CTT_CLIENTE',item.cliente ?? '');
            try {
                const response = await Api.post('firenet/contatos',formData);
                if (response.data.erro==='S') throw response;
                listar();
                setOperacao('listar');
            } catch (error) {
                tratarCatch('Contatos excluir',error,logout);
            }
        }
    }

    function onShow() {
        listar();
    }

    const onRowSelect = (event) => {
        visualizar(event.data.CTT_CODIGO,event.data.CTT_CLIENTE);
    };

    const opcoesRegistro = (rowData) => {
        return <Link to="" onClick={() => excluir({codigo: rowData.CTT_CODIGO, cliente: rowData.CTT_CLIENTE, nome: rowData.CTT_NOME})} title="Excluir"><PettIcon name="trash"/></Link>
    }

    return <>
        <PettIf condicional={contato} >
            <PettModal show={showModal} size="lg" onShow={onShow} title="Contatos do Cliente..." onHide={fechar} position="top">
                <p>Cliente: <strong>{cliente.CLI_CODIGO+' - '+cliente.CLI_NOME}</strong></p>
                <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="NOME" name="CTT_NOME" value={String(contato.CTT_NOME)} set={setContato}/>
                        <PettFieldText size="col-lg-9 col-md-7 col-sm-12" label="EMAIL" name="CTT_EMAIL" value={contato.CTT_EMAIL} set={setContato} keyfilter="email" upper={false}/>
                        <PettFieldMask size="col-lg-3 col-md-5 col-sm-12" label="FONE" name="CTT_FONE" value={contato.CTT_FONE} set={setContato} mask={getFoneMask(contato.CTT_FONE)}/>
                    </div>
                </PettIf>
                <PettIf condicional={operacao==="listar" || operacao===""}>
                    <PettIf condicional={ carregando===true }>
                        <div className="text-center mt-5 lead"><PettIcon name="runtime_spinner" size="48" className="me-3"/>Carregando...</div>
                    </PettIf>
                    <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                        <PettColumn field="CTT_CODIGO" header="Código"/>
                        <PettColumn field="CTT_NOME" header="Nome" className="w-100"/>
                        <PettColumn field="CTT_FONE" header="Fone"/>
                        <PettColumn field="CTT_EMAIL" header="Email"/>
                        <PettColumn body={opcoesRegistro} header="Opções" align="center" alignHeader="center" exportable={false} style={{ minWidth: '1rem' }}></PettColumn>
                    </PettGrid>
                    <PettIf condicional={ listagem.length === 0 && carregando===false} >
                        <div className="container d-flex justify-content-center align-items-center">
                            <p className="text-center lead"><span style={{fontSize: '70px'}} className="text-muted"><PettIcon name="shocked" size="96"/></span><br/>Nenhum registro encontrado!</p>
                        </div>   
                    </PettIf>
                    
                </PettIf>

                <PettModal.Footer className='bg-tema2 border-0 p-0 px-1'>
                    <div className="w-100 d-flex gap-1">
                        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
                            <PettButton caption="Salvar" icone="checkmark" click={salvar} />
                            <PettButton caption="Cancelar" icone="cancel" click={cancelar} />
                        </PettIf>
                        <PettIf condicional={operacao==="listar" || operacao===""}>
                            <PettButton caption="Novo" icone="plus" click={novo} />
                            <PettButton caption="Fechar" icone="exit_sign" click={fechar} />
                        </PettIf>
                    </div>
                </PettModal.Footer>

            </PettModal>    
        </PettIf>
    </>
}

export default Contatos;