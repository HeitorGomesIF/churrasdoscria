<?php include "../config.php";


$login = $_POST["usuario"];
$senha = $_POST["senha"];

$sql = $conexao->query("SELECT * FROM participantes");
$result = $sql->fetch_assoc(); 



if($senha == $result["senha"] && $login == $result["nome"]){

    $_SESSION["usuario"] = $result["nome"];
    $_SESSION["id"] = $result["id"];

    echo " <script> window.location = 'dashboard.php'; </script> ";
}


header('location: ../login.php?error=Usuário ou senha incorreto');

//echo json_encode(["status" => "erro", "mensagem" => "Senha ou usuarios incorretos amigão ❌"]);
