//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Upload/FileList locais (react-dropzone, react-circular-progressbar, filesize, lodash) trocados pelo PettUpload do pett-componentes.
//2026.11.27 - Mensagem de registro nao encontrado com o componente local NaoEncontrado (PettIcon no lugar do fa-record-vinyl; sem vh-100).
import { useContext, useState, useEffect, useCallback } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';

import { PettIf } from 'pett-componentes';
import { PettUpload } from 'pett-componentes';

import Api from "../Api";
import { AuthContext } from '../Contextos/Auth';
import Loading from '../Componentes/Loading';
import NaoEncontrado from '../Componentes/NaoEncontrado';
import ProdutoHeader from '../Componentes/ProdutoHeader';
import { tratarCatch } from '../Funcoes';

function ProdutoFotosEnviar() {
    const { logout } = useContext(AuthContext);
    const { id } = useParams();
    const navigate = useNavigate();
    const [ carregando, setCarregando ] = useState(false);
    const [ produto, setProduto ] = useState({});
    const [ imagens, setImagens ] = useState([]);

    // envio de cada foto pelo Api (axios), para usar a mesma URL e o token do restante do app.
    const enviarFoto = useCallback(async (arquivo, progresso, sinal) => {
        const formData = new FormData();
        formData.append('arquivo', arquivo, arquivo.name);
        formData.set('op','inserirFoto');
        formData.set('PRO_CODIGO',id);
        let response;
        try {
            response = await Api.post('firenet/produtos', formData, {
                signal: sinal,
                onUploadProgress: e => progresso(Math.round((e.loaded * 100) / (e.total || arquivo.size)))
            });
        } catch (error) {
            if (error.response?.data?.token==='expirado') logout();
            throw new Error(error.response?.data?.msg || error.message);
        }
        if (response.data.token==='expirado') logout();
        if (response.data.erro==='S') throw new Error(response.data.msg);
        return response.data;
    },[id,logout])

    async function VerProduto() {
        setCarregando(true);
        var formData = new FormData();
        formData.set('op', 'visualizar');
        formData.set('PRO_CODIGO', id);
        try {
            const response = await Api.post('firenet/produtos',formData);
            if (response.data.erro==='N') {
                setProduto(response.data.msg);
                setImagens(response.data.msg.FOTOS);
            } else {
                setProduto({PRO_CODIGO:0});
                setImagens([]);
            }
            setCarregando(false);
        } catch (error) {
            tratarCatch('ProdutoFotosEnviar visualizar',error,logout);
            setCarregando(false);
        }
    }

    useEffect(() => {
        VerProduto();
        // eslint-disable-next-line
    },[]);

    return <>
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width p-0">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div>
                            <Link to="" onClick={() => navigate(-1)} className="link-icone"><i className="fa fa-2x fa-fw fa-chevron-left mx-2"></i></Link>
                        </div>
                        <div className="flex-grow-1 text-truncate"><p className="text-truncate fw-bold text-center mt-3">ENVIO DE FOTOS</p></div>
                        <div>
                            <div className="link-icone me-3">&nbsp;</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <Loading status={carregando}/>
        <NaoEncontrado show={!carregando && produto.PRO_CODIGO<=0} mensagem="Não foi possível localizar o produto."/>
        <PettIf condicional={produto.PRO_CODIGO>0}>
            <div className='container limit-width mb-5 py-2'>
                <ProdutoHeader
                    imagens={imagens}
                    PRF_ARQUIVO={produto.PRF_ARQUIVO}
                    PRO_CODIGO={produto.PRO_CODIGO}
                    PRO_ESTOQUEATUAL={produto.PRO_ESTOQUEATUAL}
                    PRO_NOME={produto.PRO_NOME}
                    PRO_PRECOVENDA={produto.PRO_PRECOVENDA}
                    PRO_UNIDADE={produto.PRO_UNIDADE}
                />
                {/* o Cliff (inserirFoto) so aceita .jpg/.jpeg */}
                <PettUpload className="mb-3" enviar={enviarFoto} extensoes={['jpg','jpeg']} texto="Arraste as fotos aqui, ou clique para selecionar..."/>
            </div>
        </PettIf>
    </>
}

export default ProdutoFotosEnviar;
