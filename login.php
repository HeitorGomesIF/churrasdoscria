<?php

?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/custom.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body>
    
    <div>
        <div>
            <form action="login/login_controle.php" method="POST">
                <div>
                    <label>Usuario</label>
                    <input type="text" name="usuario" required>
                </div>
                <div>
                    <label>Senha</label>
                    <input type="password" name="senha" required>
                </div>
                <div>
                    <button type="submit">Enviar</button>
                </div>
            </form>
        </div>
    </div>


<script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
