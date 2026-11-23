import { useContext, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettFieldPass } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import Api from '../../Api';
import BarraSuperior from '../../Componentes/BarraSuperior';
import Rodape from '../../Componentes/Rodape';
import { tratarCatch } from '../../Funcoes';

function AlterarSenha() {
    const { logout } = useContext(AuthContext);
    const [ senhas, setSenhas ] = useState({ senhaAtual: '', senhaNova1: '', senhaNova2: '' });

    async function salvar() {
        if (senhas.senhaNova1!==senhas.senhaNova2) {
            PettMensagem.aviso('Epaaaa!','A nova senha não confere com a confirmação da senha.');
        } else {
            const formData = new FormData();
            formData.set('op','senha');
            formData.set('senhaatual',senhas.senhaAtual || '');
            formData.set('senhanova1',senhas.senhaNova1 || '');
            formData.set('senhanova2',senhas.senhaNova2 || '');
            try {
                const response = await Api.post('usuario/profile',formData);
                if (response.data.erro==='S') throw response;
                PettMensagem.sucesso('Yessss!',response.data.msg);
                setSenhas({ senhaAtual: '', senhaNova1: '', senhaNova2: '' });
            } catch (error) {
                tratarCatch('AlterarSenha salvar',error,logout);
            }
        }
    }

    return <>
        <BarraSuperior/>
            <div className="d-flex text-center justify-content-center" style={{maxWidth: '390px', margin: 'auto'}}>
                <div className="row mt-3 g-1">
                    <h6 className="mb-4">Alterar Senha</h6>
                    <p className="lead">Utilize sempre senhas fortes com letras maiúsculas e minúsculas e números.</p>
                    <PettFieldPass size="col-12" label="SENHA ATUAL" name="senhaAtual" value={senhas.senhaAtual} set={setSenhas} />
                    <PettFieldPass size="col-12" label="NOVA SENHA" name="senhaNova1" value={senhas.senhaNova1} set={setSenhas} feedback={true}
                        promptLabel="Digite uma senha com letras, números e símbolos."
                        weakLabel="Muito fraca!"
                        mediumLabel="Senha razoável"
                        strongLabel="Excelente senha!"
                    />
                    <PettFieldPass size="col-12 mb-3" label="CONFIRME A NOVA SENHA" name="senhaNova2" value={senhas.senhaNova2} set={setSenhas} />
                    <PettButton className="w-100 mb-3" caption="Alterar Senha" icone="save" click={salvar} variant="red" size="lg"/>
                </div>
            </div>
        <Rodape/>
    </>
}

export default AlterarSenha;