import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
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
import { formatarDataStr, formatarDataStr2 } from '../../Funcoes';

function Classfiscal() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/classfiscal', 'Classfiscal listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ CLF_CODIGO: '', CLF_DESCRICAO: '' });
    const vazio = {
        CLF_ALIQUOTAESTADUAL: '0',
        CLF_ALIQUOTAIMPORTACAO: '0',
        CLF_ALIQUOTAMUNICIPAL: '0',
        CLF_ALIQUOTANACIONAL: '0',
        CLF_CODIGO: '',
        CLF_DESCRICAO: '',
        CLF_DTCADASTRO: '',
        CLF_EXCECAO: '0',
        CLF_VERSAO: '',
        CLF_VIGENCIAFIM: '',
        CLF_VIGENCIAINI: ''
    };

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: classfiscal,
        salvar,
        setOperacao,
        setRegistro: setClassfiscal,
        visualizar,
    } = useTabela('firenet/classfiscal', vazio, ['CLF_CODIGO', 'CLF_EXCECAO'], 'CLF_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(classfiscal, () => listar(pesquisa, true));
    const hEditar    = () => editar(classfiscal);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);
    },[]);

    function reset() {
        const pesquisaVazia = { BEN_CODIGO: '', BEN_DESCRICAO: '' }
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        // visualizar(event.data.CLF_CODIGO,event.data.CLF_EXCECAO);
        visualizar(event.data);
        console.log('row',event.data);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Classificações Fiscais" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={classfiscal.CLF_USUARIO} data={classfiscal.CLF_DTATUALIZACAO} hora={classfiscal.CLF_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettIf condicional={operacao==='inserir'}>
                            <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="CLF_CODIGO" value={classfiscal.CLF_CODIGO} set={setClassfiscal} readOnly={disableFields} disabled={disableFields} mask="99999999"/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="EXCEÇÃO" name="CLF_EXCECAO" value={classfiscal.CLF_EXCECAO} set={setClassfiscal} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        </PettIf>
                        <PettIf condicional={operacao==='atualizar' || operacao==="visualizar"}>
                            <PettFieldMask size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="CLF_CODIGO" value={classfiscal.CLF_CODIGO} set={setClassfiscal} readOnly disabled mask="99999999"/>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="EXCEÇÃO" name="CLF_EXCECAO" value={classfiscal.CLF_EXCECAO} set={setClassfiscal} readOnly disabled/>
                        </PettIf>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="CLF_DTCADASTRO" value={formatarDataStr(classfiscal.CLF_DTCADASTRO)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VERSÃO" name="CLF_VERSAO" value={classfiscal.CLF_VERSAO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VIGÊNCIA INICIAL" name="CLF_VIGENCIAINI" value={formatarDataStr(classfiscal.CLF_VIGENCIAINI)} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="VIGÊNCIA FINAL" name="CLF_VIGENCIAFIM" value={formatarDataStr(classfiscal.CLF_VIGENCIAFIM)} readOnly disabled/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALÍQUOTA NACIONAL" name="CLF_ALIQUOTANACIONAL" value={classfiscal.CLF_ALIQUOTANACIONAL} set={setClassfiscal} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALÍQUOTA ESTADUAL" name="CLF_ALIQUOTAESTADUAL" value={classfiscal.CLF_ALIQUOTAESTADUAL} set={setClassfiscal} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALÍQUOTA MUNICIPAL" name="CLF_ALIQUOTAMUNICIPAL" value={classfiscal.CLF_ALIQUOTAMUNICIPAL} set={setClassfiscal} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALÍQUOTA IMPORTAÇÃO" name="CLF_ALIQUOTAIMPORTACAO" value={classfiscal.CLF_ALIQUOTAIMPORTACAO} set={setClassfiscal} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="CLF_DESCRICAO" value={classfiscal.CLF_DESCRICAO} set={setClassfiscal} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="CLF_CODIGO" value={pesquisa.CLF_CODIGO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-10 col-md-10 col-sm-12" label="DESCRIÇÃO" name="CLF_DESCRICAO" value={pesquisa.CLF_DESCRICAO} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="CLF_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="CLF_EXCECAO" header="Exceção" sortable ></PettColumn>
                    <PettColumn field="CLF_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="CLF_ALIQUOTANACIONAL" header="% Nac."></PettColumn>
                    <PettColumn field="CLF_ALIQUOTAESTADUAL" header="% Est."></PettColumn>
                    <PettColumn field="CLF_ALIQUOTAMUNICIPAL" header="% Mun."></PettColumn>
                    <PettColumn field="CLF_ALIQUOTAIMPORTACAO" header="% Imp."></PettColumn>
                    <PettColumn field="CLF_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'CLF_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="CLF_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'CLF_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="CLF_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro}/>
            </ColunaCentral>
        </PettIf>           
        <Rodape />
    </>
}

export default Classfiscal;