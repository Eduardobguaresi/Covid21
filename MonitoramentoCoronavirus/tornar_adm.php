<?php
require_once 'conecta.php';

$tornar_adm = isset($_POST['admin']) ? $_POST['admin'] : null;

$sql="UPDATE paciente SET nivel= 2 WHERE codpac= ".$tornar_adm;
$qry= $PDO->prepare($sql);
if ($qryAdd->execute()) {
	header('Location: index.php');             
    
} else {
	echo "Erro ao cadastrar o paciente";
	print_r($qryAdd->errorInfo());
}

?>
