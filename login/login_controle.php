<?php include "../config.php";


$login = addslashes( $_POST["usuario"]);
$senha = addslashes( $_POST["senha"]);

$sql = $conexao->query("SELECT * FROM operadores WHERE login='$login' AND senha='$senha'");
$result = $sql->fetch_assoc(); 



if($sql->num_rows >= 1){
    if($result['senha'] == $senha){
        unset($senha);

        $_SESSION["usuario"] = $result;
    
    
        echo " <script> window.location = 'dashboard.php'; </script> "; 
    } else {
        echo json_encode(["status" => "erro", "mensagem" => "Senha ou usuarios incorretos amigão ❌"]);
    }

}


