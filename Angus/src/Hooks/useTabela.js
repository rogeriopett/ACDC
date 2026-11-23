import { useState, useCallback, useContext } from 'react';

import { PettMensagem } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import { tratarCatch } from '../Funcoes';

//exemplo de inserir com valoresPadrao: clientes.jsx.
//exemplo com itens: condices.jsx, vendas.jsx.
//exemplo com transformarDados: clientes.jsx.
//exemplo com chave composta: classfiscal.jsx.

//exemplo com opcoes (modal de itens): vendasitens.jsx.
//opcoes:
//  ops: nomes das operações enviadas à API. Ex: { visualizar: 'visualizarItem', inserir: 'inserirItem', atualizar: 'atualizarItem', excluir: 'excluirItem' }.
//  aoSalvar: se informado, é chamado com o registro salvo no lugar de atualizar a listagem e visualizar.
export const useTabela = (endpoint, objetoInicial, campoCodigo, campoDescricao, transformarDados = null, aposVisualizar, opcoes = {}) => {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const ops = { visualizar: 'visualizar', inserir: 'inserir', atualizar: 'atualizar', excluir: 'excluir', ...opcoes.ops };
    
    const [registro, setRegistro] = useState(objetoInicial);
    const [registroOri, setRegistroOri] = useState(objetoInicial);
    const [operacao, setOperacao] = useState('listar');
    const [carregandoRegistro, setCarregandoRegistro] = useState(false);
    const [disableFields, setDisableFields] = useState(true);

    const limparRegistro = useCallback(() => setRegistro(objetoInicial), [objetoInicial]);

    //funcao interna pra montar a PK para o formData.
    const montarPkFormData = useCallback((dados, formData) => {
        if (Array.isArray(campoCodigo)) {
            campoCodigo.forEach(campo => {
                formData.set(campo, dados[campo] ?? '');
            });
        } else {
            // Se for chave simples, 'dados' pode ser o valor direto ou o objeto
            const valor = typeof dados === 'object' ? dados[campoCodigo] : dados;
            formData.set(campoCodigo, valor ?? '');
        }
    }, [campoCodigo]);

    // GET REGISTRO
    const getRegistro = useCallback(async (identificador) => {
        if (!identificador) return;
        // 'codigos' agora pode ser um objeto { CLF_CODIGO: 1, CLF_EXCECAO: 0 }
        setCarregandoRegistro(true);
        const formData = new FormData();
        formData.set('op', ops.visualizar);
        formData.set('empresa', empresaSelecionada.value ?? '');
        //formData.set(campoCodigo, codigo ?? '');

        montarPkFormData(identificador, formData);
        try {
            const response = await Api.post(endpoint, formData);
            // console.log('useTabela, getRegistro',response);
            if (response.data.erro === 'S') throw response;
            setRegistro(response.data.msg);

            if (aposVisualizar) {
                aposVisualizar(response.data.msg);
            }   

            return response.data.msg;
        } catch (error) {
            tratarCatch(`${endpoint} getRegistro`, error, logout);
        } finally {
            setCarregandoRegistro(false);
        }
    }, [endpoint, empresaSelecionada, montarPkFormData, logout, ops.visualizar]);

    // VISUALIZAR
    const visualizar = async (identificador) => {
        await getRegistro(identificador);
        setDisableFields(true);
        setOperacao('visualizar');
    };

    // EDITAR
    const editar = async (identificador) => {
        const dados = await getRegistro(identificador);
        setRegistroOri(dados);
        setDisableFields(false);
        setOperacao('atualizar');
    };

    // NOVO
    const inserir = (valoresPadrao = {}) => {
        // 1. Começamos com o objeto totalmente limpo/inicial
        // 2. Mesclamos com os valores padrão passados pelo componente
        const novoRegistro = { ...objetoInicial, ...valoresPadrao };
        setRegistro(novoRegistro);
        setRegistroOri(novoRegistro);
        setDisableFields(false);
        setOperacao('inserir');
    };

    // CANCELAR
    const cancelarEdicao = () => {
        setRegistro(registroOri);
        setDisableFields(true);
        setOperacao('visualizar');
    };
    
    const cancelarInsercao = () => {
        setRegistro(objetoInicial);
        setDisableFields(true);
        setOperacao('listar');
    };

    // EXCLUIR
    const excluir = async (item, callbackSucesso) => {
        const confirmou = await PettMensagem.confirmar('Confirma Exclusão?', `Tem certeza que deseja excluir ${item[campoDescricao]}?`);
        if (confirmou) {
            const formData = new FormData();
            formData.set('op', ops.excluir);
            formData.set('empresa', empresaSelecionada.value);
            montarPkFormData(item,formData);
            try {
                const response = await Api.post(endpoint, formData);
                if (response.data.erro === 'S') throw response;
                //PettMensagem.sucesso('Yessss!', response.data.msg);
                setOperacao('listar');
                limparRegistro();
                if (callbackSucesso) callbackSucesso(response.data.msg); // Geralmente chama o listar() do componente
            } catch (error) {
                tratarCatch(`${endpoint} excluir`, error, logout);
            }
        }
    };

    // SALVAR
    const salvar = async (listagemAtual, setListagem) => {
        const formData = new FormData();
        formData.set('op', ops[operacao] ?? operacao);
        formData.set('empresa', empresaSelecionada.value);

        const dadosParaEnvio = transformarDados ? transformarDados(registro) : registro;

        // Adiciona todos os campos do objeto registro ao FormData
        Object.keys(dadosParaEnvio).forEach(key => {
            formData.set(key, dadosParaEnvio[key] ?? '');
        });

        try {
            if (operacao === 'inserir') PettMensagem.carregando('Processando...', 'Gravando dados...');
            
            const response = await Api.post(endpoint, formData);
            if (response.data.erro === 'S') throw response;

            if (operacao === 'inserir') PettMensagem.fechar();

            const registroSalvo = response.data.msg;

            if (opcoes.aoSalvar) {
                opcoes.aoSalvar(registroSalvo);
                return;
            }

            let novaListagem = [];

            if (operacao === 'inserir') {
                //PettMensagem.sucesso('Yessss!', 'Registro cadastrado com sucesso.');
                novaListagem = [...listagemAtual, registroSalvo];
            } else {
                //PettMensagem.sucesso('Yessss!', 'Registro atualizado com sucesso.');
                // Filtro inteligente para Chave Composta
                novaListagem = listagemAtual.filter(item => {
                    if (Array.isArray(campoCodigo)) {
                        // Se QUALQUER campo da PK for diferente, mantém na lista
                        return campoCodigo.some(campo => String(item[campo]) !== String(registro[campo]));
                    }
                    return String(item[campoCodigo]) !== String(registro[campoCodigo]);
                });
                novaListagem.unshift(registroSalvo);
            }

            // Ordenação genérica por descrição
            novaListagem.sort((a, b) => (a[campoDescricao] > b[campoDescricao] ? 1 : -1));
            // novaListagem.sort((a, b) => {
            //     if (a[campoDescricao] > b[campoDescricao]) return 1;
            //     if (a[campoDescricao] < b[campoDescricao]) return -1;
            //     return 0;
            // });

            setListagem(novaListagem);
            visualizar(registroSalvo);

        } catch (error) {
            if (operacao === 'inserir') PettMensagem.fechar();
            tratarCatch(`${endpoint} salvar`, error, logout);
        }
    };

    return {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro, 
        registroOri,
        salvar,
        setOperacao,
        setRegistro,
        visualizar,
    };
};