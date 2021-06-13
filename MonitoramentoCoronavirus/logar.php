<?php
session_start();
include 'header.php'
?>
<html>
 <style>
        

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
button:hover {
  opacity: 0.8;
}
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}
img.avatar {
  width: 12%;
  border-radius: 50%;
}
.container {
  padding: 20px;
}

    </style>
<body> 
<form  action ="login.php" method="post">    
  <div class="imgcontainer">
    <img src="https://theogilbk.com/img/image.png" alt="Avatar" class="avatar">
  </div>
  <div class="container">
      <?php
      if(isset($_SESSION['nao_autenticado'])):
      ?>
      <div class="alert alert-danger" role="alert" align="center">
       <b>Usuário ou senha inválidos</b>
      </div>
      <?php endif; unset($_SESSION['nao_autenticado']); ?> 
      <label for="usuario"><b>Usuário</b></label>
      <input type="text" placeholder="Insira seu usuario" name="usuario" required>

      <label for="senha"><b>Senha</b></label>
      <input type="password" placeholder="Insira sua Senha" name="senha" required>
      <button type="submit">Login</button> 
  </div>
</form>  
<?php include 'footer.php' ?>
</body>
</html>