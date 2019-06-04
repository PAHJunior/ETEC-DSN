package com.example.got;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        carregarTela();
    }

    public void carregarTela() {
        setContentView(R.layout.activity_main);
    }
    public void temporada1(View view) {

        setContentView(R.layout.temporada1);
        carregarTelaInicial();
    }

    public void temporada2(View view) {
        //TEMPORADA 2
        setContentView(R.layout.temporada2);
        carregarTelaInicial();
    }

    public void temporada3(View view) {
        setContentView(R.layout.temporada3);
        carregarTelaInicial();
    }

    public void temporada4(View view) {
        setContentView(R.layout.temporada4);
        carregarTelaInicial();
    }

    public void temporada5(View view) {
        setContentView(R.layout.temporada5);
        carregarTelaInicial();
    }

    public void temporada6(View view) {
        setContentView(R.layout.temporada6);
        carregarTelaInicial();
    }
    public void temporada7(View view) {
        setContentView(R.layout.temporada7);
        carregarTelaInicial();
    }

    public void carregarTelaInicial(){
        Button btnVoltar = (Button) findViewById(R.id.btnVoltar);
        btnVoltar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                carregarTela();
            }
        });
    }
}
