<?php

session_start(); //Iniciar a sessao

//Limpar o buffer de saida
ob_start();

//Incluir a conexao com BD
// include_once "cadastrar.php";
include_once "conexao.php";

//Receber os dados do formulario
$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);

// var_dump($dados2);
//print_r($dados2);

//Verificar se o usuario clicou no botao
if(!empty($dados['CadUsuario'])){
    $query_usuario = "INSERT INTO usuarios 
                (nome, email, cpf, rg, ddd, telefone, renda, mae, sexo, profissao, preferencia, data) VALUES
                (:nome, :email, :cpf, :rg, :ddd, :telefone, :renda, :mae, :sexo, :profissao, :preferencia, :data)";
    $cad_usuario = $conn->prepare($query_usuario);
    $cad_usuario->bindParam(':nome', $dados['nome'], PDO::PARAM_STR);
    $cad_usuario->bindParam(':email', $dados['email'], PDO::PARAM_STR);
    $cad_usuario->bindParam(':cpf', $dados['cpf'], PDO::PARAM_STR);
    $cad_usuario->bindParam(':rg', $dados['rg'], PDO::PARAM_STR);
    $cad_usuario->bindParam(':ddd', $dados['ddd'], PDO::PARAM_INT);
    $cad_usuario->bindParam(':telefone', $dados['telefone'], PDO::PARAM_INT);
    $cad_usuario->bindParam(':renda', $dados['renda'], PDO::PARAM_INT);
    $cad_usuario->bindParam(':mae', $dados['mae'], PDO::PARAM_STR);
    $cad_usuario->bindParam(':sexo', $dados['sexo'], PDO::PARAM_STR);
    $cad_usuario->bindParam(':profissao', $dados['profissao'], PDO::PARAM_STR);
    $cad_usuario->bindParam(':preferencia', $dados['preferencia'], PDO::PARAM_STR);

    //$data = date('Y-m-d', strtotime(str_replace('/', '-', $dados['data'])));
    $data2 = $dados['data'];
    $data2Formatada = date('Y-m-d', strtotime($data2));
   

    $data3 = $dados['data'];
    // $data3Formatada = implode('-', ) ;

    // $cad_usuario->bindParam(':data', $data, PDO::PARAM_STR);
    $cad_usuario->bindParam(':data', $data2Formatada, PDO::PARAM_STR);
    
    $cad_usuario->execute();
    // var_dump($conn->lastInsertId());

    //Recuperar o ultimo id inserido
    $id_usuario = $conn->lastInsertId();

    $query_endereco= "INSERT INTO enderecos 
                (logradouro, numero, usuario_id) VALUES 
                (:logradouro, :numero, :usuario_id)";
    $cad_endereco = $conn->prepare($query_endereco);
    $cad_endereco->bindParam(':logradouro', $dados['logradouro'], PDO::PARAM_STR);
    $cad_endereco->bindParam(':numero', $dados['numero'], PDO::PARAM_STR);
    $cad_endereco->bindParam(':usuario_id', $id_usuario, PDO::PARAM_INT);
    $cad_endereco->execute();

    //Criar a variavel global para salvar a mensagem de sucesso
    $_SESSION['msg'] = "<p style='color: #ff0;'></p>";

    //Redirecionar o usuario para pagina inicial se ele for acessar direto essa
    header("Location: index.php");
}else{
    //Criar a variavel global para salvar a mensagem de erro
    $_SESSION['msg'] = "<p style='color: #f00;'>Erro: Usuário não cadastrado com sucesso!</p>";

    //Redirecionar o usuario para nao acessssa essa pagina
    header("Location: index.php");
}
