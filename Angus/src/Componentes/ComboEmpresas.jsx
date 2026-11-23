import { useContext } from "react";

import { PettFieldDrop } from "pett-componentes";
import { AuthContext } from "../Contextos/Auth";

function ComboEmpresas() {
    const { empresaSelecionada, usuario, setarEmpresa } = useContext(AuthContext);

    // function clickEmpresa(e) {
    //     const novaEmpresa = usuarioEmpresas.find(item => item.value === e)
    //     setarEmpresa(novaEmpresa);
    //     window.location.reload();
    // }
    function clickEmpresa(e) {
        // 'e' já virá como o valor selecionado (ex: o código da empresa)
        const novaEmpresa = usuario.empresas.find(item => item.value === e);
        
        if (novaEmpresa) {
            setarEmpresa(novaEmpresa);
            // O reload garante que todos os componentes e APIs busquem os dados da nova empresa
            window.location.reload();
        }
    }

    return <>
        <div className="row g-0 mb-2">
            <PettFieldDrop size="col-12" label="EMPRESA ATIVA" name="EMPRESAS" value={empresaSelecionada?.value || ''} options={usuario?.empresas || []} onChange={(e) => clickEmpresa(e.value)}/>
        </div>
    </>
}

export default ComboEmpresas;