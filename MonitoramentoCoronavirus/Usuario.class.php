<?php
    class Usuario{

        public function login($usuario, $senha){
            global $PDO;
            
            $sql = " SELECT codpac, usupac, nivel  FROM paciente WHERE usupac = :usuario AND senpac = :senha";
            $sql = $PDO->prepare($sql);
            $sql->bindValue("usuario", $usuario);
            $sql->bindValue("senha", $senha);
            $sql->execute();

            if($sql->rowCount() > 0){
                $dado = $sql->fetch();
                $_SESSION['nomUser'] = $dado['usupac'];
                $_SESSION ['codUser'] = $dado['codpac'];
                $_SESSION['nivelUser'] = $dado['nivel'];
                return true; 
            }else{
                return false;
            }


        }
    }

?>