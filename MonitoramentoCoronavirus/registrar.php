<?php
include 'header.php';
?>
<html>
<form action= "addregistro.php" method="post" >
    <table  width="70%" align="center" cellspacing="10" cellpadding="16">
        <tr align="center">
            <td><label for="name">Nome</label></td>
            <td><label for="datanascimento">Data de Nascimento</label></td>
        </tr>

        <tr align="center">
            <td><input type="text" class="form-control" name="nome" placeholder="Nome" required></td>        
            <td><input type="date" class="form-control" name="dataN" max ='2021-06-26' required ></td>
        </tr>
        <tr align="center">
            <td><label for="usuario">Nome de Usuário</label></td>
            <td><label for="senha">Insira sua Senha</label></td>
        </tr>

        <tr align="center">
            <td><input type="text" class="form-control" name="usuario" placeholder="Nome de Usuário" required></td>
            <td><input type="password" class="form-control" placeholder="Insira sua Senha" name="senha" required></td>
        </tr>
        <tr align="center">
            <td><label for="altpaciente">Altura do Paciente</label></td>
            <td><label for="peso">Peso</label></td>
        </tr>

        <tr align="center">
            <td><input type="numeric" class="form-control" name="altpaciente" placeholder="Altura do Paciente"  required></td>
            <td><input type="numeric" class="form-control" name="peso" placeholder="Peso" required></td>
        </tr>
        <tr align="center">
            <td><label for="sexo">Sexo</label></td>
            <td><label for="cpf">CPF</label></td>
        </tr>

        <tr align="center">
            <td><input type="radio" name="sexo" value="Masculino">Masculino</label>
                <input type="radio" name="sexo" value="Feminino">Feminino</label> 
            </td>
            <td><input type="number" class="form-control" name="cpf" placeholder="CPF" required></td>
        </tr>
        <tr align="center">
            <td><label for="cep">CEP</label></td>
            <td><label for="estado">Estado</label></td>
        </tr>

        <tr align="center">
            <td><input type="number" class="form-control" name="cep" placeholder="cep" required></td>
            <td><input type="text" class="form-control" name="estado" placeholder="Estado" required></td>
        </tr>
        <tr align="center">
            <td><label for="cidade">Cidade</label></td>
            <td><label for="rua">Rua</label></td>
        </tr>

        <tr align="center">
            <td><input type="text" class="form-control" name="cidade" placeholder="Cidade" required></td>
            <td><input type="text" class="form-control" name="rua" placeholder="Rua" required></td>
        </tr>
        <tr>
            <td><button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i> Cadastrar</button>
            <a class="btn btn-primary" href="index.php"><i class="fa fa-plus"></i> Voltar</a></td>
        </tr>
    </table>  
</form>    
<?php include 'footer.php' ?>         
</html>