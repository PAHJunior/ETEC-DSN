<?php

    defined('BASEPATH') OR exit('No direct script access allwed');

    class M_acesso extends CI_Model
    {
        public function validalogin($usuario, $senha){
            $retorno = $this->db->query("select * from usuarios
                                        where usuario = '$usuario'
                                        and senha = '$senha'
                                        and estatus = ''");

            if($retorno->num_rows() > 0){
                return 1;
            }else{
                return 0;
            }
        }
    }

?>