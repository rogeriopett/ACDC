//Atualizacoes:
//2026.11.18 - Criado (modelo do Angus). Escolha do tema de cores entre todos os temas do pett-componentes.
import { useContext } from 'react';

import { PettFieldDrop } from 'pett-componentes';

import { TemaContext } from '../Contextos/Temas';

// os CSS de todos estes temas sao importados no App.jsx.
const opcoesTema = [
    { label: 'BLACK DARK', valor: 'blackdark' },
    { label: 'BLACK LIGHT', valor: 'blacklight' },
    { label: 'BLUE DARK', valor: 'bluedark' },
    { label: 'BLUE LIGHT', valor: 'bluelight' },
    { label: 'BROWN DARK', valor: 'browndark' },
    { label: 'BROWN LIGHT', valor: 'brownlight' },
    { label: 'GRAY DARK', valor: 'graydark' },
    { label: 'GRAY LIGHT', valor: 'graylight' },
    { label: 'GREEN DARK', valor: 'greendark' },
    { label: 'GREEN LIGHT', valor: 'greenlight' },
    { label: 'ORANGE DARK', valor: 'orangedark' },
    { label: 'ORANGE LIGHT', valor: 'orangelight' },
    { label: 'PINK DARK', valor: 'pinkdark' },
    { label: 'PINK LIGHT', valor: 'pinklight' },
    { label: 'PURPLE DARK', valor: 'purpledark' },
    { label: 'PURPLE LIGHT', valor: 'purplelight' },
    { label: 'RED DARK', valor: 'reddark' },
    { label: 'RED LIGHT', valor: 'redlight' },
    { label: 'TEAL DARK', valor: 'tealdark' },
    { label: 'TEAL LIGHT', valor: 'teallight' },
    { label: 'YELLOW DARK', valor: 'yellowdark' },
    { label: 'YELLOW LIGHT', valor: 'yellowlight' },
];

function ComboTemas(props) {
    const { tema, setarTema } = useContext(TemaContext);

    return <>
        <PettFieldDrop size={props.size ?? 'col-12'} label="TEMA DE CORES" name="TEMA" value={tema} options={opcoesTema} optionLabel="label" optionValue="valor" onChange={(e) => { if (e.value) setarTema(e.value); }}/>
    </>
}

export default ComboTemas;
