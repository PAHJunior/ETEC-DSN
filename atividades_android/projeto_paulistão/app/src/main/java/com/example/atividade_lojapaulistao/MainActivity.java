package com.example.atividade_lojapaulistao;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }


    public void carregarCarrinho_SPFC(View v) {
        setValues("São Paulo", 100.00, 90.00, 80.00);
    }

    public void carregarCarrinho_Santos(View v) {
        setValues("Santos", 150.00, 50.00, 190.00);
    }

    public void carregarCarrinho_Corinthias(View v) {
        setValues("Corinthias", 100.00, 50.00, 75.00);
    }

    public void carregarCarrinho_RedBull(View v) {
        setValues("Red Bull", 110.00, 70.00, 85.00);
    }

    public void carregarCarrinho_Bragantino(View v) {
        setValues("Bragantino", 90.00, 75.00, 90.00);
    }

    public void carregarCarrinho_Palmeiras(View v) {
        setValues("Palmeiras", 110.00, 75.00, 95.00);
    }


    public void setValues(String nomeTime, Double camisa, Double meia, Double calcao){
        Intent carregarCarrinho = new Intent(this, Loja.class);
        carregarCarrinho.putExtra("nomeTime", nomeTime);
        carregarCarrinho.putExtra("precoCamisa", camisa);
        carregarCarrinho.putExtra("precoMeia", meia);
        carregarCarrinho.putExtra("precoCalcao", calcao);
        startActivity(carregarCarrinho);
        super.onDestroy();
    }

}
