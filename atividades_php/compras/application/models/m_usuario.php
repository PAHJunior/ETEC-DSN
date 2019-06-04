<?php

    defined('BASEPATH') OR exit('No direct script access allwed');

    class m_usuario extends CI_Model
    {
        public function cadastrar($usuario, $senha){
            $this->db->query("insert into usuarios (usuario, senha) values ('$usuario', '$senha');");

            if($this->db->affected_rows() > 0){
                return 1;
            }else{
                return 0;
            }
        }

        public function consultar()
        {
            $retorno = $this->db->query("select usuario, senha from usuarios;");

            if($retorno->num_rows() > 0){
                return $retorno;
            }
        }
    }

?>