import { useContext } from 'react';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import { tratarCatch } from '../Funcoes';

export const AGRUPADORES   = { endpoint: 'firenet/agrupadores',   chave: 'AGR_CODIGO' };
export const ALMOXARIFADOS = { endpoint: 'firenet/almoxarifados', chave: 'ALM_CODIGO' };
export const ATIVIDADES    = { endpoint: 'firenet/atividades',    chave: 'ATI_CODIGO' };
export const BANCOS        = { endpoint: 'firenet/bancos',        chave: 'BAN_CODIGO' };
export const CIDADES       = { endpoint: 'firenet/cidades',       chave: 'CID_CODIGO' };
export const CLASSFISCAL   = { endpoint: 'firenet/classfiscal',   chave: 'CLF_CODIGO' };
export const CLIENTES      = { endpoint: 'firenet/clientes',      chave: 'CLI_CODIGO' };
export const CONDICOES     = { endpoint: 'firenet/condicoes',     chave: 'CPG_CODIGO' };
export const CONTAS        = { endpoint: 'firenet/contas',        chave: 'CON_CODIGO' };
export const CONVENIOS     = { endpoint: 'firenet/convenios',     chave: 'COV_CODIGO' };
export const DESPESAS      = { endpoint: 'firenet/despesas',      chave: 'DES_CODIGO' };
export const EMAILSCONTAS  = { endpoint: 'firenet/emailscontas',  chave: 'EMC_CODIGO' };
export const EXAMESTIPOS   = { endpoint: 'firenet/examestipos',   chave: 'EXT_CODIGO' };
export const FAMILIAS      = { endpoint: 'firenet/familias',      chave: 'FAM_CODIGO' };
export const FORNECEDORES  = { endpoint: 'firenet/fornecedores',  chave: 'FOR_CODIGO' };
export const GRUPOS        = { endpoint: 'firenet/grupos',        chave: 'GRU_CODIGO' };
export const ICMS          = { endpoint: 'firenet/icms',          chave: 'ICM_CODIGO' };
export const IPI           = { endpoint: 'firenet/ipi',           chave: 'IPI_CODIGO' };
export const ISS           = { endpoint: 'firenet/iss',           chave: 'ISS_CODIGO' };
export const LOCAIS        = { endpoint: 'firenet/locais',        chave: 'LCA_CODIGO' };
export const MAILINGS      = { endpoint: 'firenet/mailings',      chave: 'MAI_CODIGO' };
export const MARCAS        = { endpoint: 'firenet/marcas',        chave: 'MAR_CODIGO' };
export const NATUREZAS     = { endpoint: 'firenet/naturezas',     chave: 'NAT_CODIGO' };
export const PAISES        = { endpoint: 'firenet/paises',        chave: 'PAI_CODIGO' };
export const PISCOFINS     = { endpoint: 'firenet/piscofins',     chave: 'PIS_CODIGO' };
export const PRODUTOS      = { endpoint: 'firenet/produtos',      chave: 'PRO_CODIGO' };
export const RECEITAS      = { endpoint: 'firenet/receitas',      chave: 'REC_CODIGO' };
export const TAXAS         = { endpoint: 'firenet/taxas',         chave: 'TAX_CODIGO' };
export const UNIDADES      = { endpoint: 'firenet/unidades',      chave: 'UNI_CODIGO' };
export const VENDEDORES    = { endpoint: 'firenet/vendedores',    chave: 'VEN_CODIGO' };

export const EMPRESAS      = { endpoint: 'admin/empresas',        chave: 'EMP_CODIGO' };
export const USUARIOS      = { endpoint: 'admin/usuarios',        chave: 'USU_CODIGO' };

function aplicar(set, mapa, registro) {
    set(prev => {
        const novo = { ...prev };
        for (const destino in mapa) {
            novo[destino] = registro ? (registro[mapa[destino]] ?? '') : '';
        }
        return novo;
    });
}

export function useLocalizar() {
    const { logout, empresaSelecionada } = useContext(AuthContext);

    async function localizar(tabela, codigo, set, mapa) {
        if (!codigo) { aplicar(set, mapa, null); return; }

        const formData = new FormData();
        formData.set('op', 'localizar');
        formData.set('empresa', empresaSelecionada.value);
        formData.set(tabela.chave, codigo);
        try {
            const response = await Api.post(tabela.endpoint, formData);
            if (response.data.erro === 'S') throw response;
            aplicar(set, mapa, response.data.msg);
        } catch (error) {
            aplicar(set, mapa, null);
            tratarCatch(`localizar ${tabela.endpoint}`, error, logout);
        }
    }

    function selecionar(data, set, mapa) {
        if (data.LOC === true) aplicar(set, mapa, data);
    }

    return { localizar, selecionar };
}