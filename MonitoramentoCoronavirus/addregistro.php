<?php
require_once 'conecta.php';


$nome = isset($_POST['nome']) ? $_POST['nome'] : null;
$dataN = isset($_POST['dataN']) ? $_POST['dataN'] : null;
$usuario = isset($_POST['usuario']) ? $_POST['usuario'] : null;
$senha = isset($_POST['senha']) ? $_POST['senha'] : null;
$altpaciente = isset($_POST['altpaciente']) ? $_POST['altpaciente'] : null;
$peso = isset($_POST['peso']) ? $_POST['peso'] : null;
$sexo = isset($_POST['sexo']) ? $_POST['sexo'] : null;
$cpf = isset($_POST['cpf']) ? $_POST['cpf'] : null;
$cep = isset($_POST['cep']) ? $_POST['cep'] : null;
$estado = isset($_POST['estado']) ? $_POST['estado'] : null;
$cidade = isset($_POST['cidade']) ? $_POST['cidade'] : null;
$rua = isset($_POST['rua']) ? $_POST['rua'] : null;



$sql="INSERT INTO  paciente(nompac, datpac, pespac, altpac, cpfpac, sexpac, usupac, senhapac, ruaend, cidend, cepend, estend) VALUES (:nome, :dataN,  :peso, :altpaciente, :cpf, :sexo, :usuario, :senha, :rua, :cidade, :cep, :estado)";
$qryAdd= $PDO->prepare($sql);
$qryAdd->bindParam(':nome', $nome);
$qryAdd->bindParam(':dataN', $dataN);
$qryAdd->bindParam(':peso', $peso);
$qryAdd->bindParam(':altpaciente', $altpaciente);
$qryAdd->bindParam(':cpf', $cpf);
$qryAdd->bindParam(':sexo', $sexo);
$qryAdd->bindParam(':usuario', $usuario);
$qryAdd->bindParam(':senha', $senha);
$qryAdd->bindParam(':rua', $rua);
$qryAdd->bindParam(':cidade', $cidade);
$qryAdd->bindParam(':cep', $cep);
$qryAdd->bindParam(':estado', $estado);



if ($qryAdd->execute()) {
	header('Location: index.php');             
    
} else {
	echo "Erro ao cadastrar o registro";
	print_r($qryAdd->errorInfo());
}

?>