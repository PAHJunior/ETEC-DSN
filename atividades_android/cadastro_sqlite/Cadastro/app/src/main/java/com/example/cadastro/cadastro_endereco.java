package com.example.cadastro;

import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.Menu;
import android.widget.EditText;

public class cadastro_endereco extends AppCompatActivity {
    private EditText edtCep;
    private EditText edtLogradouro;
    private EditText edtBairro;
    private EditText edtCidade;
    private EditText edtEstado;

    private void validarCampoCadastro(){
        boolean res = false;

        String cep = edtCep.getText().toString();
        String logradouro = edtLogradouro.getText().toString();
        String bairro = edtBairro.getText().toString();
        String cidade = edtCidade.getText().toString();
        String estado = edtEstado.getText().toString();

        if(res = verificaCampoVazio(cep)){
            edtCep.requestFocus();
        }
        else if(res = verificaCampoVazio(logradouro)){
            edtLogradouro.requestFocus();
        }
        else if (res = verificaCampoVazio(bairro)){
            edtBairro.requestFocus();
        }
        else if (res = verificaCampoVazio(cidade)){
            edtCidade.requestFocus();
        }
        else if (res = verificaCampoVazio(estado)){
            edtEstado.requestFocus();
        }

        if(res){
            AlertDialog.Builder dialogo = new AlertDialog.Builder(this);
            dialogo.setTitle(R.string.title_aviso);
            dialogo.setMessage(R.string.msg_aviso);
            dialogo.setNeutralButton("Ok", null);
            dialogo.show();
        }
    }

    private boolean verificaCampoVazio(String valor){
        boolean verifica = (TextUtils.isEmpty(valor) || valor.trim().isEmpty());
        return verifica;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cadastro_endereco);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        edtCep = (EditText) findViewById(R.id.edit_cep);
        edtLogradouro = (EditText) findViewById(R.id.edit_logradouro);
        edtBairro = (EditText) findViewById(R.id.edit_bairro);
        edtCidade = (EditText) findViewById(R.id.edit_cidade);
        edtEstado = (EditText) findViewById(R.id.edit_estado);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_confirmar, menu);
        return true;
    }
}
