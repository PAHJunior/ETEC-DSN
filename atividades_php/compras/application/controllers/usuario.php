<?php
    defined('BASEPATH') OR exit('No direct script access allwed');


    Class Usuario extends CI_Controller
    {
        public function index()
        {
            $this->load->view('includes/header');
            $this->load->view('includes/menu');
            $this->load->view('v_usuario');
            $this->load->view('includes/footer');
        }    

        public function listar()
        {
            $this->load->model('m_usuario');

            $retorno = $this->m_usuario->consultar();

            echo json_encode($retorno->result());
        }


        public function cadastrar()
        {
            $usuario = $this->input->post('usuario');
            $senha = $this->input->post('senha');

            $this->load->model('m_usuario');


            $retorno = $this->m_usuario->cadastrar($usuario, $senha);

            echo $retorno;
        }
    }

?>