<?php
include 'header.php';
?>
<html>
<body>
  <main role="main">
    <div class="jumbotron">
       <div class="container">
          <h1 class="display-3"><b>Monitoramento Coronavirus</b></h1>
       </div>
    </div>

    <div class="container">
      <div class="row">
        <div class="col-md-4">
         <h2><br><br><br><img src="lib/imagens/logo.jpeg" alt="LogoCovid "></h2><br><br><br>
         <p>O trabalho foi desenvolvido por acadêmicos da UNOESC – São Miguel do Oeste. Os mesmos vem elaborando este trabalho durante dois períodos do curso, colocando em prática os conhecimentos adquiridos em aula. <br>
Por Eduardo B. Guaresi e Jefferson D. C. Barbosa.</p>
        </div>
      <div class="col-md-4">
        <h3><br><br><br><img src="https://www.unoesc.edu.br/images/front_end/logo_unoesc.jpg" alt="Logo unoesc"></h2><br><br><br><br>
        <p>A Unoesc São Miguel do Oeste está localizada no Bairro Agostini. O campus conta com 69 salas de aula, auditório, biblioteca, com um rico acervo bibliográfico, Centro Cultural, Centro Esportivo, Hospital Veterinário de Pequenos Animais, Centro Tecnológico, dentre outros.</p>
      </div>
      <div class="col-md-4">
        <h3><br><br><br><img src="lib/imagens/sintomascovid.jpeg" alt="Sintomascovid "></h3><br><br>
        <p>Os casos de coronavirus vem sofrendo aumento considerável em nosso país. 
Na imagem acima podemos quais os sintomas que pessoas com o vírus mais manifestam.<br>
Clique no botão a baixo para acompanhar os casos dentro do seu Estado ou também a nível nacional.</p>
        <p><a class="btn btn-secondary" href="resultadoapi.php" role="button">Casos de Covid-19 &raquo;</a></p>
      </div>
    </div>

  <hr>


</main>

<?php 
  include 'footer.php'
?>  
</body>  

</html>
