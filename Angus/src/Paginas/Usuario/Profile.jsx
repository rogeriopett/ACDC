import { useContext, useEffect, useState } from 'react';

import { PettAvatar } from 'pett-componentes';
import { PettButton } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFile } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import BarraSuperior from '../../Componentes/BarraSuperior';
import Rodape from '../../Componentes/Rodape';
import { getFoneMask, tratarCatch } from '../../Funcoes';

function Profile() {
    const { logout, atualizarAvatar } = useContext(AuthContext);
    const [ usuario, setUsuario ] = useState({
        USU_CPF: '000.000.000-00',
        USU_FONE1: '',
        USU_EMAIL: '',
        USU_NOME: '',
    });

    const [ showModal, setShowModal ] = useState(false);
    const [ arquivo, setArquivo ] = useState('');

    async function getProfile() {
        var formData = new FormData();
        formData.set('op','visualizar');            
        try {
            const response = await Api.post('usuario/profile',formData);
            if (response.data.erro==='S') throw response;
            setUsuario(response.data.msg);
        } catch (error) {
            tratarCatch('Profile getProfile',error,logout);
        }        
    }

    useEffect(() => {
        getProfile();
    },[]);

    async function salvar() {
        const formData = new FormData();
        formData.set('op','atualizar');
        formData.set('USU_CPF',usuario.USU_CPF || '');
        formData.set('USU_FONE1',usuario.USU_FONE1 || '');
        formData.set('USU_EMAIL',usuario.USU_EMAIL || '');
        formData.set('USU_NOME',usuario.USU_NOME || '');
        try {
            const response = await Api.post('usuario/profile',formData);
            if (response.data.erro==='S') throw response;
            PettMensagem.sucesso('Yessss!','Atualizado com sucesso.');
            setUsuario(response.data.msg);
        } catch (error) {
            tratarCatch('Profile salvar',error,logout);
        }
    }
   
    async function enviarImagem() {
        if (arquivo) {
            // 'arquivo' agora já é o objeto File direto do estado
            var formData = new FormData();
            formData.set('op', 'avatar');
            formData.set('arquivo', arquivo); // Usa o estado diretamente

            try {
                const response = await Api.post('usuario/profile', formData);
                if (response.data.erro === "S") throw response;
                
                PettMensagem.sucesso('Yesss!', response.data.msg);
                const registro = { ...usuario, USU_AVATAR: response.data.avatar };
                setUsuario(registro);
                atualizarAvatar(response.data.avatar);
                
                setArquivo(''); // Limpa o estado após sucesso
                setShowModal(false);
            } catch (error) {
                tratarCatch('Profile enviarImagem', error, logout);
            }
        } else {
            PettMensagem.erro('Ooops!', 'Você não selecionou nenhum arquivo');
        }
    }

    return <>
        <BarraSuperior/>
            <div className="d-flex text-center justify-content-center" style={{maxWidth: '390px', margin: 'auto'}}>
                <div className="row mt-3 g-1">
                    <div className="col-12 mb-3">
                        <PettAvatar nome={usuario.USU_NOME} src={usuario.USU_AVATAR} size="xl" onClick={() => setShowModal(true)} anel/>
                    </div>
                    <h6 className="mb-4">Meus dados</h6>
                    <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="NOME COMPLETO" name="USU_NOME" value={usuario.USU_NOME} set={setUsuario} required={true} upper={false} length="100"/>
                    <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="EMAIL" name="USU_EMAIL" value={usuario.USU_EMAIL} set={setUsuario} upper={false} required={true} length="100"/>
                    <PettFieldMask size="col-lg-12 col-md-12 col-sm-12" label="CPF" name="USU_CPF" value={usuario.USU_CPF} set={setUsuario} required={true} mask="999.999.999-99"/>               
                    <PettFieldMask size="col-lg-12 col-md-12 col-sm-12 mb-3" label="FONE COM WHATSAPP" name="USU_FONE1" value={usuario.USU_FONE1} set={setUsuario} mask={getFoneMask(usuario.USU_FONE1)}/>
                    <PettButton className="w-100 mb-3" caption="Salvar" icone="done" click={salvar} variant="red" size="lg" icoSize="25"/>
                    <PettButton className="w-100 mb-3" caption="Alterar Senha" icone="key" link="/alterarsenha" size="lg" icoSize="25"/>
                </div>
            </div>
        <Rodape/>
        
        <PettModal show={showModal} onHide={() => setShowModal(false)} title="Foto do Perfil" size="md" position="top">
            <PettFile label="ARQUIVO" name="arquivo" onChange={(e) => setArquivo(e.target.files[0])}/>
            <PettModal.Footer>
                <PettButton caption="Enviar" icone="upload_to_cloud" click={enviarImagem} variant="green"/>
                <PettButton caption="Cancelar" icone="cancel_branco" click={() => setShowModal(false)} variant="red"/>
            </PettModal.Footer>
        </PettModal>
    </>
}

export default Profile;