// import { useEffect } from "react";
import ImageGallery from "react-image-gallery";
import "react-image-gallery/styles/image-gallery.css";
// import type { GalleryItem, ImageGalleryRef } from "react-image-gallery";
import './PettGallery.css';

function PettGallery(props) {
    const { bullets=true, fullscreen=false, imagens, thumbnails=false } = props;
    
    // useEffect(() => {
    //     console.log('bbbb',imagens);
    // },[])
    
    // const images = [
    //     {
    //         original: "https://fishingadventure.com.br/midias/produtos/1/high/1_5409.jpg",
    //         thumbnail: "https://fishingadventure.com.br/midias/produtos/1/low/1_5409.jpg",
    //     },
    // ];  
{/* <img className="img-thumbnail img-fluid" src={import.meta.env.VITE_URL_SITE+'/'+imagem.pasta+imagem.arquivo} alt="" key={index} data-fancybox={"galery"+produto.PRO_CODIGO}/> */}

    return <>
        <div className="rounded overflow-hidden">
            <ImageGallery 
                items={imagens} 
                showPlayButton={false} // ERP não precisa de slideshow
                showFullscreenButton={fullscreen} // Isso ativa o modo de "zoom"
                showNav={true} // Setas de navegação
                showThumbnails={thumbnails}
                showBullets={bullets}
                thumbnailPosition="bottom" // Miniaturas embaixo
            />
        </div>
    </>
}

export default PettGallery;