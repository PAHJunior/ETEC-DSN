<?php

    defined('BASEPATH') OR exit('No direct script access allwed');

    class m_usuario extends CI_Model
    {
        public function cadastrar($usuario, $senha, $tipo){
            $user = $this->db->query("SELECT usuario from usuarios where usuario = '$usuario';");
            
            // Verifica se o usuario já existe
            if($user->num_rows() > 0){
                return 2;
            }

            $this->db->query("insert into usuarios (usuario, senha, tipo) values ('$usuario', '$senha', '$tipo');");

            if($this->db->affected_rows() > 0){
                return 1;
            }else{
                return 0;
            }
        }

        public function consultar()
        {
            $retorno = $this->db->query("SELECT usuario, senha, tipo, estatus from usuarios;");

            if($retorno->num_rows() > 0){
                return $retorno;
            }
        }

        public function consalterar($usuario)
        {
            $retorno = $this->db->query("SELECT usuario, senha, tipo from usuarios where usuario = '$usuario';");

            if($retorno->num_rows() > 0){
                return $retorno;
            }
        }


        public function alterar($senha, $usuario, $tipo)
        {
            // $query = $this->db->query("SELECT * FROM usuarios WHERE usuario = 'admin';");
            // $user = $query->result();

            // for ($i = 0; $i < count($user); $i++)
            // {
            //     // echo json_encode($user[$i]->senha);
            //     if($user[$i]->senha == $senha){
            //         return 2;
            //     }
            //     if($user[$i]->tipo == $tipo){
            //         return 2;
            //     }
            // }

            $retorno = $this->db->query("UPDATE usuarios SET senha = '$senha', tipo = '$tipo' where usuario = '$usuario';");
            


            if( $this->db->affected_rows() > 0){
                return 1;
            }else{
                return 0;
            }
        }

        public function desativar($usuario)
        {
            $retorno = $this->db->query("UPDATE usuarios SET estatus = 'D' WHERE usuario = '$usuario';");

            if ($this->db->affected_rows() > 0){
                return 1;
            }else{
                return 0;
            }
        }

        public function reativar($usuario)
        {
            $retorno = $this->db->query("UPDATE usuarios SET estatus = 'A' WHERE usuario = '$usuario';");

            if ($this->db->affected_rows() > 0){
                return 1;
            }else{
                return 0;
            }
        }
    }

?>