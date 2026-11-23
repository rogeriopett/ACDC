import { useContext, useEffect, useState } from 'react';

import { PettButton } from 'pett-componentes';
import { PettColumn } from 'pett-componentes';
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

function Piscofins() {
    const { logout } = useContext(AuthContext);
    const { listagem, setListagem, carregando, carregarMais, final, listar, erro } = useListagem('firenet/piscofins', 'Piscofins listar', logout);
    const [ pesquisa, setPesquisa ] = useState({ PIS_CODIGO: '', PIS_DESCRICAO: '' });
    const vazio = { PIS_CODIGO: '', PIS_DESCRICAO: '', PIS_DTCADASTRO: '' };
    const {
        cancelarEdicao,
        cancelarInsercao,
        carregandoRegistro,
        disableFields,
        editar,
        excluir,
        inserir,
        operacao, 
        registro: piscofins,
        salvar,
        setOperacao,
        setRegistro: setPiscofins,
        visualizar,
    } = useTabela('firenet/piscofins', vazio, 'PIS_CODIGO', 'PIS_DESCRICAO');
    
    // Handlers que chamam os métodos do Hook passando contexto local
    const hSalvar    = () => salvar(listagem, setListagem);
    const hExcluir   = () => excluir(piscofins, () => listar(pesquisa, true));
    const hEditar    = () => editar(piscofins);
    //const hListagem  = () => setOperacao('listar');
    const hPesquisar = () => { setOperacao('listar'); listar(pesquisa, true); }

    useEffect(() => {
        listar(pesquisa, true);  
    },[]);

    function reset() {
        const pesquisaVazia = { PIS_CODIGO: '', PIS_DESCRICAO: '' };
        setPesquisa(pesquisaVazia);
        listar(pesquisaVazia, true);
    };

    const onRowSelect = (event) => {
        visualizar(event.PIS_CODIGO);
    };

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Cadastro de PIS/COFINS" linkBack="/">
            <PettButton caption="Localizar" icone="search"    click={hPesquisar}       condicional={operacao==="visualizar"}/>
            <PettButton caption="Novo"      icone="plus"      click={inserir}          condicional={operacao==="visualizar" || operacao==="listar"}/>
            <PettButton caption="Excluir"   icone="minus"     click={hExcluir}         condicional={operacao==="visualizar"}/>
            <PettButton caption="Editar"    icone="pencil"    click={hEditar}          condicional={operacao==="visualizar"}/>
            <PettButton caption="Salvar"    icone="checkmark" click={hSalvar}          condicional={operacao==="inserir" || operacao==="atualizar"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarInsercao} condicional={operacao==="inserir"}/>
            <PettButton caption="Cancelar"  icone="cancel"    click={cancelarEdicao}   condicional={operacao==="atualizar"}/>
            <AtualizadoPor usuario={piscofins.PIS_USUARIO} data={piscofins.PIS_DTATUALIZACAO} hora={piscofins.PIS_HRATUALIZACAO} condicional={operacao==="visualizar"}/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="inserir" || operacao==="atualizar" || operacao==="visualizar"}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <Loading status={carregandoRegistro}/>
                <PettIf condicional={!carregandoRegistro}>
                    <div className="row g-1 mb-1">
                        <PettIf condicional={operacao==='inserir'}>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="PIS_CODIGO" value={piscofins.PIS_CODIGO} set={setPiscofins} readOnly={disableFields} disabled={disableFields} keyfilter="int"/>
                        </PettIf>
                        <PettIf condicional={operacao==='atualizar' || operacao==="visualizar"}>
                            <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="CÓDIGO" name="PIS_CODIGO" value={piscofins.PIS_CODIGO} set={setPiscofins} readOnly disabled/>
                        </PettIf>
                        <PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="DATA CADASTRO" name="PIS_DTCADASTRO" value={formatarDataStr(piscofins.PIS_DTCADASTRO)} set={setPiscofins} upper={false} readOnly disabled/>
                    </div>
                    <div className="row mb-3 g-1">                    
                        <PettFieldText size="col-lg-12 col-md-12 col-sm-12" label="DESCRIÇÃO" name="PIS_DESCRICAO" value={piscofins.PIS_DESCRICAO} set={setPiscofins} readOnly={disableFields} disabled={disableFields}/>
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldText size="col-lg-2 col-md-2 col-sm-12" label="CÓDIGO" name="PIS_CODIGO" value={pesquisa.PIS_CODIGO} set={setPesquisa} keyfilter="int"/>
                    <PettFieldText size="col-lg-4 col-md-4 col-sm-12" label="DESCRIÇÃO" name="PIS_DESCRICAO" value={pesquisa.PIS_DESCRICAO} set={setPesquisa} />
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={hPesquisar} />
                    <PettButton caption="Limpar" icone="reset" click={reset} />
                </div>

                <PettGrid className="mt-4" listagem={listagem} rowSelect={onRowSelect}>
                    <PettColumn field="PIS_CODIGO" header="Código" sortable ></PettColumn>
                    <PettColumn field="PIS_DESCRICAO" header="Descrição" sortable ></PettColumn>
                    <PettColumn field="PIS_DTCADASTRO" header="Dt. Cadastro" body={(rowData) => formatarDataStr2(rowData,'PIS_DTCADASTRO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="PIS_DTATUALIZACAO" header="Dt. Atualização" body={(rowData) => formatarDataStr2(rowData,'PIS_DTATUALIZACAO')} sortable align="center" alignHeader="center"></PettColumn>
                    <PettColumn field="PIS_USUARIO" header="Atualizado Por" sortable ></PettColumn>
                </PettGrid>
                <Sentinela onIntersect={() => carregarMais(operacao, pesquisa)} carregando={carregando} final={final} length={listagem.length} erro={erro} />
            </ColunaCentral>
        </PettIf>
        <Rodape />
    </>
}

export default Piscofins;