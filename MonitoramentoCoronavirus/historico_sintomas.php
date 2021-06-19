<?php
include 'header.php';

$nivUser= $_SESSION['nivelUser'];

switch($nivUser){
	case 2:
        $count_adm = "SELECT COUNT(*) AS total FROM sintoma";
        $select_adm = "SELECT sin.* , pac.nompac FROM sintoma sin INNER JOIN paciente pac on sin.codpac=pac.codpac";
    
        $qryCount_adm = $PDO->prepare($count_adm);
        $qryCount_adm->execute();
    
        $total = $qryCount_adm->fetchColumn();
    
        $qry_adm = $PDO->prepare($select_adm);
        $qry_adm->execute();
        $qry=$qry_adm;	
		break;
	default:
        $id= $_SESSION['codUser'];
        $count_pac = "SELECT COUNT(*) AS total FROM sintoma WHERE codpac = " . $id;
        $select_pac = "SELECT sin.* , pac.nompac FROM sintoma sin INNER JOIN paciente pac on sin.codpac=pac.codpac WHERE pac.codpac =" .$id;
    
        $qryCount_pac = $PDO->prepare($count_pac);
        $qryCount_pac->execute();
    
        $total = $qryCount_pac->fetchColumn();
    
        $qry_pac = $PDO->prepare($select_pac);
        $qry_pac->execute();
        $qry=$qry_pac;
		break;
}

?>
<html>
<?php if ($total > 0) { ?>
<table class="table table-dark table-hove" >
     <thead class="thead-dark">
         <tr>
            <th scope="col">Nome do Usuário</th>
            <th scope="col">Data do Historico</th>
            <th scope="col">Falta de Ar</th>
            <th scope="col">Febre</th>
            <th scope="col">Tosse</th>
            <th scope="col">Dor no Corpo</th>
            <th scope="col">Dor de Garganta</th>
            <th scope="col">Diarreia</th>
            <th scope="col">Coriza</th>
            <th scope="col">Situação do Covid</th>
        </tr>
    </thead>
    
    <tbody>
	    <?php while ($sintoma = $qry->fetch(PDO::FETCH_ASSOC)) { ?>
            <tr>
                <td><?= $sintoma['nompac']; ?></td>
                <td><?= $sintoma['datsin']; ?></td>
                <td><?= $sintoma['falsin']; ?></td>
                <td><?= $sintoma['febsin']; ?></td>
                <td><?= $sintoma['tossin']; ?></td>
                <td><?= $sintoma['dorsin']; ?></td>
                <td><?= $sintoma['garsin']; ?></td>
                <td><?= $sintoma['diasin']; ?></td>
                <td><?= $sintoma['corsin']; ?></td>
                <td><?= $sintoma['covsin']; ?></td>
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