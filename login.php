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
<body class="bg-primary">
    
    <div class="container-fluid py-5">
        <div class="row py-5">
           <div class="col-md-8 m-auto bg-white p-5 rounded">
               <form action="login/login_controle.php" method="POST">
                   <div class="mb-3">
                       <label>Usuario</label>
                       <input type="text" name="usuario" class="form-control" required>
                   </div>
                   <div class="mb-3">
                       <label>Senha</label>
                       <input type="password" name="senha" class="form-control" required>
                   </div>
                   <div class="mb-3">
                       <button type="submit" class="btn btn-primary w-100">Enviar</button>
                   </div>
               </form>
           </div>
        </div>
    </div>


<script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
