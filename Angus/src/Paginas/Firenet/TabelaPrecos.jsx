import { useEffect } from 'react';

import { PettButton } from 'pett-componentes';
import { PettFieldFloat } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIf } from 'pett-componentes';

import { useTabela } from '../../Hooks/useTabela';
import AtualizadoPor from '../../Componentes/AtualizadoPor';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import BarraSuperior from '../../Componentes/BarraSuperior';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Rodape from '../../Componentes/Rodape';
import Loading from '../../Componentes/Loading';

function TabelaPrecos() {

    const vazio = {
        TAB_CODIGO: '',
        TAB_DESCRICAO1: '', TAB_MARGEM1: '',
        TAB_DESCRICAO2: '', TAB_MARGEM2: '',
        TAB_DESCRICAO3: '', TAB_MARGEM3: '',
        TAB_DESCRICAO4: '', TAB_MARGEM4: '',
        TAB_DESCRICAO5: '', TAB_MARGEM5: '',
        TAB_DESCRICAO6: '', TAB_MARGEM6: '',
        TAB_DTATUALIZACAO: '',
        TAB_USUARIO: '',
    };

    const {
        registro: tabPreco,
        setRegistro: setTabPreco,
        operacao,
        disableFields,
        carregandoRegistro,
        visualizar,
        editar,
        cancelarEdicao,
        salvar
    } = useTabela('firenet/tabelaprecos', vazio, 'TAB_CODIGO', 'TAB_CODIGO');

    // Inicialização forçada no registro 1
    useEffect(() => {
        visualizar(1);
    }, []);

    // Como não há listagem, passamos arrays vazios para o salvar
    const hSalvar = () => salvar([], () => {});

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Tabela de Preços" linkBack="/">
            <PettButton caption="Editar"   icone="pencil"    click={() => editar(1)} condicional={operacao === "visualizar"}/>
            <PettButton caption="Salvar"   icone="checkmark" click={hSalvar}         condicional={operacao === "atualizar"}/>
            <PettButton caption="Cancelar" icone="cancel"    click={cancelarEdicao}  condicional={operacao === "atualizar"}/>
            <AtualizadoPor usuario={tabPreco.TAB_USUARIO} data={tabPreco.TAB_DTATUALIZACAO} hora={tabPreco.TAB_HRATUALIZACAO} condicional={operacao==="visualizar"}/>                
        </BarraOpcoes>

        <ColunaCentral left="false" right="false" className="container-fluid pt-3">
            <Loading status={carregandoRegistro} />
            <PettIf condicional={!carregandoRegistro}>
                {/* Gerando os 6 campos dinamicamente para limpar o código */}
                {[1, 2, 3, 4, 5, 6].map(i => (
                    <div key={i} className="row gx-1 ">
                        <PettFieldText 
                            size="col-lg-4 col-md-4 col-sm-12 mb-1" 
                            label={`TABELA 0${i}`} 
                            name={`TAB_DESCRICAO${i}`} 
                            value={tabPreco[`TAB_DESCRICAO${i}`]} 
                            set={setTabPreco} 
                            readOnly={disableFields} 
                            disabled={disableFields}
                        />
                        <PettFieldFloat 
                            size="col-lg-2 col-md-2 col-sm-12 mb-1" 
                            label={`MARGEM 0${i}`} 
                            name={`TAB_MARGEM${i}`} 
                            value={tabPreco[`TAB_MARGEM${i}`]} 
                            set={setTabPreco} 
                            readOnly={disableFields} 
                            disabled={disableFields}
                        />
                    </div>
                ))}
            </PettIf>
        </ColunaCentral>
        <Rodape />
    </>
}

export default TabelaPrecos;