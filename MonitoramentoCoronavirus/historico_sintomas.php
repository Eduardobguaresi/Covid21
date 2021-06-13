<?php
require_once 'conecta.php';
include 'header_logado.php';
$id= $_SESSION['codUser'];
$countSql = "SELECT COUNT(*) AS total FROM sintoma WHERE codpac = " . $id;
$dataSql = "SELECT * FROM sintoma WHERE codpac =" . $id;

$qryCount = $PDO->prepare($countSql);
$qryCount->execute();

$total = $qryCount->fetchColumn();

$qryData = $PDO->prepare($dataSql);
$qryData->execute();

?>
<html>
<?php if ($total > 0) { ?>
<table class="table table-bordered table-dark" width="70%">
     <thead class="thead-dark">
         <tr>
            <th scope="col">Data do Historico</th>
            <th scope="col">Falta de Ar</th>
            <th scope="col">Febre</th>
            <th scope="col">Tosse</th>
            <th scope="col">Dor no Corpo</th>
            <th scope="col">Dor de Garganta</th>
            <th scope="col">Congestão Nasal</th>
            <th scope="col">Coriza</th>
            <th scope="col">Situação do Covid</th>
        </tr>
    </thead>
    
    <tbody>
	    <?php while ($sintoma = $qryData->fetch(PDO::FETCH_ASSOC)) { ?>
            <tr>
                <td><?= $sintoma['datsin']; ?></td>
                <td><?= $sintoma['faltadear']; ?></td>
                <td><?= $sintoma['febre']; ?></td>
                <td><?= $sintoma['tosse']; ?></td>
                <td><?= $sintoma['dorcorpo']; ?></td>
                <td><?= $sintoma['dorgarganta']; ?></td>
                <td><?= $sintoma['congestaonasal']; ?></td>
                <td><?= $sintoma['coriza']; ?></td>
                <td><?= $sintoma['resultcovid']; ?></td>
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

<?php
include 'footer.php';
?>