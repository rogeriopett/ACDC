
function Cabecalho(props) {
    const { className, titulo, texto } = props;
    return <>
        <div className={'border-bottom cabecalho-border mt-3 '+className}>
            <span className="cabecalho ms-2">{titulo}</span>
        </div>
        { texto!==""? <p>{texto}</p> : "" }
    </>
}

export default Cabecalho;