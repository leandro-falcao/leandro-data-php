<?php
session_start(); //Iniciar a sessao
?>
<!DOCTYPE HTML>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <link rel="stylesheet" href="./css/main.css">
    <script src="./js/main.js"></script>

    <title>inserindo dados</title>
</head>

<body>
    <div id="root">
        <div class="links">
            <a href="index.php" style="padding-right: 10%;">Index</a>
            <a href="listar.php" style="padding-right: 10%;">Listar</a>

        </div>

        <h1>Cadastrar Usuário</h1>

        <?php
        if (isset($_SESSION['mensegem'])) {
            echo $_SESSION['mensegem'];
            unset($_SESSION['mensegem']);
        }
        ?>

        <form method="POST" action="processa.php">
            <h3>Dados básicos</h3>

            <label>Nome: </label>
            <input type="text" name="nome" id="nome" maxlength="40" placeholder="Nome do usuário">
    
            <label>Data Nascimento: </label>
            <input type="date" name="data" id="data" maxlength="8" placeholder="Data Nascimento">

            <label>E-mail: </label>
            <input type="email" name="email" id="email" maxlength="100" placeholder="E-mail do usuário">

            <label>CPF: </label>
            <input type="text" name="cpf" id="cpf" maxlength="11" placeholder="cpf do usuario">
            
            <label>RG: </label>
            <input type="text" name="rg" id="rg" maxlength="7" placeholder="RG do usuario">
            
            
            <label>DDD: </label>
            <input type="number" name="ddd" id="ddd" maxlength="2" placeholder="ddd do telefone">
            
            <label>telefone: </label>
            <input type="number" name="telefone" id="telefone" maxlength="9" placeholder="telefone">
            
            <label>Renda: </label>
            <input type="number" name="renda" id="renda"  maxlength="12" placeholder="renda">
            
            <label>Sexo: </label>
            <select name="sexo" id="sexo" placeholder="sexo do usuario">
                <option value="M">M</option>
                <option value="F">F</option>
            </select>
            
            <label>Profissões: </label>
            <select name="profissao" id="profissao" placeholder="profissao do usuario">
                <option value="Desenvolvedor de software">Desenvolvedor de software</option>
                <option value="Analista de SistemasF">Analista de Sistemas</option>
                <option value=" Dentista"> Dentista</option>
                <option value="Enfermeira">Enfermeira</option>
                <option value="funcionario publico">funcionario publico</option>
                <option value="Farmacêutico">Farmacêutico</option>
                <option value="Fisioterapeuta">Fisioterapeuta</option>
                <option value="Médico">Médico</option>
                <option value="Higienista Dental">Higienista Dental</option>
                <option value="Engenheiro Civil">Engenheiro Civil</option>
                <option value="Administrador de Banco de Dados">Administrador de Banco de Dados</option>
                <option value=" Engenheiro Mecânico"> Engenheiro Mecânico</option>
                <option value="Veterinário">Veterinário</option>
                <option value="Nutricionista">Nutricionista</option>
                <option value="Ultra-sonografista">Ultra-sonografista</option>
                <option value="Programador">Programador</option>
                <option value="Esteticista">Esteticista</option>
                <option value="Técnico de laboratório">Técnico de laboratório</option>
                <option value="professor(a)">professor(a)</option>
                <option value="juiz">juiz</option>
                <option value="procurador de justiça">procurador de justica</option>
                <option value="pintor">pintor</option>
                <option value="costureira">costureira</option>
                <option value="artista">artista</option>
                <option value="contador">contador</option>
                <option value="assistente RH">assistente RH</option>
                <option value="mecanico">mecanico</option>
                <option value="padeiro">padeiro</option>
                <option value="parlamentar federal">parlamentar federal</option>
                <option value="parlamentar distrital">parlamentar distrital</option>

                
            </select>
           
            <label>Preferências: </label>
            <select name="preferencia" id="preferencia" placeholder="preferencia do usuario">
                <option value="iphone7">iphone7</option>
                <option value="iphone 10">iphone 10</option>
                <option value="iphone 10xr"> iphone 10xr</option>
                <option value="samsung s9">samsung s9</option>
                <option value="xiaomi 12">xiaomi 12</option>
                <option value="redminote 10">redminote 10</option>
                <option value="samsung s20">samsung s20</option>
                <option value="LG k10">LG k10</option>
                <option value="HTC one">HTC one</option>
                <option value="motorola g5">motorola g5</option>
                <option value="motorola one">motorola one</option>
                <option value="ipad 5"> ipad 5</option>
                <option value="pixel 5">pixel 5</option>
                <option value="tablet S5">tablet S5</option>
                <option value="redmi note8">redmi note8</option>
                <option value="lg k8">lg k8</option>
                <option value="one plus">one plus</option>
                <option value="positivo hit p10">positivo hit p10</option>
                <option value="huawei p30">huawei p30</option>
                <option value="iphone 12">iphone 12</option>
                
            </select>
           
            
            <label>Nome Mae: </label>
            <input type="text" name="mae" id="mae" maxlength="40" placeholder="Nome do mae">
            <!-- <input type="radprofissaoname="profissao" id="sexo" maxlength="2" placeholder="escolha um sexo"> -->

            <h3>Endereço do usuário</h3>

            <label>Logradouro: </label>
            <input type="text" name="logradouro" id="logradouro" placeholder="Endereço do usuário, ex: Rua, avenida">

            <label>Número residencia: </label>
            <input type="text" name="numero" id="numero" placeholder="Número casa apto ex.: 20a">

            <input type="submit" value="Cadastrar" name="CadUsuario" id="btn-send">
        </form>


        
    </div>

</body>

</html>