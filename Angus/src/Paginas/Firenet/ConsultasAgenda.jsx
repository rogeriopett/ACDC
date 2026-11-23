//Atualizacoes:
//2026.11.19 - PettCalendar (agenda antiga) trocado pelo PettAppointments do pett-componentes; imports reorganizados.
import { useContext, useEffect, useState, useCallback } from 'react'

import { PettAppointments } from 'pett-componentes';
import { PettButton } from 'pett-componentes';
import { PettFieldDate } from 'pett-componentes';
import { PettFieldDrop } from 'pett-componentes';
import { PettFieldText } from 'pett-componentes';
import { PettIcon } from 'pett-componentes';
import { PettIf } from 'pett-componentes';
import { PettMensagem } from 'pett-componentes';

import Api from '../../Api';
import { AuthContext } from '../../Contextos/Auth';
import BarraSuperior from '../../Componentes/BarraSuperior';
import BarraOpcoes from '../../Componentes/BarraOpcoes';
import ColunaCentral from '../../Componentes/ColunaCentral';
import Rodape from '../../Componentes/Rodape';
import { decimalToHexColor, formatarDataFb, hojeMaisDias, hojeMenosDias, tratarCatch } from '../../Funcoes';

const messages = {
    // date: 'Dia',
    // time: 'Hora',
    // event: 'Agendamento',
    // allDay: 'Dia Todo',
    // week: 'Semana',
    // work_week: 'Semana Útil',
    // day: 'Dia',
    // month: 'Mês',
    // previous: 'Anterior',
    // next: 'Próxima',
    // yesterday: 'Ontem',
    // tomorrow: 'Amanhã',
    // today: 'Hoje',
    // agenda: 'Agenda',
    
    noEventsInRange: 'Nenhum agendamento nesse intervalo.',
    /**
     * params {total} count of remaining events 
     * params {remainingEvents} remaining events 
     * params {events} all events in day
     */
    showMore: (total, remainingEvents, events) => `Mostrar +${total}`,
}

// Horário em que a rolagem começa nas visões com horário (só hora e minuto contam).
const scrollToTime = new Date(1970, 0, 1, 6);

// Componente customizado para renderizar o evento com bolinha colorida.
// Fica FORA da tela: definido dentro dela, ganharia uma identidade nova a cada render e o React recriaria todos os eventos.
const EventComponent = ({ event }) => {
    // let dotColor = decimalToHexColor(event.VEN_COR);
    let dotColor = (event.cor_status);
    return (
        <span>
            {/* Bolinha colorida */}
            <span
                style={{
                    display: 'inline-block',
                    width: '13px',
                    height: '13px',
                    backgroundColor: dotColor,
                    borderRadius: '50%',
                    // marginTop: '3px',
                    marginRight: '3px',
                    border: '2px solid #ffffffbb'
                }}
            ></span>
            {event.title}
        </span>
    );
};

// Os componentes do evento e os formatos de data/hora (dia, semana, mês, horas) já saem em pt-BR por padrão no PettAppointments.
const components = { event: EventComponent };

function ConsultasAgenda() {    
    const { logout, empresaSelecionada } = useContext(AuthContext);
    const [ carregando, setCarregando ] = useState(false);
    const [ listagem, setListagem ] = useState([]);
    const [ operacao, setOperacao ] = useState('inserir');
    const [ pesquisa, setPesquisa ] = useState({
        campo: 'CLI_NOME',
        texto: '',
        datainicial: formatarDataFb(hojeMenosDias(15)),
        datafinal: formatarDataFb(hojeMaisDias(15)),
        vendedor: 'TODOS'
    });
    const [ selectVendedores, setSelectVendedores ] = useState([]);    
    
    const [agendaView, setAgendaView] = useState('work_week');

    async function listar() {
        setCarregando(true);    
        var formData = new FormData();
        formData.set('op','agenda');
        formData.set('empresa', empresaSelecionada.value);
        formData.set('datainicial',formatarDataFb(pesquisa.datainicial) || '');
        formData.set('datafinal',formatarDataFb(pesquisa.datafinal) || '');
        formData.set('VEN_CODIGO',pesquisa.vendedor || '');
        formData.set('CLI_NOME',pesquisa.cliente || '');
        try {
            const response = await Api.post('firenet/consultas',formData);
            if (response.data.erro==='S') throw response;
            
            const eventosFormatados = response.data.msg.map(event => ({
                ...event,
                start: new Date(event.start),  // Converte string para objeto Date
                end: new Date(event.end)       // Converte string para objeto Date
            }));

            setListagem(eventosFormatados);
            setCarregando(false);
        } catch (error) {
            setCarregando(false);
            tratarCatch('ConsultasAgenda listar',error,logout);
        }
    }

    async function getVendedores() {
        const formData = new FormData();
        formData.set('op','combo');
        formData.set('empresa',empresaSelecionada.value);
        formData.set('todos',true);
        try {
            const response = await Api.post('firenet/vendedores',formData);
            if (response.data.erro==='S') throw response;
            setSelectVendedores(response.data.msg);
        } catch (error) {
            tratarCatch('ConsultasAgenda getVendedores',error,logout);
        }
    }

    useEffect(() => {
        setOperacao('');
        getVendedores();
        listar();
        
        setPesquisa({
            campo: 'CLI_NOME',
            texto: '',
            datainicial: formatarDataFb(hojeMenosDias(15)),
            datafinal: formatarDataFb(hojeMaisDias(15)),
            vendedor: 'TODOS',
        })
    },[]);

    function pesquisar() {
        setOperacao('listar');
        setListagem([]);
        // setPagina(0);
        // setFinal(false);
        listar(0,false,true);
    };

    function reset() {
        window.location.reload();
    };

    const handleSelectEvent = useCallback((event) => {
        const itens = event.ITENS.map((item, index) => {
            return 'Exame: <strong>'+item.CSI_EXAME+' - ' + item.CSI_DESCRICAO + '</strong><br/>';
        }).join('');
        const html = 'Consulta: <strong>'+event.id+'</strong><br/>'+
            'Cliente: <strong>'+event.title+'</strong><br/>'+
            'Médico: <strong>'+event.VEN_NOME+'</strong><br/>'+
            'Inicio: <strong>'+event.COS_DATAINICIO+' '+event.COS_HORAINICIO+'</strong><br/>'+
            'Fim: <strong>'+event.COS_DATAFIM+' '+event.COS_HORAFIM+'</strong><br/>'+
            'Status: <strong>'+event.COS_STATUS+'</strong><br/>'+
            itens;
        PettMensagem.info('Dados da consulta',html);
    },[]);

    const eventPropGetter = useCallback( 
        (event) => {
        // let backgroundColor = event.cor_status;
        let backgroundColor = decimalToHexColor(event.VEN_COR);
  
        return {
            style: {
                backgroundColor,
                color: '#000',
                borderRadius: '4px',
                border: 'none',
            },
        };
    },[]);

    const [viewDate, setViewDate] = useState(new Date());
    const handleNavigate = useCallback((newDate) => { setViewDate(newDate); }, []); // 3. Função para capturar o clique nos botões (Hoje, Voltar, Próximo)
    const handleViewChange = useCallback((newView) => { setAgendaView(newView); }, []);

    return <>
        <BarraSuperior />
        <BarraOpcoes titulo="Agenda de Consultas" linkBack="/">
            <PettButton caption="Cadastro de Consultas" icone="today" link="/consultas"/>
        </BarraOpcoes>

        <PettIf condicional={operacao==="listar" || operacao===""}>
            <ColunaCentral left="false" right="false" className="container-fluid pt-3">
                <div className="row mb-2 g-1">
                    <PettFieldDate size="col-lg-2 col-md-2 col-sm-6" label="DATA INICIAL" name="datainicial" value={pesquisa.datainicial} set={setPesquisa} />
                    <PettFieldDate size="col-lg-2 col-md-2 col-sm-6" label="DATA FINAL" name="datafinal" value={pesquisa.datafinal} set={setPesquisa} />
                    <PettFieldDrop size="col-lg-4 col-md-6 col-sm-12" label="MÉDICO" name="vendedor" value={pesquisa.vendedor} set={setPesquisa} options={selectVendedores} optionLabel='LABEL' optionValue='VALUE'/>
                    <PettFieldText size="col-lg-4 col-md-6 col-sm-12" label="CLIENTE" name="cliente" value={pesquisa.cliente} set={setPesquisa}/>
                </div>

                <div className="box shadow-sm">
                    <PettButton caption="Pesquisar" icone="search" click={pesquisar}/>
                    <PettButton caption="Limpar" icone="reset" click={reset}/>
                </div>

                <PettIf condicional={ carregando===true }>
                    <div className="text-center mt-5 lead"><PettIcon name="runtime_spinner" size="48" className="me-3"/>Carregando...</div>
                </PettIf>

                <PettIf condicional={ carregando===false }>
                    <div className="box mt-4 mb-5" style={{height: '700px'}}>
                        <PettAppointments
                            components={components}
                            events={listagem}
                            date={viewDate}
                            onNavigate={handleNavigate}
                            view={agendaView}
                            onView={handleViewChange}
                            messages={messages}
                            min={new Date(1970, 0, 1, 5)}
                            scrollToTime={scrollToTime}
                            onSelectEvent={handleSelectEvent}
                            eventPropGetter={eventPropGetter}
                        />
                    </div>
                </PettIf>
            </ColunaCentral>
        </PettIf>
        <Rodape/>
    </>
}

// Selectable.propTypes = {
//   localizer: PropTypes.instanceOf(DateLocalizer),
// }
export default ConsultasAgenda;