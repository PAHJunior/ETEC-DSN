/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package formulariologin;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

/**
 *
 * @author Casa
 */
public class VitrineApp {
    private AnchorPane pane;
    private TextField txPesquisa;
    private TableView<ItensProperty> tbVitrine;
    private TableColumn<ItensProperty, String> columnProduto;
    private  TableColumn<ItensProperty, Double> columnPreco;
    private static ObservableList<ItensProperty> listItens = FXCollections.observableArrayList();
    private static Carrinho carrinho;
    
    public void initComponents(){
        //INSTANCIANDO OS COMPONENTES
        pane = new AnchorPane();
        pane.setPrefSize(800,600);
        
        txPesquisa = new TextField();
        txPesquisa.setPromptText("Digite o item para pesquisa");
        
        tbVitrine = new TableView<ItensProperty>();
        tbVitrine.setPrefSize(780, 550);
        
        columnProduto = new TableColumn<ItensProperty, String>();
        columnPreco = new TableColumn<ItensProperty, Double>();
        tbVitrine.getColumns().addAll(columnProduto, columnPreco);
        pane.getChildren().addAll(txPesquisa, tbVitrine);
        
        carrinho = new Carrinho();
        
        columnProduto.setCellValueFactory(
            new PropertyValueFactory<ItensProperty. String>("produto"));
        columnPreco.setCellValueFactory(
            new PropertyValueFactory<ItensProperty. Double>("preco"));
    } 
    
    private void initItens(){
        Vitrine v = new Vitrine();
        v.addProdutos(new Produto("Bola Topper", 15.00), new Produto("Luvas Umbro", 9.00), new Produto("Camisa Esportiva", 40.00). new Produto("Chuteira Nike Mercurial", 199.00), new Produto("Caneleira Topper", 10.00));
        for (Produto p : v getProdutos())
            listItens.add(new ItensProperty(p.getProduto(), p.getPreco()));
    }
    
    
    public static void main(String[] args){
        
    }
    
    /**
     *
     * @param stage
     * @throws Exception
     */
    public void start (Stage stage) throws Exception{
                
    }
    
    
}
