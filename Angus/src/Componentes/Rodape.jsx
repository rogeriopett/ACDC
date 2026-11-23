// import Bloco from './Bloco';

function Rodape() {
    return <>
        <footer className="fixed-bottom">
            <div className="barra2">
                <div className="container-fluid">
                    <div>&copy; Runtime Sistemas - Angus Versão: {(import.meta.env.VITE_VERSAO || '')+'.'+(import.meta.env.VITE_BUILD || '')+'.'+(import.meta.env.VITE_COMPILE || '')}</div>
                </div>
            </div>
        </footer>
    </>
}

export default Rodape;