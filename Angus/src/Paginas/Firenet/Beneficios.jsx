import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettFieldTextArea } from 'pett-componentes';
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
import { formatarDataStr, formatarDataStr2  } from '../../Funcoes';

function Beneficios() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/beneficios', 'Beneficios listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ BEN_CODIGO: '', BEN_DESCRICAO: '' });
    const vazio = { BEN_CODIGO: '', BEN_CALCULACREDITOSN: 'N', BEN_DESCRICAO: '', BEN_DTCADASTRO: '' };
    
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: beneficio,
        salvar,
        setOperacao,
        setRegistro: setBeneficio,
        visualizar,
    } = useTabela('firenet/beneficios', vazio, 'BEN_CODIGO', 'BEN_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(beneficio, () => listar(pesquisa, true));
    const hEditar    = () => editar(beneficio.BEN_CODIGO);
    const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    const selectTipo = [
        { value: "CREDITO PRESUMIDO", label: "CREDITO PRESUMIDO" },
        { value: "DIFERIMENTO", label: "DIFERIMENTO" },
        { value: "ISENCAO", label: "ISENCAO" },
        { value: "NAO INCIDENCIA", label: "NAO INCIDENCIA" },
        { value: "REDUCAO DA BASE DE CALCULO", label: "REDUCAO DA BASE DE CALCULO" },
        { value: "SUSPENSAO DA EXIGIBILIDADE", label: "SUSPENSAO DA EXIGIBILIDADE" },
    ];

    useEffect(() => {
        listar(pesquisa, true);
    },[]);

    function reset() {
        const pesquisaVazia = { BEN_CODIGO: '', BEN_DESCRICAO: '' }
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.BEN_CODIGO);
    };

    const bodyDtCadastro = (rowData) => {
        return <>
            { formatarDataStr(rowData.BEN_DTCADASTRO) }
        </>
    }

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de Benefícios Fiscais" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hListagem}        condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={beneficio.BEN_USUARIO} data={beneficio.BEN_DTATUALIZACAO} hora={beneficio.BEN_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1">
                        <PettIf condicional={operacao==='inserir'}>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="BEN_CODIGO" value={beneficio.BEN_CODIGO} set={setBeneficio} readOnly={disableFields} disabled={disableFields}/>
                        </PettIf>
                        <PettIf condicional={operacao==='atualizar' || operacao==="visualizar"}>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="BEN_CODIGO" value={beneficio.BEN_CODIGO} set={setBeneficio} readOnly disabled/>
                        </PettIf>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="BEN_DTCADASTRO" value={formatarDataStr(beneficio.BEN_DTCADASTRO)} readOnly disabled/>
                        <PettFieldDrop size="col-lg-12 col-md-12 col-sm-12" label="TIPO" name="BEN_TIPO" value={beneficio.BEN_TIPO} set={setBeneficio} readOnly={disableFields} disabled={disableFields} options={selectTipo}/>
                        <PettFieldTextArea size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="BEN_DESCRICAO" value={beneficio.BEN_DESCRICAO} set={setBeneficio} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="BEN_CODIGO" value={pesquisa.BEN_CODIGO} set={setPesquisa}/>
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="DESCRIÇÃO" name="BEN_DESCRICAO" value={pesquisa.BEN_DESCRICAO} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="BEN_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="BEN_TIPO" header="Tipo" sortable ></PettColumn>
                    <PettColumn field="BEN_DTCADASTRO" header="Dt. Cadastro" body={bodyDtCadastro} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="BEN_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'BEN_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="BEN_HRATUALIZACAO" header="Hr. Atualização" body={(rowData) => formatarDataStr2(rowData,'BEN_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="BEN_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro}/>
            </ColunaCentral>
        </PettIf>           
        <Rodape />
    </>
}

export default Beneficios;