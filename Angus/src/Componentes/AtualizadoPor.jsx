import { formatarDataStr } from "../Funcoes";

//Atualizacoes:
//2026.08.03 - check propriedade usuario.

function AtualizadoPor(props) {
    const { usuario, data, hora, condicional } = props;
    
    if (!condicional) return null;

    const horaFormatada = hora && hora.includes('.') ? hora.split('.')[0] : hora;
    const exibirUsuario = usuario && usuario.trim() !== '';

    return <div className="me-3 ms-auto">Atualizado em: <span className="fw-bold">{formatarDataStr(data)+' '+horaFormatada}</span>{exibirUsuario && ( <> {" "}por <span className="fw-bold">{usuario}</span> </> )}</div>
    
}

export default AtualizadoPor;