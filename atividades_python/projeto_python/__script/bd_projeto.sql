drop database AlunoEtec_tema01;
create database AlunoEtec_tema01;
use AlunoEtec_tema01;


create table tbl_aluno (
	id_aluno int primary key auto_increment not null,
    nome varchar(100) not null,
    dt_nascimento date not null,
    curso varchar(45) not null,
    rg varchar(15) not null unique,
    cpf varchar(15) not null unique,
    telefone varchar(15) not null,
    endereco varchar(100) not null,
    email varchar(100) not null unique,
    rm int(5) not null unique
    );

create table tbl_secretaria(
	id_secretaria int primary key auto_increment,
    nome varchar(45) not null,
	login varchar(45) not null unique,
    senha varchar(45) not null,
    telefone varchar(20) not null,
    email varchar(50) not null unique,
	rg varchar(15) not null unique,
    cpf varchar(15) not null unique,
    dt_nascimento date not null,
    endereco varchar(100) not null
);

INSERT INTO tbl_secretaria(nome, login, senha, telefone, email, rg, cpf, dt_nascimento, endereco) VALUES
	("Jony Oliveira", "Jonny", "jony123", "1147875249", "jony@etec.gov.sp.br", "123456789", "12345678910", '1990/05/21', "Rua Solano trindade, 234"),
    ("Jessica da Silva", "Jessica", "jessiquinha123", "1194028922", "jessiquinha@etec.gov.sp.br", "987654321", "09876543212", '1999/04/10', "Rua perto da Etec"),
    ("Livia Pereira", "Livia", "diretora123", "11707070", "livia@etec.gov.sp.br", "321656484", "31132809466", '1970/03/20', "Av Elias Yazbek");



insert into tbl_aluno (nome, dt_nascimento, curso, rg, cpf, telefone, endereco, email, rm) values
	("Paulo Arthur Haller Junior", '1999-04-20', "Desenvolvimento de sistema", "55.456.789-1","123.456.789-21","11967894213","Rua são joao, 908", "paulo@etec.gov.sp.br", "16515"),
    ("Polyana Feitosa", '2000-07-20', "Desenvolvimento de sistema", "55.389.912-0","490.209.828-85","11993196846","Rua são Lucas, 217", "polyana@etec.gov.sp.br", "14567"),
    ("Rebeca Yonara", '1999-11-09', "Desenvolvimento de sistema", "55.765.234-0","345.980.254-99","11923456789","Rua são miguel, 897", "rebeca@etec.gov.sp.br", "14378"),
    ("Lucas De Queiroz Silva", '1997-11-11', "Desenvolvimento de sistema", "53.193.140-7","458.733.778-12","11995403233","Rua riqueza, 44", "lucas@etec.gov.sp.br", "18705");

select * from tbl_aluno;
select * from tbl_secretaria;

select * from tbl_secretaria where login = "Jonny" and senha = "jony123";
select * from tbl_secretaria where login = 'Jonny' and  senha = 'jony123';