import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettDrawer } from 'pett-componentes';
import { PettDrawerItem } from 'pett-componentes';
import { PettEditor } from 'pett-componentes';
import { PettFieldPass } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import Api from '../../Api';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Rodape from '../../Componentes/Rodape';
import { tratarCatch } from '../../Funcoes';

function Parametros() {
    const { logout } = useContext(AuthContext);
    const [ parametros, setParametros ] = useState({});

    async function getParametros() {
        const formData = new FormData();
        formData.set('op','visualizar');
        try {
            const response = await Api.post('admin/parametros',formData);
            if (response.data.erro==='N') {
                setParametros(response.data.msg);
            }
            if (response.data.erro==='S') {
                response.data.token==='expirado'?logout():PettMensagem.erro('Ah nãooooo!',response.data.msg);
            }
        } catch (error) {
            tratarCatch('Parametros getParametros',error,logout);
        }
    }

    async function salvar() {
        const formData = new FormData();
        formData.set('op','atualizar');
        formData.set('PAR_NOVOUSUARIO',parametros.PAR_NOVOUSUARIO);
        formData.set('PAR_CONFIRMADO',parametros.PAR_CONFIRMADO);
        formData.set('PAR_RESETARSENHA',parametros.PAR_RESETARSENHA);
        formData.set('PAR_REENVIAR',parametros.PAR_REENVIAR);
        formData.set('PAR_MAILADMIN',parametros.PAR_MAILADMIN || '');
        formData.set('PAR_MAILFROM',parametros.PAR_MAILFROM || '');
        formData.set('PAR_MAILNAME',parametros.PAR_MAILNAME || '');
        formData.set('PAR_MAILPASS',parametros.PAR_MAILPASS || '');
        formData.set('PAR_MAILPORT',parametros.PAR_MAILPORT || '0');
        formData.set('PAR_MAILPREFIX',parametros.PAR_MAILPREFIX || '');
        formData.set('PAR_MAILSMTP',parametros.PAR_MAILSMTP || '');
        formData.set('PAR_MAILUSER',parametros.PAR_MAILUSER || '');
        formData.set('PAR_SITENAME',parametros.PAR_SITENAME || '');

        try {
            const response = await Api.post('/admin/parametros',formData);
            if (response.data.erro==='S') throw response;
            setParametros(response.data.msg);
            PettMensagem.sucesso('Yessss!','Parâmetros atualizados com sucesso!');
        } catch (error) {
            tratarCatch('Parametros salvar',error,logout);
        }
    }

    useEffect(() => {
        getParametros();
    },[]);

    return <>
        <BarraSuperior/>
        <BarraOpcoes titulo="Parâmetros" linkBack="/">
            <PettButton caption="Salvar" icone="checkmark" click={ () => salvar() }/>
        </BarraOpcoes>

        <ColunaCentral left="false" right="false" className="container-fluid pt-3">

            <PettIf condicional={String(parametros.PAR_CODIGO)!=='1'}>
                <p className="lead mb-5">Não foi possível carregar os parâmetros!</p>
            </PettIf>

            <PettIf condicional={String(parametros.PAR_CODIGO)==="1"}>
                <PettDrawer className="my-3" activeIndex={0} multiple={true}>
                    <PettDrawerItem header="Geral" show={true}>
                        <div className="row g-1">
                            <PettFieldText size="col-lg-12" label="TÍTULO DO SITE" name="PAR_SITENAME" value={parametros.PAR_SITENAME} set={setParametros} />
                            <PettFieldText size="col-lg-12" label="EMAIL DO ADMINISTRADOR" name="PAR_MAILADMIN" value={parametros.PAR_MAILADMIN} set={setParametros} />
                            <PettFieldText size="col-lg-12" label="PREFIXO DO ASSUNTO DO EMAIL" name="PAR_MAILPREFIX" value={parametros.PAR_MAILPREFIX} set={setParametros} />
                        </div>
                    </PettDrawerItem>

                    <PettDrawerItem header="Configuração da conta de email">
                        <div className="row g-1">
                            <PettFieldText size="col-lg-12" label="NOME DO REMETENTE" name="PAR_MAILNAME" value={parametros.PAR_MAILNAME} set={setParametros} />
                            <PettFieldText size="col-lg-12" label="EMAIL DO REMETENTE" name="PAR_MAILFROM" value={parametros.PAR_MAILFROM} set={setParametros} />
                            <PettFieldText size="col-lg-12" label="LOGIN" name="PAR_MAILUSER" value={parametros.PAR_MAILUSER} set={setParametros} />
                            <PettFieldPass size="col-lg-12" label="SENHA DO EMAIL" name="PAR_MAILPASS" value={parametros.PAR_MAILPASS} set={setParametros} />
                            <PettFieldText size="col-lg-12" label="SERVIDOR SMTP" name="PAR_MAILSMTP" value={parametros.PAR_MAILSMTP} set={setParametros} />
                            <PettFieldText size="col-lg-12" label="PORTA" name="PAR_MAILPORT" value={parametros.PAR_MAILPORT} set={setParametros} />
                        </div>
                    </PettDrawerItem>

                    <PettDrawerItem header="Email para o novo usuário">                       
                        <PettEditor name="PAR_NOVOUSUARIO" value={parametros.PAR_NOVOUSUARIO} set={setParametros} altura={500} colarComoTexto className="mb-3"/>
                    </PettDrawerItem>

                    <PettDrawerItem header="Email Usuário Confirmado">
                        <PettEditor name="PAR_CONFIRMADO" value={parametros.PAR_CONFIRMADO} set={setParametros} altura={500} colarComoTexto className="mb-3"/>
                    </PettDrawerItem>

                    <PettDrawerItem header="Email Resetar Senha">
                        <PettEditor name="PAR_RESETARSENHA" value={parametros.PAR_RESETARSENHA} set={setParametros} altura={500} colarComoTexto className="mb-3"/>
                    </PettDrawerItem>

                    <PettDrawerItem header="Email Reenviar Código">
                        <PettEditor name="PAR_REENVIAR" value={parametros.PAR_REENVIAR} set={setParametros} altura={500} colarComoTexto className="mb-3"/>
                    </PettDrawerItem>
                </PettDrawer>
            </PettIf>

        </ColunaCentral>
        <Rodape/>
    </>
}

export default Parametros;