import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldLoc } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettGrid } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { AuthContext } from '../../Contextos/Auth';
import { useListagem } from '../../Hooks/useListagem';
import { useTabela } from '../../Hooks/useTabela';
import AgrupadoresLoc from '../../Componentes/Localizadores/AgrupadoresLoc';
import AtualizadoPor from '../../Componentes/AtualizadoPor';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Loading from '../../Componentes/Loading';
import Rodape from '../../Componentes/Rodape';
import Sentinela from '../../Componentes/Sentinela';
import { formatarDataStr, formatarDataStr2 } from '../../Funcoes';
import { useLocalizar, AGRUPADORES } from '../../Hooks/useLocalizar';

const mapaAgrupadores = { DES_AGRUPADOR: 'AGR_CODIGO', AGR_DESCRICAO: 'AGR_DESCRICAO' };

function Despesas() {
    const { logout } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/despesas', 'Despesas listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ DES_CODIGO: '', DES_DESCRICAO: '' });
    const vazio = { DES_AGRUPADOR: 0, DES_CODIGO: '', DES_DESCRICAO: '', DES_DTCADASTRO: '', AGR_DESCRICAO: '' };
    const [ showAgrupadoresLoc, setShowAgrupadoresLoc ] = useState(false);
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: despesa,
        salvar,
        setOperacao,
        setRegistro: setDespesa,
        visualizar,
    } = useTabela('firenet/despesas', vazio, 'DES_CODIGO', 'DES_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(despesa, () => listar(pesquisa, true));
    const hEditar    = () => editar(despesa);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { DES_CODIGO: '', DES_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.DES_CODIGO);
    };
   
    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Despesas" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={despesa.DES_USUARIO} data={despesa.DES_DTATUALIZACAO} hora={despesa.DES_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregando}/>
                <PettIf condicional={!carregando}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="DES_CODIGO" value={despesa.DES_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="DES_DTCADASTRO" value={formatarDataStr(despesa.DES_DTCADASTRO)} readOnly disabled/>
                    </div>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-6 col-md-6 col-sm-12" label="DESCRIÇÃO" name="DES_DESCRICAO" value={despesa.DES_DESCRICAO} set={setDespesa} readOnly={disableFields} disabled={disableFields} />
                    </div>
                    <div className="row mb-3 g-1">
                        <PettFieldLoc size="col-lg-1 col-md-6 col-sm-12" label="AGRUPADOR" name="DES_AGRUPADOR" value={despesa.DES_AGRUPADOR} set={setDespesa} onClick={() => setShowAgrupadoresLoc(true)} onBlur={(e) => localizar(AGRUPADORES, e.target.value, setDespesa, mapaAgrupadores)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-5 col-md-6 col-sm-12" label="DESCRIÇÃO AGRUPADOR" name="AGR_DESCRICAO" value={despesa.AGR_DESCRICAO} readOnly disabled/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="DES_CODIGO" value={pesquisa.DES_CODIGO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-10 col-md-10 col-sm-12" label="PESQUISA" name="DES_DESCRICAO" value={pesquisa.DES_DESCRICAO} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="DES_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="DES_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="DES_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'DES_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="DES_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'DES_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="DES_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                    {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>           
        <Rodape />
        <AgrupadoresLoc showModal={showAgrupadoresLoc} onCloseModal={(data) => { selecionar(data, setDespesa, mapaAgrupadores); setShowAgrupadoresLoc(false); }}/>
    </>
}

export default Despesas;