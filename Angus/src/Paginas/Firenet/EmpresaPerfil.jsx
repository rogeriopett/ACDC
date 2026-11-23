import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettFieldCep } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldPass } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFile } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Rodape from '../../Componentes/Rodape';
import { getFoneMask, tratarCatch } from '../../Funcoes';
import { selectEnquadramentoIss, selectEnquadramentoNum } from '../../Combox';

function EmpresaPerfil() {
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const [ disableFields, setDisableFields ] = useState(true);
    const [ empresaOri, setEmpresaOri ] = useState({});
    const [ empresa, setEmpresa ] = useState({
        EMP_CODIGO: '',
        EMP_BAIRRO: '',
        EMP_CEP: '',
        EMP_CIDADE: '',
        EMP_CIDADECODIGO: '',
        EMP_CNAE: '',
        EMP_CNPJ: '',
        EMP_CONTABILIDADE: '',
        EMP_EMAIL: '',
        EMP_EMAILSUPORTE: '',
        EMP_ENDERECO: '',
        EMP_ENQUADRAMENTO: '',
        EMP_ENQUADRAMENTOISS: '',
        EMP_ESTADO: '',
        EMP_ESTADOCODIGO: '',
        EMP_FONE1: '',
        EMP_FONE2: '',
        EMP_HASH: '',
        EMP_HOMEPAGE: '',
        EMP_IE: '',
        EMP_IM: '',
        EMP_NOME: '',
        EMP_NOMEFANTASIA: '',
        EMP_NUMERO: '',
        EMP_PAISCODIGO: '',
        EMP_SUPERSENHA: '',        
    });
    const [ operacao, setOperacao ] = useState('visualizar');
    const [ showModal, setShowModal ] = useState(false);
    const [ arquivo, setArquivo ] = useState('');

    useEffect(() => {
        visualizar(1);
    },[]);

    function cancelarEdicao() {
        setEmpresa(empresaOri);
        setDisableFields(true);
        setOperacao('visualizar');
    }

    async function salvar() {
        const formData = new FormData();
        formData.set('op',operacao);
        formData.set('empresa',empresaSelecionada.value);
        formData.set('EMP_CODIGO', empresa.EMP_CODIGO ?? '');
        formData.set('EMP_BAIRRO', empresa.EMP_BAIRRO ?? '');
        formData.set('EMP_CEP', empresa.EMP_CEP ?? '');
        formData.set('EMP_CIDADE', empresa.EMP_CIDADE ?? '');
        formData.set('EMP_CIDADECODIGO', empresa.EMP_CIDADECODIGO ?? '');
        formData.set('EMP_CNAE', empresa.EMP_CNAE ?? '');
        formData.set('EMP_CNPJ', empresa.EMP_CNPJ ?? '');
        formData.set('EMP_CONTABILIDADE', empresa.EMP_CONTABILIDADE ?? '');
        formData.set('EMP_EMAIL', empresa.EMP_EMAIL ?? '');
        formData.set('EMP_EMAILSUPORTE', empresa.EMP_EMAILSUPORTE ?? '');
        formData.set('EMP_ENDERECO', empresa.EMP_ENDERECO ?? '');
        formData.set('EMP_ENQUADRAMENTO', empresa.EMP_ENQUADRAMENTO ?? '');
        formData.set('EMP_ENQUADRAMENTOISS', empresa.EMP_ENQUADRAMENTOISS ?? '');
        formData.set('EMP_ESTADO', empresa.EMP_ESTADO ?? '');
        formData.set('EMP_ESTADOCODIGO', empresa.EMP_ESTADOCODIGO ?? '');
        formData.set('EMP_FONE1', empresa.EMP_FONE1 ?? '');
        formData.set('EMP_FONE2', empresa.EMP_FONE2 ?? '');
        formData.set('EMP_HASH', empresa.EMP_HASH ?? '');
        formData.set('EMP_HOMEPAGE', empresa.EMP_HOMEPAGE ?? '');
        formData.set('EMP_IE', empresa.EMP_IE ?? '');
        formData.set('EMP_IM', empresa.EMP_IM ?? '');
        formData.set('EMP_NOME', empresa.EMP_NOME ?? '');
        formData.set('EMP_NOMEFANTASIA', empresa.EMP_NOMEFANTASIA ?? '');
        formData.set('EMP_NUMERO', empresa.EMP_NUMERO ?? '');
        formData.set('EMP_PAIS', empresa.EMP_PAIS ?? '');
        formData.set('EMP_PAISCODIGO', empresa.EMP_PAISCODIGO ?? '');
        formData.set('EMP_SUPERSENHA', empresa.EMP_SUPERSENHA ?? '');
        
        try {
            const response = await Api.post('firenet/empresa',formData);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yessss!','Empresa atualizada com sucesso.');
            setOperacao('visualizar');
        } catch (error) {
            tratarCatch('EmpresaPerfil salvar',error,logout);
        } finally {
            setDisableFields(true);
        }
    }

    function editar(codigo) {
        getRegistro(codigo);
        setDisableFields(false);
        setEmpresaOri(empresa);
        setOperacao('atualizar');
    }

    function visualizar(codigo) {
        getRegistro(codigo);
        setDisableFields(true);
        setOperacao('visualizar');
    }

    async function getRegistro(codigo) {
        var formData = new FormData();
        formData.set('op','visualizar');
        formData.set('EMP_CODIGO','1');
        formData.set('empresa',empresaSelecionada.value);
        try {
            const response = await Api.post('firenet/empresa',formData);
            if (response.data.erro==='S') throw response;
            setEmpresa(response.data.msg);
        } catch (error) {
            tratarCatch('EmpresaPerfil getRegistro',error,logout);
            setOperacao('listar');
        } 
    }
    
    async function enviarImagem() {
        if (arquivo) {
            const imagedata = document.querySelector('input[type="file"]').files[0];
            var formData = new FormData();
            formData.set('op','logo');
            formData.set('arquivo',imagedata);
            formData.set('empresa',empresaSelecionada.value);
            try {
                const response = await Api.post('firenet/empresa',formData);
                if (response.data.erro==="S") throw response;
                PettMensagem.sucesso('Yesss!',response.data.msg);
                const registro = {...empresa, EMP_LOGO: response.data.logo }
                setEmpresa(registro);
                // setarLogo(response.data.logo);
            } catch (error) {
                tratarCatch('EmpresaPerfil enviarImagem',error,logout);
            }
            setShowModal(false);
        } else {
            PettMensagem.erro('Ooops!','Voce não selecionou nenhum arquivo');
        }
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro da Empresa" linkBack="/">
            <PettButton caption="Editar"   icone="pencil"    click={ () => editar(empresa.EMP_CODIGO) } condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"   icone="checkmark" click={salvar}                             condicional={operacao==="atualizar"}/>
            <PettButton caption="Cancelar" icone="cancel"    click={cancelarEdicao}                     condicional={operacao==="atualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mt-3">
                    <div className="col-xl-2 col-lg-3 col-md-3 col-sm-12 mb-3 d-flex justify-content-center">
                        <img className="img-thumbnail img-fluid rounded shadow-sm" style={{maxHeight: '160px'}} src={empresa.EMP_LOGO} alt="foto" onClick={() => setShowModal(true)}/>
                        {/* <img className="img-thumbnail img-fluid rounded shadow-sm" style={{maxHeight: '160px'}} src="http://localhost:9000/arquivo?op=logo&empresa=46819e53232d374162f174152402d196" alt="foto" onClick={() => setShowModal(true)}/> */}
                        {/* <img className="img-thumbnail img-fluid rounded shadow-sm" style={{maxHeight: '160px'}} src="http://localhost:9000/arquivo?op=profile&f=82a38034149b57f9e42aab5d34b9c5e9.PNG" alt="foto" onClick={() => setShowModal(true)}/> */}
                    </div>
                </div>

                <div className="row g-1 mb-5">
                    <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="EMPRESA" name="EMP_NOME" value={empresa.EMP_NOME} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="NOME" name="EMP_NOMEFANTASIA" value={empresa.EMP_NOMEFANTASIA} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldCep size="col-lg-2 col-md-3 col-sm-12" label="CEP" name="EMP_CEP" value={empresa.EMP_CEP} set={setEmpresa} bairro="EMP_BAIRRO" cidade="EMP_CIDADE" cidadeCodigo="EMP_CIDADECODIGO" endereco="EMP_ENDERECO" estado="EMP_ESTADO" estadoCodigo="EMP_ESTADOCODIGO" readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-6 col-md-6 col-sm-6" label="ENDEREÇO" name="EMP_ENDERECO" value={empresa.EMP_ENDERECO} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="NÚMERO" name="EMP_NUMERO" value={empresa.EMP_NUMERO} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CIDADE CÓDIGO" name="EMP_CIDADECODIGO" value={empresa.EMP_CIDADECODIGO} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-4 col-md-6 col-sm-6" label="CIDADE" name="EMP_CIDADE" value={empresa.EMP_CIDADE} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-4 col-md-3 col-sm-6" label="BAIRRO" name="EMP_BAIRRO" value={empresa.EMP_BAIRRO} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ESTADO" name="EMP_ESTADO" value={empresa.EMP_ESTADO} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="ESTADO CÓDIGO" name="EMP_ESTADOCODIGO" value={empresa.EMP_ESTADOCODIGO} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="PAÍS CÓDIGO" name="EMP_PAISCODIGO" value={empresa.EMP_PAISCODIGO} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-4 col-md-3 col-sm-6" label="PAÍS" name="EMP_PAIS" value={empresa.EMP_PAIS} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="FONE 01" name="EMP_FONE1" value={empresa.EMP_FONE1} set={setEmpresa} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(empresa.EMP_FONE1)}/>
                    <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="FONE 02" name="EMP_FONE2" value={empresa.EMP_FONE2} set={setEmpresa} readOnly={disableFields} disabled={disableFields} mask={getFoneMask(empresa.EMP_FONE1)}/>
                    <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="CNPJ" name="EMP_CNPJ" value={empresa.EMP_CNPJ} set={setEmpresa} readOnly={disableFields} disabled={disableFields} mask="99.999.999/9999-99"/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="INSC. ESTADUAL" name="EMP_IE" value={empresa.EMP_IE} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="INSC. MUNICIPAL" name="EMP_IM" value={empresa.EMP_IM} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CNAE" name="EMP_CNAE" value={empresa.EMP_CNAE} set={setEmpresa} readOnly={disableFields} disabled={disableFields}/>
                    <PettFieldDrop size="col-lg-6 col-md-6 col-sm-6" label="ENQUADRAMENTO ICMS" name="EMP_ENQUADRAMENTO" value={empresa.EMP_ENQUADRAMENTO} set={setEmpresa} readOnly={disableFields} disabled={disableFields} options={selectEnquadramentoNum}/>
                    <PettFieldDrop size="col-lg-6 col-md-6 col-sm-6" label="ENQUADRAMENTO ISS" name="EMP_ENQUADRAMENTOISS" value={empresa.EMP_ENQUADRAMENTOISS} set={setEmpresa} readOnly={disableFields} disabled={disableFields} options={selectEnquadramentoIss}/>
                    <PettFieldText size="col-lg-6 col-md-6 col-sm-6" label="SITE" name="EMP_HOMEPAGE" value={empresa.EMP_HOMEPAGE} set={setEmpresa} readOnly={disableFields} disabled={disableFields} upper={false}/>
                    <PettFieldText size="col-lg-6 col-md-6 col-sm-6" label="EMAIL" name="EMP_EMAIL" value={empresa.EMP_EMAIL} set={setEmpresa} readOnly={disableFields} disabled={disableFields} upper={false}/>
                    <PettFieldText size="col-lg-6 col-md-6 col-sm-6" label="EMAIL SUPORTE" name="EMP_EMAILSUPORTE" value={empresa.EMP_EMAILSUPORTE} set={setEmpresa} readOnly={disableFields} disabled={disableFields} upper={false}/>
                    <PettFieldPass size="col-lg-2 col-md-3 col-sm-6" label="SUPER SENHA" name="EMP_SUPERSENHA" value={empresa.EMP_SUPERSENHA} set={setEmpresa} readOnly={disableFields} disabled={disableFields} />
                    <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CONTABILIDADE" name="EMP_CONTABILIDADE" value={empresa.EMP_CONTABILIDADE} set={setEmpresa} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                </div>
            </ColunaCentral>
        </PettIf>
        <Rodape />

        <PettModal show={showModal} onHide={() => setShowModal(false)} title="Logo da Empresa." fechar={false} size="md" position="top">
            <PettFile label="ARQUIVO" name="arquivo" onChange={(e) => setArquivo(e.target.files[0])}/>
            <PettModal.Footer>
                <PettButton caption="Enviar" icone="upload_to_cloud" click={enviarImagem} variant="green"/>
                <PettButton caption="Cancelar" icone="cancel" click={() => setShowModal(false)} variant="red"/>
            </PettModal.Footer>
        </PettModal>
    </>
}

export default EmpresaPerfil;