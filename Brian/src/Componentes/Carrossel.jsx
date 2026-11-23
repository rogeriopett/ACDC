import React from 'react';
import Flickity from 'react-flickity-component';

import "flickity/css/flickity.css";
import './Carrossel.css';

function Carrossel(props) {
    const fotos = props.fotos;
    const flickityOptions = {
        initialIndex: 0
    }
    return <>
        <Flickity
            className={'carousel'} // default ''
            elementType={'div'} // default 'div'
            options={flickityOptions} // takes flickity options {}
            disableImagesLoaded={false} // default false
            reloadOnUpdate // default false
            static // default false
        >
            {                     
                fotos.map((foto,idx) => {
                    return <img key={idx} data-fancybox="galery" className="img-fluid w-100 rounded" style={{height: '280px', maxHeight: '360px', objectFit: 'cover'}} alt="" src={foto.PRF_ARQUIVO} />
                })
            }              
        </Flickity>
    </>
}

export default Carrossel;