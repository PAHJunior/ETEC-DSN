<?php

defined('BASEPATH') OR exit('No direct script access allwed');

class Login extends CI_Controller
{
    public function index(){
        $this->load->view('includes/header');
        $this->load->view('v_login');
        $this->load->view('includes/footer');
    }

    public function logar_ajax()
    {
        $usuario = $this->input->post('txtUsuario');
        $senha = $this->input->post('txtSenha');

        $this->load->model('m_acesso');

        $retorno = $this->m_acesso->validalogin($usuario, $senha);

        if($retorno == 1){
            $_SESSION['usuario'] = $usuario;
        }else{
            unset($_SESSION['usuario']);
        }

        echo $retorno;

    }
}
?>
