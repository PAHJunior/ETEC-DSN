drop database cinema;
create database cinema;
use cinema;

CREATE TABLE tbl_Ator (
  Id_ator INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  Nome_ator VARCHAR(45) NOT NULL,
  Sexo VARCHAR(1) NOT NULL,
  Dt_nascimento DATE NOT NULL
);

CREATE TABLE tbl_Genero (
  Id_genero INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Genero VARCHAR(45) NOT NULL
);

CREATE TABLE tbl_Diretor (
  Id_diretor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Nome_diretor VARCHAR(45) NOT NULL,
  Nacionalidade VARCHAR(10) NOT NULL,
  Dt_nascimento DATE NOT NULL
);


CREATE TABLE tbl_Filme (
    Id_filme INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome_filme_PT VARCHAR(45) NOT NULL,
    Nome_filme_EN VARCHAR(45) NULL,
    Ano_lancamento INT(4) NOT NULL,
    Duracao INT(3) NOT NULL,
    FK_Id_genero INT,
    FK_Id_diretor INT,
    FOREIGN KEY (FK_Id_genero) REFERENCES tbl_genero (Id_genero), 
    FOREIGN KEY (FK_Id_diretor) REFERENCES tbl_diretor (Id_diretor)
);

CREATE TABLE tbl_Filme_has_tbl_Ator (
    FK_Id_filme INT NOT NULL,
    FK_Id_ator INT NOT NULL,
    PRIMARY KEY (FK_Id_filme , FK_Id_ator), 
    FOREIGN KEY (FK_Id_filme) REFERENCES tbl_Filme (Id_filme), 
    FOREIGN KEY (FK_Id_ator) REFERENCES tbl_Ator (Id_ator)
);

#CRIANDO A TABELA SALA
create table tbl_Sala(
	Id_sala int PRIMARY KEY auto_increment,
    nome VARCHAR(45) not null,
    capacidade INT(3) unsigned not null
);


#CRIANDO A TABELA HORARIO
CREATE TABLE tbl_horario(
	Id_horario int primary key auto_increment,
    Hora time not null
);

#CRIANDO A TABELA DE EXIBIÇÃO, ELA VAI RECEBER 3 FK , O FILME, O HORARIO DE EXIBIÇÃO E O NUMERO DA SALA.
CREATE TABLE tbl_Exibicao(
	id_Exibicao Int auto_increment primary key,
    FK_id_filme int,
    FK_id_horario int,
    FK_id_sala int,
    foreign key (FK_id_filme) references tbl_Filmes (id_filme),
    foreign key (FK_id_horario) references tbl_horario (Id_horario),
    foreign key (FK_id_sala) references tbl_Sala (Id_sala)
);