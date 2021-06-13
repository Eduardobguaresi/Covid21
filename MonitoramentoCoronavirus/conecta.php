<?php
session_start();
global $PDO;

$PDO = new PDO('mysql:host=localhost;dbname=monitoramento_covid;charset=utf8', 'root', '');

ini_set('display_errors', true);
error_reporting(E_ALL);

?>