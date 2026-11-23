import { useState, useEffect } from 'react';

import Api from '../Api';

function CertificadoValidade() {
    const [ validade, setValidade ] = useState('');
    // const [expirationDate, setExpirationDate] = useState(null);

    // useEffect(() => {
    //     async function fetchSSLCertificate() {
    //         try {
    //             const response = await fetch(window.location.origin, { method: 'HEAD' });
    //             const certificateData = response.headers.get('x509-chain');
    //             if (certificateData) {
    //                 const certificate = await window.crypto.subtle.importKey(
    //                     'spki',
    //                     certificateData,
    //                     { name: 'RSASSA-PKCS1-v1_5', hash: 'SHA-256' },
    //                     true,
    //                     ['verify']
    //                 );
    //                 const certDetails = await window.crypto.subtle.exportKey('spki', certificate);
    //                 const cert = new Blob([certDetails]);
    //                 const reader = new FileReader();
    //                 reader.onload = () => {
    //                     const parser = new DOMParser();
    //                     const xmlDoc = parser.parseFromString(reader.result, 'text/xml');
    //                     const expirationDateString = xmlDoc.querySelector('X509Certificate Expiry').textContent;
    //                     const expirationDateUTC = new Date(expirationDateString);
    //                     setExpirationDate(expirationDateUTC);
    //                 };
    //                 reader.readAsText(cert);
    //             } else {
    //                 console.error('Failed to retrieve SSL certificate data.');
    //             }
    //         } catch (error) {
    //             console.error('Failed to fetch SSL certificate:', error);
    //         }
    //     }
    //     fetchSSLCertificate();
    // }, []);

    async function ChecarCertificado() {       
        var formData = new FormData();
        formData.set('op','certificado');
        try {
            const response = await Api.post('/certificado',formData);
            if (response.data.erro==='N') {
                setValidade(response.data.msg);
            } else {
                setValidade('Erro ao consultar a validade.');
            }
        } catch (error) {
            console.log('CATCH',error);
        }
    }

    useEffect(() => {
        ChecarCertificado();
    },[]);

    return <>
        <div>
            <p>Validade certificado SSL: { validade }</p>
                {/* // validade
                    // ? (<p>Validade certificado SSL: {expirationDate.toDateString()}</p>) 
                    // ? (<p>Validade certificado SSL: { validade }</p>) 
                    // : (<p>Validade certificado SSL: Verificando...</p>) */}
        </div>
    </>
};

export default CertificadoValidade;
