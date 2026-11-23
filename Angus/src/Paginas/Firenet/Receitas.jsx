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

const mapaAgrupadores = { REC_AGRUPADOR: 'AGR_CODIGO', AGR_DESCRICAO: 'AGR_DESCRICAO' };

function Receitas() {
    const { logout } = useContext(AuthContext);
    const { localizar, selecionar } = useLocalizar();
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/receitas', 'Receitas listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ REC_CODIGO: '', REC_DESCRICAO: '' });
    const vazio = { REC_AGRUPADOR: 0, REC_CODIGO: '', REC_DESCRICAO: '', REC_DTCADASTRO: '', AGR_DESCRICAO: '' };
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: receita,
        salvar,
        setOperacao,
        setRegistro: setReceita,
        visualizar,
    } = useTabela('firenet/receitas', vazio, 'REC_CODIGO', 'REC_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(receita, () => listar(pesquisa, true));
    const hEditar    = () => editar(receita);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { REC_CODIGO: '', REC_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const [ showAgrupadoresLoc, setShowAgrupadoresLoc ] = useState(false);

    const onRowSelect = (event) => {
        visualizar(event.REC_CODIGO);
    };

    // const opcoesRegistro = (rowData) => {
    //     console.log('bbbb',rowData);
    //     return (
    //         <React.Fragment>
    //             <Link to="" onClick={() => editar(rowData.REC_CODIGO)} title="Editar">editar</Link>
    //             <Link to="" onClick={() => excluir({ 'codigo': rowData.REC_CODIGO, 'nome': rowData.REC_DESCRICAO })} title="Excluir">excluir</Link>
    //         </React.Fragment>
    //     );
    // }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Receitas" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar" }/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={receita.REC_USUARIO} data={receita.REC_DTATUALIZACAO} hora={receita.REC_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="REC_CODIGO" value={receita.REC_CODIGO} readOnly disabled/>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="REC_DTCADASTRO" value={formatarDataStr(receita.REC_DTCADASTRO)} readOnly disabled/>
                    </div>
                    <div className="row g-1">
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="REC_DESCRICAO" value={receita.REC_DESCRICAO} set={setReceita} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldLoc size="col-lg-2 col-md-2 col-sm-12" label="AGRUPADOR" name="REC_AGRUPADOR" value={receita.REC_AGRUPADOR} set={setReceita} onClick={() => setShowAgrupadoresLoc(true)} onBlur={(e) => localizar(AGRUPADORES, e.target.value, setReceita, mapaAgrupadores)} readOnly={disableFields} disabled={disableFields}/>
                        <PettFieldText size="col-lg-10 col-md-10 col-sm-12" label="DESCRIÇÃO AGRUPADOR" name="AGR_DESCRICAO" value={receita.AGR_DESCRICAO} readOnly disabled/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="REC_CODIGO" value={pesquisa.REC_CODIGO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO" name="REC_DESCRICAO" value={pesquisa.REC_DESCRICAO} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="REC_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="REC_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="REC_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'REC_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="REC_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'REC_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="REC_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                    {/* <PettColumn body={opcoesRegistro} header="Opções" exportable={false} style={{ minWidth: '4rem' }}></PettColumn> */}
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
        <AgrupadoresLoc showModal={showAgrupadoresLoc} onCloseModal={(data) => { selecionar(data, setReceita, mapaAgrupadores); setShowAgrupadoresLoc(false); }}/>
    </>
}

export default Receitas;