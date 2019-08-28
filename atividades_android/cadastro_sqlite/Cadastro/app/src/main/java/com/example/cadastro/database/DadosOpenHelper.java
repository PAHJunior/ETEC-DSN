package com.example.cadastro.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DadosOpenHelper extends SQLiteOpenHelper {

    public DadosOpenHelper(Context context){

        super(context, "dados", null, 1);
    }

    public void onCreate(SQLiteDatabase db){
        db.execSQL(ScriptDDL.getCreateTableClientePessoal());
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion){

    }

}
