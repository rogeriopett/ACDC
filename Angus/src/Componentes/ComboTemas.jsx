import { useContext } from "react";

import { PettFieldDrop } from "pett-componentes";
import { TemaContext } from '../Contextos/Temas';

function ComboTemas() {
    const { tema, setarTema } = useContext(TemaContext);
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

    function clickTema(e) {
        // 'e' já virá como o valor selecionado (ex: o código do tema)
        const novoTema = e;
        console.log('bbb',e)
        if (novoTema) {
            setarTema(novoTema);
        }
    }

    return <>
        <div className="row g-0 mb-2">
            <PettFieldDrop size="col-12" label="TEMA DE CORES" name="TEMAS" value={tema} options={opcoesTema} onChange={(e) => clickTema(e.value)} optionLabel="label" optionValue="valor"/>
        </div>
    </>
}

export default ComboTemas;