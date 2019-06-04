create database Prova_PauloArthur;
use Prova_PauloArthur;


/*AUTOR*/
create table tbl_Autor(
	cod_autor int primary key auto_increment not null,
    nome_Autor VARCHAR(45) not null,
    nascmento DATE not null
);

/*AUTOR HAS LIVRO*/
create table autor_has_livro(
	autor_cod_autor int,
    livro_cod_Livro int,
	foreign key (autor_cod_autor) references tbl_Autor(cod_autor),
    foreign key (livro_cod_Livro) references  tbl_Livro(cod_livro)
);



/*LIVRO*/
create table tbl_Livro(
	cod_livro int primary key auto_increment not null,
	nome_livro varchar(45) not null,
    categoria varchar(45) not null
);


/*TABELA EMPRESTIMO*/
create table tbl_emprestimo(
	cod_emprestimo int primary key auto_increment not null,
    data_emprestimo date not null,
    dara_devolucao date not null,    
    Usuario_cod_usuario int,
    Livro_cod_Livro int,
    foreign key (Usuario_cod_usuario) references  tbl_usuario(cod_usuario),
    foreign key (Livro_cod_Livro) references  tbl_Livro(cod_livro)
);


/*TABELA USUARIO*/
create table tbl_usuario(
	cod_usuario int primary key auto_increment not null,
    nome_usuario varchar(45) not null,
    cpf int(11) not null unique
);


select * from autor_has_livro;