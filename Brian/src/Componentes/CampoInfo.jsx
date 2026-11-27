//Atualizacoes:
//2026.11.27 - Criado para mostrar dados so de leitura (rotulo pequeno em cima e valor embaixo), no lugar dos <p><sup> repetidos nas telas.
//2026.11.27 - Usado como os PettField*, dentro de <div className="campo-info-grupo"> (caixa com cantos arredondados e uma linha entre os campos); saiu o CampoInfo.Linha.

// Um dado so de leitura: rotulo (label) em texto suave e o valor embaixo. Vai dentro de um <div className="campo-info-grupo">.
// size segue o mesmo padrao dos PettField* (col-6, col-12...). Se houver children, eles sao mostrados no lugar do value.
function CampoInfo({ label, value, size = 'col-12', className = '', children }) {
    return <div className={`campo-info ${size} ${className}`.trim()}>
        <div className="campo-info-label">{label}</div>
        <div className="campo-info-valor">{children ?? value}</div>
    </div>
}

export default CampoInfo;
