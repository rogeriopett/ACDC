import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
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

function Iss() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/iss', 'Iss listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ ISS_CODIGO: '', ISS_DESCRICAO: '' });
    const vazio = { ISS_ALIQUOTAESTADUAL: 0, ISS_ALIQUOTAIMPORTACAO: 0, ISS_ALIQUOTAMUNICIPAL: 0, ISS_ALIQUOTANACIONAL: 0, ISS_CODIGO: '', ISS_DESCRICAO: '', ISS_DTCADASTRO: '' };

    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: iss,
        salvar,
        setOperacao,
        setRegistro: setIss,
        visualizar,
    } = useTabela('firenet/iss', vazio, 'ISS_CODIGO', 'ISS_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(iss, () => listar(pesquisa, true));
    const hEditar    = () => editar(iss);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { ISS_CODIGO: '', ISS_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };
    
    const onRowSelect = (event) => {
        visualizar(event.ISS_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de ISS" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={iss.ISS_USUARIO} data={iss.ISS_DTATUALIZACAO} hora={iss.ISS_HRATUALIZACAO} />
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettIf condicional={operacao==='inserir' || operacao==='visualizar'}>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="ISS_CODIGO" value={String(iss.ISS_CODIGO)} set={setIss} readOnly={disableFields} disabled={disableFields} />
                        </PettIf>
                        <PettIf condicional={operacao==='atualizar'}>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="ISS_CODIGO" value={String(iss.ISS_CODIGO)} set={setIss} readOnly disabled />
                        </PettIf>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="ISS_DTCADASTRO" value={formatarDataStr(String(iss.ISS_DTCADASTRO))} readOnly disabled />                   
                    </div>
                    <div className="row g-1 mb-1">                    
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA NACIONAL" name="ISS_ALIQUOTANACIONAL" value={iss.ISS_ALIQUOTANACIONAL} set={setIss} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA ESTADUAL" name="ISS_ALIQUOTAESTADUAL" value={iss.ISS_ALIQUOTAESTADUAL} set={setIss} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA MUNICIPAL" name="ISS_ALIQUOTAMUNICIPAL" value={iss.ISS_ALIQUOTAMUNICIPAL} set={setIss} readOnly={disableFields} disabled={disableFields} />
                        <PettFieldFloat size="col-lg-2 col-md-3 col-sm-6" label="ALIQUOTA IMPORTACAO" name="ISS_ALIQUOTAIMPORTACAO" value={iss.ISS_ALIQUOTAIMPORTACAO} set={setIss} readOnly={disableFields} disabled={disableFields} />
                    </div>
                    <div className="row mb-3 g-1">
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="ISS_DESCRICAO" value={iss.ISS_DESCRICAO} set={setIss} readOnly={disableFields} disabled={disableFields} />
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="ISS_CODIGO" value={pesquisa.ISS_CODIGO} set={setPesquisa} />
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO" name="ISS_DESCRICAO" value={pesquisa.ISS_DESCRICAO} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="ISS_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="ISS_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="ISS_ALIQUOTANACIONAL" header="Aliq. Nacional" sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="ISS_ALIQUOTAESTADUAL" header="Aliq. Estadual" sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="ISS_ALIQUOTAMUNICIPAL" header="Aliq. Municipal" sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="ISS_ALIQUOTAIMPORTACAO" header="Aliq. Importação" sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="ISS_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'ISS_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="ISS_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'ISS_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="ISS_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
    </>
}

export default Iss;