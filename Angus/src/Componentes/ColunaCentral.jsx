import Bloco from './Bloco';

function ColunaCentral(props) {
    const { className, left, right, children } = props;
    let classe="";

    if (left==="true" && right==="true") {
        classe="col-xl-8 col-lg-8 col-md-12 col-sm-12";
    }
    if (left==="false" && right==="false") {
        classe="col-xl-12 col-lg-12 col-md-12 col-sm-12";
    }
    if (left==="true" && right==="false") {
        classe="col-xl-10 col-lg-10 col-md-12 col-sm-12";
    }
    if (left==="false" && right==="true") {
        classe="col-xl-10 col-lg-10 col-md-12 col-sm-12";
    }
    return <>
        <div className={className} id="conteudo">
            <div className="row">
                { left==="true" ? <ColunaEsquerda/> : <></> }
                <div className={ classe }>
                    { children }
                </div>
                { right==="true" ? <ColunaDireita/> : <></> }
            </div>
        </div>
    </>
}

function ColunaEsquerda() {
    return <>
        <div className="col-xl-2 col-lg-3 col-md-12 col-sm-12">
            <Bloco id="70" pagina="N" />
        </div>
    </>
}

function ColunaDireita() {
    return <>
        <div className="col-xl-2 col-lg-2 col-md-12 col-sm-12">
            <Bloco id="54" pagina="N" />
        </div>
    </>
}

export default ColunaCentral;