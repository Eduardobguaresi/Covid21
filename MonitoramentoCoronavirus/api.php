<?php
    
if(isset($_POST['estado'])){ 
   $estado=$_POST['estado'];
    
   $url ="https://covid19-brazil-api.now.sh/api/report/v1/brazil/uf/{$estado}";

   $uf = json_decode(file_get_contents($url));

}

    $url2="https://covid19-brazil-api.vercel.app/api/report/v1/brazil";
    $pais = json_decode(file_get_contents($url2));

    
?>
