import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { selectSimNao } from '../../Combox'; 
import { formatarSimNao, formatarDataStr, formatarDataStr2 } from '../../Funcoes';

function Icms() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/icms', 'Icms listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ ICM_CODIGO: '', ICM_DESCRICAO: '' });
    const vazio = { ICM_CALCULACREDITOSN: 'N', ICM_CODIGO: '', ICM_DESCRICAO: '', ICM_DTCADASTRO: '' };

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: icms,
        salvar,
        setOperacao,
        setRegistro: setIcms,
        visualizar,
    } = useTabela('firenet/icms', vazio, 'ICM_CODIGO', 'ICM_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(icms, () => listar(pesquisa, true));
    const hEditar    = () => editar(icms);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { ICM_CODIGO: '', ICM_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.ICM_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de ICMS" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={icms.ICM_USUARIO} data={icms.ICM_DTATUALIZACAO} hora={icms.ICM_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettIf condicional={operacao==='inserir' || operacao==='visualizar'}>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="ICM_CODIGO" value={icms.ICM_CODIGO} set={setIcms} upper={false} readOnly={disableFields} disabled={disableFields} />
                        </PettIf>
                        <PettIf condicional={operacao==='atualizar'}>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="ICM_CODIGO" value={icms.ICM_CODIGO} set={setIcms} upper={false} readOnly disabled />
                        </PettIf>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="ICM_DTCADASTRO" value={formatarDataStr(icms.ICM_DTCADASTRO)} readOnly disabled />
                        <PettFieldDrop size="col-lg-2 col-md-3 col-sm-12" label="CALCULA CRÉDITO SN" name="ICM_CALCULACREDITOSN" value={icms.ICM_CALCULACREDITOSN} set={setIcms} readOnly={disableFields} disabled={disableFields} options={selectSimNao}/>
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="ICM_DESCRICAO" value={icms.ICM_DESCRICAO} set={setIcms} readOnly={disableFields} disabled={disableFields} length="120" />
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 gx-1 ">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12 mb-1" label="CÓDIGO" name="ICM_CODIGO" value={pesquisa.ICM_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12 mb-1" label="DESCRIÇÃO" name="ICM_DESCRICAO" value={pesquisa.ICM_DESCRICAO} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="ICM_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="ICM_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="ICM_CALCULACREDITOSN" header="Calcula Crédito SN" body={(rowData) => formatarSimNao(rowData,'ICM_CALCULACREDITOSN')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="ICM_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'ICM_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="ICM_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'ICM_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="ICM_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>           
        <Rodape />
    </>
}

export default Icms;