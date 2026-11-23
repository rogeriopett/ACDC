import React from "react";

import { PettIf } from "pett-componentes";
import { PettMensagem } from "pett-componentes";


export const primeiroDiaMes = () => {
    const h = new Date();
    return `01/${String(h.getMonth() + 1).padStart(2, "0")}/${h.getFullYear()}`;
};

export const ultimoDiaMes = () => {
    const h = new Date();
    return new Date(h.getFullYear(), h.getMonth() + 1, 0);
};

export const primeiroDiaMesPassado = () => {
    const h = new Date();
    return new Date(h.getFullYear(), h.getMonth() - 1, 1);
};

export const ultimoDiaMesSeguinte = () => {
    const h = new Date();
    return new Date(h.getFullYear(), h.getMonth() + 2, 0);
};

export function tratarCatch(caption, error, logout) {
    console.log('CATCH '+caption,error);

    // Se o erro não for do Axios (não tiver .code), mas tiver a estrutura da sua API
    const isApiError = error.data && error.data.erro === 'S';
    const data = isApiError ? error.data : error.response?.data;
    const mensagemAmigavel = data?.msg;

    if (data?.token === 'expirado') {
        //PettMensagem.aviso('Sessão Expirada','Faça login novamente.');
        if (logout) logout();
        return;
    }   

    if (mensagemAmigavel) {
        PettMensagem.erro('Ah não!',mensagemAmigavel);
        return;
    }

    // 1. Verificação de Token Expirado (Padrão Axios)
    if (error.response?.data?.token === 'expirado') {
        // PettMensagem.aviso('Sessão Expirada','Faça login novamente.');
        logout();
        return;
    }
    
    // 2. Erros de Conexão
    if (error.code === 'ERR_NETWORK') {
        PettMensagem.erro('Ah não!','Parece que temos um problema com a conexão.');
        return;
    } 

    // 3. Erros de Requisição (400, 404, etc)
    if (error.code === 'ERR_BAD_REQUEST') {
        const msg = error.response?.data?.msg || 'Requisição inválida.';
        PettMensagem.erro('Puts!', msg);
        return;
    } 

    // 4. Erros de Servidor (500)
    if (error.code === 'ERR_BAD_RESPONSE') {
        PettMensagem.erro('Puts!','Erro interno no servidor.');
        return;
    }

    // 5. Erro Genérico (Fallback)
    PettMensagem.erro('Erro Inesperado', 'Ocorreu uma falha não identificada.');
}

export const formatarData = (date) => {
    const day = date.getDate().toString().padStart(2, '0');
    const month = (date.getMonth() + 1).toString().padStart(2, '0'); // +1 porque os meses começam de 0
    const year = date.getFullYear();
    return `${day}/${month}/${year}`;
};

export const formatarDataStr = (data) => {
    const regex = /^\d{2}\/\d{2}\/\d{4}$/;
    if (regex.test(data)) {
        return data;  // Se estiver no formato yyyy-mm-dd, retorna a própria data
    }

    const [ano, mes, dia] = data ? data.split('-') : [];  // Verifica se 'data' é definida antes de fazer a desestruturação
    return dia && mes && ano ? `${dia}/${mes}/${ano}` : '';  // Retorna a data formatada ou string vazia
};

export const formatarDataFb = (data) => {
    if (!data) return '';

    // Date -> aaaa-mm-dd (usa o dia local, sem passar por UTC)
    if (data instanceof Date) {
        const dia = String(data.getDate()).padStart(2, '0');
        const mes = String(data.getMonth() + 1).padStart(2, '0');
        return `${data.getFullYear()}-${mes}-${dia}`;
    }

    // Já está em aaaa-mm-dd
    if (/^\d{4}-\d{2}-\d{2}$/.test(data)) return data;

    // dd/mm/aaaa -> aaaa-mm-dd
    const [dia, mes, ano] = data.split('/');
    return ano && mes && dia ? `${ano}-${mes}-${dia}` : '';
};

// export const formatarDataFb = (data) => {
//     console.log('ffff',data);
// // Verifica se a data já está no formato yyyy-mm-dd
//     const regex = /^\d{4}-\d{2}-\d{2}$/;
//     if (regex.test(data)) {
//         return data;  // Se estiver no formato yyyy-mm-dd, retorna a própria data
//     }

//     const [dia, mes, ano] = data ? data.split('/') : [];  // Verifica se 'data' é definida antes de fazer a desestruturação
//     return ano && mes && dia ? `${ano}-${mes}-${dia}` : '';  // Retorna a data formatada ou string vazia
// };

export const formatarDataStr2 = (rowData,campo) => {
    const [ano, mes, dia] = rowData[campo] ? rowData[campo].split('-') : [];  // Verifica se 'data' é definida antes de fazer a desestruturação
    return dia && mes && ano ? `${dia}/${mes}/${ano}` : '';  // Retorna a data formatada ou string vazia
};

export const formatarHora = (hora) => {
    // Separando a hora e os milissegundos
    const [horaFormatada] = hora ? hora.split('.') : [];  // Verifica se 'hora' é definida antes de dividir a string
    return horaFormatada ? horaFormatada : '';  // Retorna a parte da hora ou uma string vazia
}

export const getFoneMask = (valor) => {
    const numeros = valor ? valor.replace(/\D/g, '') : '';
    return numeros.length <= 10 ? '(99) 9999-9999?9' : '(99) 99999-999?9';
};

export const hoje = formatarData(new Date());

export function hojeMaisDias(dias) {
    const data = new Date();
    data.setDate(data.getDate() + dias);
    return data;
}

export function hojeMenosDias(dias) {
    const data = new Date();
    data.setDate(data.getDate() - dias);
    return data;
}

export function decimalToHexColor(decimal) {
    // Extrai os componentes RGB do valor decimal
    // const b = (decimal >> 16) & 0xFF;  // Vermelho
    // const g = (decimal >> 8) & 0xFF;   // Verde
    // const r = decimal & 0xFF;          // Azul

    const r = (decimal >> 0) & 0xFF;   // Azul
    const g = (decimal >> 8) & 0xFF;   // Verde
    const b = (decimal >> 16) & 0xFF;  // Vermelho
  
    // Converte cada componente para hexadecimal e concatena
    const toHex = (value) => value.toString(16).padStart(2, '0').toUpperCase();
    return `#${toHex(r)}${toHex(g)}${toHex(b)}`;
}

export function hexToDecimalColor(hex) {
    // Remove o símbolo '#' caso esteja presente
    const cleanHex = hex.replace('#', '');
  
    // Converte o código hexadecimal para decimal
    const r = parseInt(cleanHex.substring(0, 2), 16);  // Vermelho
    const g = parseInt(cleanHex.substring(2, 4), 16);  // Verde
    const b = parseInt(cleanHex.substring(4, 6), 16);  // Azul
  
    // Calcula o valor decimal a partir dos componentes RGB
    return (b << 16) + (g << 8) + r;
}

export function soNumeros(texto) {
    return texto.replace(/\D/g, '');
}

export const setCampo = (e,objeto,setObjeto,upper) => {
    const { name, value } = e.target;
    let valor='';
    if (upper) {
        valor = value?value.toUpperCase():'';
    } else {
        valor = value;
    }

    // Armazena a posição atual do cursor
    // const cursorPosition = e.target.selectionStart;
    // const isPettFieldNumber = e.target.isPettFieldNumber;

    // setObjeto({...objeto, [name]: valor });
    setObjeto(prevObjeto => {
        const updatedObjeto = { ...prevObjeto, [name]: valor };
        return updatedObjeto;
    });

    // Garante que a atualização de estado ocorra antes de restaurar a posição do cursor
    // if (!isPettFieldNumber) {
    //     setTimeout(() => {
    //         e.target.setSelectionRange(cursorPosition, cursorPosition);
    //     }, 0);
    // }
} 

export const formatarMoeda = (rowData,campo) => {
    return parseFloat(rowData[campo]).toLocaleString('pt-BR', {
        style: 'currency',
        currency: 'BRL'
    });
};

export const formatarMoedaStr = (valor) => {
    return parseFloat(valor).toLocaleString('pt-BR', {
        style: 'currency',
        currency: 'BRL'
    });
};

export const formatarAtivoInativo = (rowData,campo) => {
    return (
        <React.Fragment>
            <PettIf condicional={rowData[campo]==='A'}>
                <span className="badge bg-success">ATIVO</span>
            </PettIf>
            <PettIf condicional={rowData[campo]==='I'}>
                <span className="badge bg-danger">INATIVO</span>
            </PettIf>                
        </React.Fragment>
    );
};

export const formatarSimNao = (rowData,campo) => {
    return (
        <React.Fragment>
            <PettIf condicional={rowData[campo]==='S'}>
                <span className="badge bg-success">SIM</span>
            </PettIf>
            <PettIf condicional={rowData[campo]==='N'}>
                <span className="badge bg-danger">NÃO</span>
            </PettIf>                
        </React.Fragment>
    );
};

export function pdfViewer(base64Pdf) {
    const byteCharacters = atob(base64Pdf); // Decodifica o Base64 para binário
    // const byteCharacters = base64Pdf; // Decodifica o Base64 para binário
    const byteNumbers = new Array(byteCharacters.length);
    for (let i = 0; i < byteCharacters.length; i++) {
        byteNumbers[i] = byteCharacters.charCodeAt(i);
    }
    const byteArray = new Uint8Array(byteNumbers);
    const blob = new Blob([byteArray], { type: 'application/pdf' });
    const pdfUrl = URL.createObjectURL(blob);
    window.open(pdfUrl); // Abre o PDF em uma nova aba
}
