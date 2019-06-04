drop database bd_escola;
create database bd_escola;
use bd_escola;

create table IF NOT EXISTS aluno(
	idaluno int not null auto_increment,
    nome varchar(100) not null,
    dtnasc date not null,
    endereco varchar(100) not null,
    cidade varchar(100) not null,
    estado varchar(2) not null,
    email varchar(100) not null,
    primary key (idaluno)
);

insert into aluno(nome, dtnasc, endereco, cidade, estado, email) values 
	("Paulo Arthur Haller Junior", '1999-04-20', "Rua quintiliano José nº125", "Taboão da Serra", "SP", "pahjunior@outlook.com"),
    ("Polyana Feitosa", '2000-05-20', "Rua não sei o nome nº55", "Embu", "SP", "polyana.feitosa@gmail.com"),
    ("Rebeca Yonara", '2000-09-13', "Aldeinha", "Juquitiba", "SP", "becayonara@hotmail.com"),
    ("Julia paixão", '1998-04-10', "Rua Tambem Nao sei o nome", "Embu", "SP", "juliapaixao@hotmail.com"),
    ("Jessica Gonçalvez", '1995-04-16', "Rua Perto da etec", "Embu","SP", "jessiquinha@hotmail.com");


use bd_escola;
SELECT * from aluno where nome like '%Paulo%';