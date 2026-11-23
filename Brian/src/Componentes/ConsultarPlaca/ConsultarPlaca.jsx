//Atualizacoes:
//2026.11.17 - Trocado o IfComponent local pelo PettIf do pett-componentes.
//2026.11.17 - InputMask/InputText do PrimeReact trocados pelo PettFieldMask/PettFieldText do pett-componentes.
//2026.11.17 - Botoes (react-bootstrap Button, <button> e Link com classe btn) trocados pelo PettButton do pett-componentes.
//2026.11.18 - Modal do react-bootstrap trocado pelo PettModal do pett-componentes.
//2026.11.18 - PettMensagem local (sweetalert2) trocado pelo PettMensagem do pett-componentes.
//2026.11.18 - Imports reorganizados (externos; pett-componentes em ordem alfabetica; Api, contextos, hooks, componentes, outros e CSS).
//2026.11.18 - Rodape dos modais: btn-group trocado por d-flex gap-1 (espaco entre os botoes).
//2026.11.18 - Removida a classe mb-1 do size dos PettField* (o espacamento fica com o pett-componentes/row g-1).
import { useState } from 'react';
import axios from 'axios';

import { PettButton } from 'pett-componentes';
import { PettFieldMask } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';
import { PettModal } from 'pett-componentes';

import './ConsultarPlaca.css';

function ConsultarPlaca({show,fechar,salvar}) {
    const [ pesquisa, setPesquisa ] = useState({ placa: '' });
    const [ resultado, setResultado ] = useState({ MARCA: '', error: '', extra: {} });
    const [ erro, setErro ] = useState(null);
    const [ consultando, setConsultando ] = useState(false);
    // const inputMaskRef = useRef(null);

    // useEffect(() => {
    //     if (inputMaskRef.current) {
    //         inputMaskRef.current.element.focus();
    //         inputMaskRef.current.element.select(); // Seleciona todo o texto
    //     }
    // }, []);

    // Função para autenticar e obter o token bearer
    async function autenticar() {
        try {
            const formData = new FormData();
            formData.set('email','rogerio@pett.com.br');
            formData.set('password','M41c01macdc!');
            const response = await axios.post('https://cluster.apigratis.com/api/v2/login',formData);
            setErro(null);
            return response.data.authorization.token;
        } catch (error) {         
            console.log('CATCH',error.response.data);
            setErro('ERRO: '+error.response.data.message);
        }
    };

    // Função para consultar placa de veículo
    async function consultar(token) {
        if (token) {
            try {
                const formData = {
                    'placa': pesquisa.placa
                }
                const response = await axios.post(`https://cluster.apigratis.com/api/v2/vehicles/dados`, formData, {
                    headers: {
                        'Content-Type': 'application/json',
                        'DeviceToken': 'f45ffcda-a77c-46a7-a337-9330606e1390',
                        'Authorization': `Bearer ${token}`
                    }
                });
                setResultado(response.data.response);
                if (response.data.response.extra === undefined) {
                    setResultado((prevResultado) => ({
                        ...prevResultado,
                        placa_consultada: pesquisa.placa,
                        extra: 'Valor Padrão',
                    }));
                }
                setErro(null);
            } catch (error) {
                console.log('CATCH',error.response.status)
                // setErro('Erro: '+error);
                setResultado({ MARCA: '', error: '', placa_consultada: '', extra: {} });
            }
        }
    };

    async function executaConsulta() {
        setConsultando(true);
        const newToken = await autenticar();
        await consultar(newToken);
        setConsultando(false);
    }

    function salvarEquipamento() {
        if (!resultado.MARCA) {
            PettMensagem.erro('Ah nãooooo!','Consulte uma placa válida.');
        } else {
            if (!pesquisa.placa) {
                PettMensagem.erro('Ah nãooooo!','Campo placa vazio.');
            } else {
                salvar({...resultado, placa_consultada: pesquisa.placa.toUpperCase()}); //funcao que foi passada no props
            }
        }
    }

    function cancelar() {
        setResultado({ MARCA: '', error: '', placa_consultada: '', extra: {} });
        setPesquisa({ placa: '' });
        fechar(); //funcao que foi passada por props.
    }    

    function setCampo(e,objeto,upper) {
        const { name, value } = e.target;
        let valor='';
        if (upper) {
            valor = value?value.toUpperCase():'';
        } else {
            valor = value;
        }
        if (objeto==="pesquisa") {
            setPesquisa({...pesquisa, [name]: valor});
        }
    }

    return <>
        <PettModal show={show} fullscreen title="CONSULTAR PLACA" fechar={false}>
                <div className="container limit-width">
                    <div className="d-flex justify-content-center">
                        <div className="placa mt-3">
                            <PettFieldMask size="w-100" inputClass="w-100 text-center text-dark bg-transparent border-0 placa-input" name="placa" mask="aaa9*99" value={pesquisa.placa} setMap={(e) => setCampo(e,'pesquisa',false)}/>
                        </div>
                    </div>
                    <div className="w-100 d-flex justify-content-center mb-3">
                        {/* <button onClick={autenticar}>Obter Token</button> */}
                        {   consultando
                                ? <PettButton variant="blue" size="lg" icone="loading_white" animado caption="Consultando..." disabled/>
                                : <PettButton variant="blue" size="lg" icone="search" caption="Consultar" click={executaConsulta}/>
                        }
                    </div>
                    {/* <PettIf condicional={ Object.keys(resultado).length !== 0 }> */}
                    <PettIf condicional={ resultado.error!=='' }>
                        <div>
                            <p className="w-100 text-center">{resultado.message}</p>
                        </div>
                    </PettIf>
                    {/* <PettIf condicional={ resultado.MARCA!==undefined && resultado.MARCA!=='' }> */}
                    <PettIf condicional={ resultado.MARCA }>
                        <div>
                            <div className="row mb-0 mt-0 gx-1">
                                <PettFieldText size="col-12" label="MARCA" name="EQP_MARCA" value={resultado.MARCA} readOnly/>
                                <PettFieldText size="col-12" label="MODELO" name="EQP_MODELO" value={resultado.MODELO} readOnly/>
                                <PettFieldText size="col-6" label="ANO FAB." name="EQP_ANOFAB" value={resultado.ano} readOnly/>
                                <PettFieldText size="col-6" label="ANO MOD." name="EQP_ANOMOD" value={resultado.ano_modelo} readOnly/>
                                <PettFieldText size="col-6" label="COR" name="EQP_COR" value={resultado.cor} readOnly/>
                                <PettFieldText size="col-6" label="COMBUSTÍVEL" name="EQP_COMBUSTIVEL" value={resultado.combustivel} readOnly/>
                                <PettFieldText size="col-12" label="CHASSI" name="EQP_CHASSI" value={resultado.extra.chassi} readOnly/>
                                <PettFieldText size="col-12" label="INFO" name="EQP_INFO" value={resultado.info} readOnly/>
                            </div>
                        </div>
                    </PettIf>
                    { erro && <p className="text-center">{erro}</p> }
                </div>
            <PettModal.Footer>
                <div className="container limit-width d-flex gap-1 p-0">
                    <PettButton className="w-100 flex-fill" variant="red" size="lg" caption="Cancelar" click={cancelar}/>
                    { 
                        consultando
                            ? <PettButton className="w-100 flex-fill" variant="green" size="lg" icone="loading_white" animado caption="Consultando..." disabled/>
                            : <PettButton className="w-100 flex-fill" variant="green" size="lg" icone="done" caption="Salvar" click={salvarEquipamento}/>
                    }
                </div>
            </PettModal.Footer>
        </PettModal>
    </>
  
  
}

export default ConsultarPlaca;