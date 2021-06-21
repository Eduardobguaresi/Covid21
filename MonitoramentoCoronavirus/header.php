<?php include 'conecta.php';
if($_SESSION['nivelUser'] != NULL){
}else{
  $_SESSION['nivelUser']=0;
}

?>

<html>
    <head>
        <meta charset="utf-8">
        <title> Monitoramento Coronavirus</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="lib\css\estilo.css" />
    </head>
    <body>
        <div class="container">
            <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
              
               <b><i> Monitoramento Coronavirus</i></b>
        
               <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                <li><a href="index.php" class="nav-link px-2 link-dark">Home</a></li>
                <li><a href="resultadoapi.php" class="nav-link px-2 link-dark">Casos Covid-19</a></li>
              <?php if($_SESSION['nivelUser']== 2){?>
                <li><a href="historico_sintomas.php" class="nav-link px-2 link-dark">Historico de Sintomas</a></li>
                <li><a href="historico_paciente.php" class="nav-link px-2 link-dark">Historico de Pacientes</a></li>
               </ul> 
                <div class="col-md-3 text-end">
                  Administrador:<b><?php echo $_SESSION['nomUser'];?></b>
                  <a class="btn btn-primary" href="logout.php"><i class="fa fa-plus" ></i> Desconectar</a>
                </div>
              <?php }elseif($_SESSION['nivelUser'] == 1){?>
                <li><a href="sintomas.php" class="nav-link px-2 link-dark">Cadastro de Sintomas</a></li>
                <li><a href="historico_sintomas.php" class="nav-link px-2 link-dark">Historico de Sintomas</a></li>
               </ul>
               <div class="col-md-3 text-end">
                  Paciente:<b><?php echo $_SESSION['nomUser'];?></b>
                  <a class="btn btn-primary" href="logout.php"><i class="fa fa-plus" ></i> Desconectar</a>
                </div>
              <?php }else{?>
                </ul>
                <div class="col-md-3 text-end">
                  <a class="btn btn-primary" href="logar.php"><i class="fa fa-plus"></i> Logar</a>
                  <a class="btn btn-primary" href="registrar.php"><i class="fa fa-plus"></i> Registrar</a>
                </div>
              <?php }?>
            </header>
        </div> 
        
        <script src="lib/jquery/jquery.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    </body>    
</html>