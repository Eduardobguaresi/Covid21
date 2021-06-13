<?php
    session_start();
    $_SESSION['codUser'] = NULL;
    header("Location: logar.php");
    exit();
?>