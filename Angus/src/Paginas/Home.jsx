import { Link } from "react-router-dom";

function Home() {
    return <>
        <div className="mt-5">
            <center><h1>Sistema Angus</h1></center>
            <center><h4>Apresentação do sistema</h4></center>
            <center><h6><Link to="/login">Acessar o sistema</Link></h6></center>
        </div>
    </>
}

export default Home;