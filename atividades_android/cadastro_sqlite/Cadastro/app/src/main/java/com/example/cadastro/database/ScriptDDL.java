package com.example.cadastro.database;

public class ScriptDDL {

    public static String getCreateTableClientePessoal(){

        StringBuilder sql = new StringBuilder();

        sql.append("CREATE TABLE IF NOT EXISTS cliente (");
        sql.append("    id_cliente integer primary key autoincrement not null");
        sql.append("    nome_cliente varchar(255) not null default(' ')");
        sql.append("    cpf_cliente varchar(11) not null default(' ')");
        sql.append("    email_cliente varchar(255) not null default(' ')");
        sql.append("    telefone_cliente varchar(255) not null default(' ')");
        return sql.toString();
    }

}
