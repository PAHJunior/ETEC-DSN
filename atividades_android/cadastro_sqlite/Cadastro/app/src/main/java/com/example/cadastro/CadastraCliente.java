package com.example.cadastro;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;

public class CadastraCliente extends AppCompatActivity {
    private EditText edtNome;
    private EditText edtCpf;
    private EditText edtEmail;
    private EditText edtTelefone;

    private void validarCampoCadastro(){
        boolean res = false;

        String nome = edtNome.getText().toString();
        String cpf = edtCpf.getText().toString();
        String email = edtEmail.getText().toString();
        String telefone = edtTelefone.getText().toString();

        if(res = verificaCampoVazio(nome)){
            edtNome.requestFocus();
        }
        else if(res = verificaCampoVazio(cpf)){
            edtCpf.requestFocus();
        }
        else if (res = verificaCampoVazio(email)){
            edtEmail.requestFocus();
        }
        else if (res = verificaCampoVazio(telefone)){
            edtTelefone.requestFocus();
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
        setContentView(R.layout.activity_cadastra_cliente);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        edtNome = (EditText) findViewById(R.id.edit_nome);
        edtCpf = (EditText) findViewById(R.id.edit_cpf);
        edtEmail = (EditText) findViewById(R.id.edit_email);
        edtTelefone = (EditText) findViewById(R.id.edit_telefone);
    }

    public void tela_cadastrar_endereco(View v){
        Intent tela_cadastrar_endereco = new Intent(this, cadastro_endereco.class);
        startActivity(tela_cadastrar_endereco);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }


    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();

        switch (id) {
            case R.id.action_avancar:
                cad_endereco();
                return true;

            case R.id.action_cancelar:
                cancelar();
                return true;

            default:
                // If we got here, the user's action was not recognized.
                // Invoke the superclass to handle it.
                return super.onOptionsItemSelected(item);

        }
    }

    public void cancelar(){
        Intent cancelar = new Intent(this, MainActivity.class);
        startActivity(cancelar);
    }

    public void cad_endereco(){
        Intent cad_endereco = new Intent(this, cadastro_endereco.class);
        startActivity(cad_endereco);
    }
}
