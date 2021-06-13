<?php
session_start();
if(!$_SESSION['codUser']){
    header('Location: index.php');
    exit();
}
?>