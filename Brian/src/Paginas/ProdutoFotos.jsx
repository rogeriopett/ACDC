//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - Campo de descrição da foto (InputText do PrimeReact) trocado pelo PettFieldText do pett-componentes.
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Incluido o import do PettMensagem do pett-componentes (era usado sem import).
//2026.11.18 - Cores seguem o tema do pett-componentes (classes do Global.css no lugar das cores fixas do Bootstrap).
//2026.11.18 - Removidas classes que nao existem em nenhum CSS (sup-reset, lh-2, topspace-*; text-trucate corrigido para text-truncate).
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
import { useContext, useEffect, useState } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';

import { PettButton } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';

import Api from '../Api';
import { AuthContext } from '../Contextos/Auth';
import ProdutoHeader from '../Componentes/ProdutoHeader';
import Loading from '../Componentes/Loading';
import { tratarCatch } from '../Funcoes';

function ProdutoFotos() {   
    const { logout } = useContext(AuthContext);
    const { id } = useParams();
    const navigate = useNavigate();
    const [ carregando, setCarregando ] = useState(false);
    const [ produto, setProduto ] = useState({});
    const [ imagens, setImagens ] = useState([]);

    const handleInputChange = (e,idx) => {
        const newValues=[];
        newValues.push(...imagens);
        if (e.target.name==='descricao') {
            newValues[idx].PRF_DESCRICAO=e.target.value;
        }
        if (e.target.name==='ordem') {
            newValues[idx].PRF_ORDEM=e.target.value;
        }
        setImagens(newValues);
        // const { name, value, type, checked } = e.target;
        // const isCheckBox = type === 'checkbox';
        // const data = imagens[name] || {};
        // if (isCheckBox) {
        //     data[value]=checked;
        // }
        // const newValue = isCheckBox ? data : value;
        // setImagens({...imagens, [name]: newValue});
    }

    async function VerProduto() {
        setCarregando(true);
        var formData = new FormData();
        formData.set('op','visualizar');
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
            tratarCatch('ProdutoFotos visualizar',error,logout);
            setCarregando(false);
        }
    }  

    useEffect(() => {
        VerProduto();
        // eslint-disable-next-line
    },[]);

    async function rotacionar(codigo, angulo, idx) {
        setCarregando(true);
        const formData = new FormData();
        formData.set('op','rotacionar');
        formData.set('PRF_CODIGO',codigo);
        formData.set('angulo',angulo);

        try {
            const response = await Api.post('firenet/produtos',formData);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yesss!','Foto rotacionada com sucesso'); 
            const newValues=[];
            newValues.push(...imagens);
            newValues[idx].PRF_ARQUIVO=response.data.msg;
            setImagens(newValues);
            setCarregando(false);
        } catch (error) {
            tratarCatch('ProdutoFotos visualizar',error,logout);
            setCarregando(false);
        }
    }

    async function salvar(e) {
        e.preventDefault();
        const formData = new FormData(e.target);
        formData.set('op','atualizarFoto');
        try{
            const response = await Api.post('firenet/produtos',formData);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yesss!','Descrição atualizada com sucesso.');
        } catch (error) {
            tratarCatch('ProdutoFotos salvar',error,logout);
            setCarregando(false);
        }
    }

    async function excluir(codigo) {
        const formData = new FormData();
        formData.set('op','excluirFoto');
        formData.set('PRF_CODIGO',codigo);
        formData.set('PRO_CODIGO',produto.PRO_CODIGO);

        const confirmou = await PettMensagem.confirmar('Confirme!',"Quer mesmo eliminar a foto "+codigo+"?");
        if (confirmou) {
            try {
                setCarregando(true);
                const response = await Api.post('firenet/produtos',formData)
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yesss!',response.data.msg);
                const imagensNovo = imagens.filter((imagem) => imagem.PRF_CODIGO !== codigo);
                setImagens(imagensNovo); 
                setCarregando(false);
            } catch (error) {
                tratarCatch('ProdutoFotos excluir',error,logout);
                setCarregando(false);
            }
        }
    }

    return <>
        <div className="barra-tema sticky-top">
            <div className="container-fluid limit-width p-0">
                <div className="row">
                    <div className="col-12 limit-height d-flex justify-content-between align-items-center">
                        <div>
                            <Link to="" onClick={() => navigate(-1)} className="link-icone"><i className="fa fa-2x fa-fw fa-chevron-left mx-2"></i></Link>
                        </div>
                        <div className="flex-grow-1 text-truncate"><p className="text-truncate fw-bold text-center mt-3">FOTOS DO PRODUTO</p></div>
                        <div>
                            <div className="link-icone me-3">&nbsp;</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <Loading status={carregando}/>
        <PettIf condicional={produto.PRO_CODIGO<=0}>
            <div className="container limit-width vh-100 d-flex justify-content-center align-items-center">
                <p className="text-center lead"><span style={{fontSize: '7em'}} className="texto-suave"><i className="fa fa-fw fa-record-vinyl"></i></span><br/>Não foi possível localizar o produto.</p>
            </div> 
        </PettIf>
        <PettIf condicional={produto.PRO_CODIGO>0}>
            <div className="container limit-width mb-5 pt-2">
                <ProdutoHeader 
                    imagens={imagens}
                    PRF_ARQUIVO={produto.PRF_ARQUIVO}
                    PRO_CODIGO={produto.PRO_CODIGO}
                    PRO_ESTOQUEATUAL={produto.PRO_ESTOQUEATUAL}
                    PRO_NOME={produto.PRO_NOME}
                    PRO_PRECOVENDA={produto.PRO_PRECOVENDA}
                    PRO_UNIDADE={produto.PRO_UNIDADE}
                />
                    
                {imagens.map((imagem,idx) => {
                    return <div key={idx} className="lista-item mb-3">
                        <img src={imagem.PRF_ARQUIVO} className="card-img-top" alt={idx}/>
                        <div className="card-body m-0 ps-2 pe-2 pt-2 pb-0">
                            <form name={'form'+imagem.PRF_CODIGO} onSubmit={salvar} method="POST">
                            <div className="row gx-1">
                                <PettFieldText size="col-12" label="DESCRIÇÃO" name="descricao" value={imagem.PRF_DESCRICAO} setMap={(e) => handleInputChange(e,idx)} upper={false}/>
                                <input type='hidden' name='codigo' value={imagem.PRF_CODIGO} />
                                <input type='hidden' name='produto' value={produto.PRO_CODIGO} />
                                <input type='hidden' name='op' value='atualizarFoto' />
                            </div>
                            <div className="row gx-2 mb-2">
                                <div className="col-3 py-1">
                                    <PettButton className="w-100" variant="blue" caption="90º" click={() => rotacionar(imagem.PRF_CODIGO,90,idx)}/>
                                </div>      
                                <div className="col-3 py-1">
                                    <PettButton className="w-100" variant="blue" caption="180º" click={() => rotacionar(imagem.PRF_CODIGO,180,idx)}/>
                                </div>      
                                <div className="col-3 py-1">
                                    <PettButton className="w-100" variant="green" caption="Salvar" type="submit"/>
                                </div>      
                                <div className="col-3 py-1">
                                    <PettButton className="w-100" variant="red" caption="Excluir" click={() => excluir(imagem.PRF_CODIGO)}/>
                                </div>   
                            </div>    
                            </form>
                        </div>
                    </div>                    
                }) }
            </div>
        </PettIf>
        {/* <BarraInferior active=""/> */}
    </>
}

export default ProdutoFotos;