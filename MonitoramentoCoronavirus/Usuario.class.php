<?php
    class Usuario{

        public function login($usuario, $senha){
            global $PDO;
            
            $sql = " SELECT codpac, usupac FROM paciente WHERE usupac = :usuario AND senhapac = :senha";
            $sql = $PDO->prepare($sql);
            $sql->bindValue("usuario", $usuario);
            $sql->bindValue("senha", $senha);
            $sql->execute();

            if($sql->rowCount() > 0){
                $dado = $sql->fetch();

                $_SESSION ['codUser'] = $dado['codpac'];
                return true; 
            }else{
                return false;
            }


        }
    }

?>