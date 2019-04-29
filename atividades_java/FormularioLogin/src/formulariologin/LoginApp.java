/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package formulariologin;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import javax.swing.JOptionPane;

/**
 *
 * @author Casa
 */
public class LoginApp extends Application {  
    private AnchorPane pane;
    private TextField txLogin;
    private PasswordField txSenha;
    private Button btEntrar, btSair;
    private String Login;
    private static Stage stage;
    
    @Override
    public void start (Stage stage) throws Exception{
        initComponents();
        initListeners();
        Scene scene = new Scene(pane);
        stage.setScene(scene);
        //REMOVER A OPÇÃO DE MAXIMIZAR A TELA
        stage.setResizable(false);
        //Da um titulo para a tela
        stage.setTitle("Login - GolFX");
        stage.show();
        initLayout();
        LoginApp.stage = stage;        
    }
    
    public static Stage getStage(){
        return stage;
    }
    
    //COLOCANDO OS COMPONESTES NO PAINEL
    public void initComponents(){
        //CONFIGURANDO O PAINEL
        pane = new AnchorPane();
        pane.setPrefSize(400, 300);
        pane.setStyle("-fx-background-color: linear-gradient(from 0% 0% to 100% 100%, blue 0%, silver 100%);");
        
        //CONFIGURANDO A CAIXA DE TEXTO LOGIN
        txLogin = new TextField();
        txLogin.setPromptText("Digite seu login...");
        
        
        //CONFIGURANDO A CAIXA DE TEXTO SENHA
        txSenha = new PasswordField();
        txSenha.setPromptText("Digite sua senha...");
        
        
        //CRIANDO O BOTAO DE ENTRAR
        btEntrar = new Button("Entrar");
        btEntrar.setPrefSize(100,20);
        
        btEntrar.setStyle("-fx-text-fill: #D3D3D3; -fx-background-color: #483D8B; -fx-border-radius: 20; -fx-background-radius: 20; -fx-padding: 5;");
        
        //CRIANDO O BOTAO DE SAIR
        btSair = new Button("Sair");
        btSair.setPrefSize(100,20);
        btSair.setStyle("-fx-text-fill: #D3D3D3; -fx-background-color: #483D8B; -fx-border-radius: 20; -fx-background-radius: 20; -fx-padding: 5;");
        
        //COLOCANDO OS COMPONENTES NO PAINEL
        pane.getChildren().addAll(txLogin, txSenha, btEntrar, btSair);
    }
    
    
    //CONFIGURANDO OS COMPONENTES NO LAYOUT
    private void initLayout(){
        /*CODIGO DE LAYOUT DOS COMPONESTES */
        
        //CAIXA DE TEXTO ENTRAR
        txLogin.setLayoutX((pane.getWidth() - txLogin.getWidth()) / 2);
        txLogin.setLayoutY(50);
        
        //CAIXA DE TEXTO SENHA
        txSenha.setLayoutX((pane.getWidth() - txSenha.getWidth()) / 2);
        txSenha.setLayoutY(100);
        
        //BOTAO ENTRAR
        btEntrar.setLayoutX((pane.getWidth() - btEntrar.getWidth()) / 2);
        btEntrar.setLayoutY(150);
        
        
        //BOTAO SAIR
        btSair.setLayoutX((pane.getWidth() - btSair.getWidth()) / 2);
        btSair.setLayoutY(200);
    }
    
    
    /* CONFIGURANDO O BOTAO ENTRAR E SAIR*/
    private void initListeners() {
        btSair.setOnAction(new EventHandler<ActionEvent>(){
            @Override
            public void handle(ActionEvent event){
                fecharAplicacao();
            }
        });
        
        /*CONFIGURANDO O BOTAO ENTRAR */
    
    btEntrar.setOnAction(new EventHandler<ActionEvent>() {
        @Override
        public void handle(ActionEvent event){
             logar();
           }
        });
    }
    
    private void fecharAplicacao(){
        System.exit(0);
    }
        
    private void logar(){
        if (txLogin.getText().equals("admin") && txSenha.getText().equals("casadocodigo")){
            JOptionPane.showMessageDialog(null, "Bem Vindo", "Bem Vindo", JOptionPane.INFORMATION_MESSAGE);
            // TODO Abrir a tela vitrineApp 
        }else {
            JOptionPane.showMessageDialog(null, "Login e/ou senha inválidos", "Erro", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    
    
    
    public static void main(String[] args){
        launch(args);
    }
}
