
import LogoPadrao from "/imagens/logo_runtime_black.svg";

function Logomarca(props) { 
    const { src, className='', width, maxWidth='230px', height, variant='default' } = props;
    const larguraAtributo = width || (height ? undefined : '100%'); 
    const alturaAtributo = height || 'auto';
    const estilosImagem = {
        // width: width || 'auto',
        maxWidth: maxWidth,
        // height: height || 'auto',
        display: 'inline-block' // Evita espaçamentos fantasmas embaixo da imagem
    };
    const classeVariante = variant !== 'default' ? `logo-${variant}` : '';

    return <>
        <img 
            src={src || LogoPadrao} // Usa a dinâmica do banco, se não houver, usa o fallback local
            style={estilosImagem} 
            className={`${className} ${classeVariante}`.trim()} 
            alt="Logomarca" 
            width={larguraAtributo}
            height={alturaAtributo}
        />
    </>
}

export default Logomarca;