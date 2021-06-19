<?php
include 'api.php';
include 'header.php';
?>         
<html>
<form  action ="" method="post">
  <table  width="100%" align="center"  cellspacing="10" cellpadding="4">
        <tr align="center">
            <td><button type="button" class="btn btn-lg btn-primary" disabled>Situação por Estado</button></td>
        </tr>

        <tr align="center">
            <td>
            <p>
                <select name="estado">
                    <option value=""></option>
                    <option value="AC">Acre</option>
                    <option value="AL">Alagoas</option>
                    <option value="AP">Amapá</option>
                    <option value="AM">Amazonas</option>
                    <option value="BA">Bahia</option>
                    <option value="CE">Ceará</option>
                    <option value="ES">Espírito Santo</option>
                    <option value="GO">Goiás</option>
                    <option value="MA">Maranhão</option>
                    <option value="MT">Mato Grosso</option>
                    <option value="MS">Mato Grosso do Sul</option>
                    <option value="MG">Minas Gerais</option>
                    <option value="PA">Pará</option>
                    <option value="PB">Paraíba</option>
                    <option value="PR">Paraná</option>
                    <option value="PE">Pernambuco</option>
                    <option value="PI">Piauí</option>
                    <option value="RJ">Rio de Janeiro</option>
                    <option value="RN">Rio Grande do Norte</option>
                    <option value="RS">Rio Grande do Sul</option>
                    <option value="RO">Rondônia</option>
                    <option value="RR">Roraima</option>
                    <option value="SC">Santa Catarina</option>
                    <option value="SP">São Paulo</option>
                    <option value="SE">Sergipe</option>
                    <option value="TO">Tocantins</option>
                    <option value="DF">Distrito Federal</option>
                </select>
                <button class="btn btn-primary" type="submit">Pesquisar</button>
            </p>
            </td>

        </tr>

        <tr align="center">


            <td><b><?php echo $uf->state ?? ''?></b></td>

        </tr> 
        <tr align="center">
          <td>Casos </td>
        </tr>      
        <tr align="center">
            <td><input type="text" placeholder="Casos" name="Casos" value="<?php echo $uf->cases ?? ''?>" ></td>
        </tr>
        <tr align="center">
          <td>Mortes </td>
        </tr>      
        <tr align="center">
            <td><input type="text" placeholder="Mortes" name="Mortes" value="<?php echo $uf->deaths ?? ''?>"></td>
        </tr>
        <tr align="center">
          <td>Suspeitos </td>
        </tr>      
        <tr align="center">
            <td><input type="text" placeholder="Suspeitos" name="Suspeitos" value="<?php echo $uf->suspects ?? ''?>"></td>
        </tr>
  </table> 
</form>          
</html>
<?php include 'footer.php' ?>


