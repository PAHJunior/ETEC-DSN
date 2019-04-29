/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package formulariologin;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Casa
 */
public class Carrinho {
    private static List<Produto> produtos = new ArrayList<Produto>();
    
    
    public void addProdutos(Produto... ps){
        for (Produto p : ps)
            produtos.add(p);
    }
    
    public List<Produto> getProdutos(){
        return produtos;
    } 
}
