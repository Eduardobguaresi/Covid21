<?php
include 'header.php';

$count = "SELECT COUNT(*) AS total FROM paciente ";
$select = "SELECT *  FROM paciente ";
    
$qryCount = $PDO->prepare($count);
$qryCount->execute();
    
$total = $qryCount->fetchColumn();
    
$qry = $PDO->prepare($select);
$qry->execute();




?>
<html>
<?php if ($total > 0) { ?>  
<table class="table table-dark table-hove" >
    <thead class="thead-dark">
         <tr>
            <th></th>
            <th scope="col">Id</th>
            <th scope="col">Nome do Usuário</th>
            <th scope="col">Data de Nascimento</th>
            <th scope="col">Cidade</th>
            <th scope="col">Rua</th>
        </tr>
    </thead>
    
    <tbody>
	    <?php while ($paciente = $qry->fetch(PDO::FETCH_ASSOC)) { ?>
            <tr>
                <td><input type="radio" name="admin" value=<?php $paciente['codpac']?>></label></td>
                <td><?= $paciente['codpac']; ?></td>
                <td><?= $paciente['nompac']; ?></td>
                <td><?= $paciente['datpac']; ?></td>
                <td><?= $paciente['cidpac']; ?></td>
                <td><?= $paciente['ruapac']; ?></td>
            </tr> 
        <?php } ?>
    </tbody> 
</table>         
<?php }else{ ?>
    <div align="center">
        <td><b>Não a nenhum histórico de sintomas</b></td>
    </div> 
<?php } ?>   
</html>

</html>