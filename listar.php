<?php
session_start(); //Iniciar a sessao

include_once "conexao.php";
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

    <title>listando dados</title>
</head>

<body>
    <div class="content">

        <h1>Listar Usuários</h1>
        <div class="links">
            <a href="index.php" style="padding-right: 10%">Inicio</a>
            <!-- <a href="listar.php" style="padding-right: 10%;">Listar</a> -->
            <a href="cadastrar.php">Cadastrar</a>
        </div>


        <?php
        if (isset($_SESSION['msg'])) {
            echo $_SESSION['msg'];
            unset($_SESSION['msg']);
        }

        $query_usuarios = "SELECT usr.id, usr.nome, usr.email, usr.cpf, usr.rg, usr.ddd, usr.telefone, usr.preferencia, usr.data, usr.sexo, usr.profissao, usr.renda, usr.mae,
                    ende.logradouro, ende.numero
                    FROM usuarios usr
                    LEFT JOIN enderecos AS ende ON ende.usuario_id=usr.id
                    ORDER BY usr.id DESC";
        $result_usuarios = $conn->prepare($query_usuarios);
        $result_usuarios->execute();
        
        // echo implode('/', array_reverse(explode('-', usr.data));
      
        while ($row_usuario = $result_usuarios->fetch(PDO::FETCH_ASSOC)) {
            //var_dump($row_usuario);
            extract($row_usuario);
            echo "<div class='saida-dados'>";
            echo "<div>Nome do usuário: $nome </div>";
            echo "<div>E-mail do usuário: $email </div>";
            echo "<div>CPF do usuário: $cpf </div>";
            echo "<div>RG do usuário: $rg </div>";
            // $dataFormat = implode('/', array_reverse(explode('-', $data));

            echo "<div><span>Data Nascimento: </span>  <span class='date'> $data </span></div>";
            echo "<div><span>Profissao: $profissao </span> <span> - </span> <span>sexo: $sexo </span></div>";
            echo "<div><span>Telefone: $ddd</span> <span> - </span> <span> $telefone </span> <span> --- </span> <span> Aparelho preferência: $preferencia </span></div>";
                
            echo "<div> Renda: $renda </div>";
            echo "<div> nome mãe: $mae </div>";

            echo "<p><div>Endereço: $logradouro" ." Número: $numero </div></p>";
            echo "</div>";
        }
        ?>
    </div>
</body>
    <script>
        let data = document.querySelectorAll('.date');
        data.forEach(function(item){
            let dataFormat = item.innerHTML.split('-');
            console.log('esse o data format: ', dataFormat);
            console.log('esse o data item: ', item);

            item.innerHTML = dataFormat[2] +';' + dataFormat[1] + '/' + dataFormat[0];
        });
    </script>

</html>