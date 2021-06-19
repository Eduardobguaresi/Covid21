
<html>
    <head>
        <meta charset="utf-8">
        <title> Monitoramento Coronavirus</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="./lib/css/estilo.css" />
    </head>
    <body>
        <div class="container">
            <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
              
               <b><i> Monitoramento Coronavirus</i></b>
        
               <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                <li><a href="index.php" class="nav-link px-2 link-dark">Home</a></li>
                <li><a href="sintomas.php" class="nav-link px-2 link-dark">Cadastro de Sintomas</a></li>
                <li><a href="resultadoapi.php" class="nav-link px-2 link-dark">Casos Covid-19</a></li>
                <li><a href="historico_sintomas.php" class="nav-link px-2 link-dark">Historico de Sintomas</a></li>
              </ul>
              
              <div class="col-md-3 text-end">
                Usuário:<b><?php echo $_SESSION['nomUser'];?></b>
                <a class="btn btn-primary" href="logout.php"><i class="fa fa-plus" ></i> Desconectar</a>
              </div>
            </header>
        </div> 
        
        <script src="lib/jquery/jquery.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    </body>    
</html>