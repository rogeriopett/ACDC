import { useState, useEffect, useCallback } from "react";
import Api from "../Api";

export default function useUnidades() {
    const [unidades, setUnidades] = useState([]);
    const [unidadesTodas, setUnidadesTodas] = useState([]);

    const getUnidades = useCallback(() => {
        const formData = new FormData();
        formData.set("op", "combo");
        formData.set("comtodos", "S");

        Api.post("unidades.php", formData).then((response) => {
            if (response.data.erro === "N") {
                setUnidadesTodas(response.data.msg);
                setUnidades(response.data.msg.slice(1));
            }
        });
    },[]);

    useEffect(() => {
        getUnidades();
    }, [getUnidades]);

    return { unidades, unidadesTodas, getUnidades };
}
