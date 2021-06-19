<?php
require 'conecta.php';
require 'Usuario.class.php';

if(empty($_POST['usuario']) || empty($_POST['senha'])){
    header("Location: logar.php");
    exit();
}
$u= new Usuario();

$usuario = addslashes($_POST['usuario']);
$senha = addslashes($_POST['senha']);
if($u->login($usuario, $senha) == true){
    if(isset($_SESSION['codUser'])){
        header("Location: index.php");
    }else{
        $_SESSION['nao_autenticado'] = true;
        header("Location: logar.php");
    }
}else{
    $_SESSION['nao_autenticado'] = true;
    header("Location: logar.php");
}


?>