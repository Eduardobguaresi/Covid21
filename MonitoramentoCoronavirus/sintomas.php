<?php
    include 'header.php';
?>
<html>
<form action= "addsintomas.php" method="post" >
    <table  width="70%" align="center" cellspacing="10" cellpadding="16">
        <tr align="center">
            <td><label for="faltaar"><b>Falta de Ar</b></label></td>
            <td><label for="febre"><b>Febre</b></label></td>
        </tr>

        <tr align="center">
        <td><input type="radio" name="faltaar" value="Sim">Sim</label>
                <input type="radio" name="faltaar" value="Não">Não</label>
            </td>       
            <td><input type="radio" name="febre" value="Sim">Sim</label>
                <input type="radio" name="febre" value="Não">Não</label>
            </td>
        </tr>
        <tr align="center">
            <td><label for="tosse"><b>Tosse</b></label></td>
            <td><label for="dorcorpo"><b>Dor no Corpo</b></label></td>
        </tr>

        <tr align="center">
        <td><input type="radio" name="tosse" value="Sim">Sim</label>
                <input type="radio" name="tosse" value="Não">Não</label>
            </td>
            <td><input type="radio" name="dorcorpo" value="Sim">Sim</label>
                <input type="radio" name="dorcorpo" value="Não">Não</label>
            </td>
        </tr>
        <tr align="center">
            <td><label for="dorgarganta"><b>Dor de Garganta</b></label></td>
            <td><label for="diarreia"><b>Diarreia</b></label></td>
        </tr>

        <tr align="center">
        <td><input type="radio" name="dorgarganta" value="Sim">Sim</label>
                <input type="radio" name="dorgarganta" value="Não">Não</label>
            </td>
            <td><input type="radio" name="diarreia" value="Sim">Sim</label>
                <input type="radio" name="diarreia" value="Não">Não</label>
            </td>
        </tr>
        <tr align="center">
            <td><label for="coriza"><b>Coriza</b></label></td>
            <td><label for="dataS"><b>Resultado Covid</b> </label></td>
        </tr>

        <tr align="center">
            <td><input type="radio" name="coriza" value="Sim">Sim</label>
                <input type="radio" name="coriza" value="Não">Não</label>
            </td>
            <td><input type="radio" name="resultado_covid" value="Positivo">Positivo</label>
                <input type="radio" name="resultado_covid" value="Negativo">Negativo</label>
                <input type="radio" name="resultado_covid" value="Aguardando Resultado">Aguardando Resultado</label>
            </td>
        </tr>
        <tr align="center">
            <td><button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i> Cadastrar no Relatorio de Sintomas</button>
            <a class="btn btn-primary" href="index.php"><i class="fa fa-plus"></i> Voltar</a></td>
        </tr>
    </table>  
</form>    
<?php
    include "footer.php";
?>    
    
  
