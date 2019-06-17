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
            $retorno = '';
            $usuario = $this->input->post('usuario');
            $senha = $this->input->post('senha');
            $confimarSenha = $this->input->post('confirmarSenha');
            $tipo = $this->input->post('tipo'); 

            $this->load->model('m_usuario');
            
            if($senha !== $confimarSenha){
                $retorno = 3;
            }else{
                $retorno = $this->m_usuario->cadastrar($usuario, $senha, $tipo);
            }


            echo $retorno;
        }

        public function consalterar()
        {
            $usuario = $this->input->post('usuario');
            $this->load->model('m_usuario');

            $retorno = $this->m_usuario->consalterar($usuario);

            echo json_encode($retorno->result());
        }

        public function alterar()
        {
            $retorno = '';
            $usuario = $this->input->post('usuario');
            $tipo = $this->input->post('tipo');
            $senha = $this->input->post('senha');
            $confimarSenha = $this->input->post('senha2');


            $this->load->model('m_usuario');

            // Se a senha for diferente , retorna 2 
            if($senha !== $confimarSenha){
                $retorno = 2;
            }else{
                $retorno = $this->m_usuario->alterar($senha, $usuario, $tipo);
            }
            echo $retorno;
        }

        public function desativar()
        {
            $usuario = $this->input->post('usuario');

            $this->load->model('m_usuario');

            $retorno = $this->m_usuario->desativar($usuario);

            echo $retorno;
        }

        public function reativar()
        {
            $usuario = $this->input->post('usuario');

            $this->load->model('m_usuario');

            $retorno = $this->m_usuario->reativar($usuario);

            echo $retorno;
        }
    }

?>