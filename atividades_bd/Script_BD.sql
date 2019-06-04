drop database teste;
create database teste;
use teste;

#CRIANDO A TABELA ATOR
create table tbl_Ator(
	id_ator int Primary key auto_increment,
    Nome_ator varchar(45) not null,
    Sexo varchar(1) not null,
    Dt_nascimento date not null
);

#CRIANDO A TABELA DIRETOR
create table tbl_Diretor(
	id_diretor int Primary key auto_increment,
    Nome_diretor varchar(45) not null,
	Nacionalidade varchar(10) not null,
    Dt_nascimento date not null
);

#CRIANDO TBL_GENERO
create table tbl_genero(
	id_genero int auto_increment primary key,
    genero varchar(45)
);


#CRIANDO A TABELA FILMES
create table tbl_Filmes(
	id_filme int auto_increment primary key,
    nome_filme_PT varchar(45) not null,
    nome_filme_EN varchar(45) not null,
    Ano_lancamento int(4),
    duracao int(3),
    fk_id_genero int,
    fk_id_diretor int,
    foreign key (fk_id_diretor) references tbl_Diretor (id_diretor),
    foreign key (fk_id_genero) references tbl_genero (id_genero)
);


#CRIANDO A TABELA FILME HAS ATOR, CONTEM FK DA TABELA FILMES E ATOR
create table tbl_Filme_has_tbl_Ator(
	fk_id_filmes int,
    fk_id_ator int,
    PRIMARY KEY (fk_id_filmes, fk_id_ator),
    foreign key (fk_id_filmes) references tbl_Filmes (id_filme),
    foreign key (fk_id_ator) references tbl_Ator (id_ator)
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


# ADICIONANDO A COLUNA "SEXO" a tabela Diretor
ALTER TABLE tbl_Diretor add sexo varchar(1) not null;

# ALTERANDO A COLUNA NACIONALIDADE DA TABELA DIRETOR
ALTER TABLE tbl_Diretor modify Nacionalidade varchar(45) not null;

# EXCLUINDO A COLUNA NOME_FILME_EN
ALTER TABLE tbl_Filmes drop nome_filme_EN;

ALTER TABLE tbl_Filmes CHANGE nome_filme_PT nome_filme varchar(45) not null;

ALTER TABLE tbl_Filme_has_tbl_Ator rename filme_AND_ator;



##################################################################################################################################

############################################################# INSERT #############################################################

##################################################################################################################################

insert into tbl_Ator (Nome_ator, Sexo, Dt_nascimento) values
	("Andrew Garfield", "M", '1983/08/25'),
	("Sandra Bullock", "F", '1964/06/26'),
	("Will Smith", "M", '1968/09/25'),
	("Harrison Ford", "M", '1942/07/13'),
	("Hugh Jackman", "M", '1968/10/12'),
	("Angelina Jolie", "F", '1975/06/04'),
	("Keanu Reeves", "M", '1964/09/02'),
	("Jennifer Lawrence", "F", '1990/08/15'),
	("Sylvester Stallone", "M", '1946/07/06'),
	("James Mcavoy", "M", '1979/04/21'),
	("Brad Pitt", "M", '1963/12/18'),
	("Leonardo Dicaprio", "M", '1974/11/11'),
	("Vin Diesel", "M", '1967/07/18'),
	("Johnny Depp", "M", '1963/06/09'),
	("Robin Williams", "M", '1951/07/21'),
	("Robert Downey Jr.", "M", '1965/04/04'),
	("Patrick Stewart", "M", '1940/07/13'),
	("Sandra Bullock", "F", '1964/07/26'),
	("Jackie Chan", "M", '1954/04/07'),
	("Jennifer Aniston", "F", '1969/02/11'),
	("Jim Carrey", "M", '1983/08/25'),
	("Scarlett Johansson", "F", '1984/11/22'),
	("Megan Fox", "F", '1986/05/16'),
	("Ben Stiller", "M", '1965/11/30'),
	("Emma Stone", "F", '1988/11/06');
    
insert into tbl_Filmes (nome_filme, Ano_lancamento, duracao) values
	("Viva: A Vida é Uma Festa", 2017, 105),
    ("Logan", 2017, 137),
    ("Um Sonho de Liberdade", 1995, 142),
    ("Matrix", 1999, 150),
    ("Jumanji", 1996, 104),
	("Cidade de deus", 2002, 135),
    ("O Resgate do Soldado Ryan", 1998, 170),
    ("Extraordinário", 2017, 113),
    ("O Poderoso Chefão", 1972, 178),
    ("Forrest Gump", 2017, 105),
    ("Truque de Mestre", 2013, 125),
    ("Fragmentado", 2017, 117),
    ("Avaatr", 2009, 105),
    ("O Preço do Amanhã", 2011, 109),
    ("O Senhor dos Anéis: O Retorno do Rei", 2003, 200),
    ("Toy Story", 1995, 141),
    ("Star Wars: Os Últimos Jedi", 2017, 152),
    ("O Menino do Pijama Listrado", 2008, 94),
    ("O Lobo de Wall Street", 2013, 181),
    ("A Hora do Rush", 1998, 98),
    ("Piratas do Caribe - Maldição do Perola Negra", 20033, 143),
    ("Passengeiros", 2016, 116),
    ("Beleza Oculta", 2016, 97),
    ("It - A Coisa", 2017, 134),
    ("Rocky V", 1990, 111),
    ("Titanic", 1997, 105),
    ("Vingadores 4", 2019, 150),
    ("Velozes e Furiosos 8", 2017, 136),
    ("Transformers", 2007, 150),
    ("Ilha do Medo", 2010, 139);

insert into tbl_Diretor (Nome_diretor, Nacionalidade, Dt_nascimento, sexo) values
	("Steven Spielberg", "Estados Unidos", '1946/12/18', "M"),
    ("James Cameron", "Canada", '1957/08/16', "M"),
    ("José Padilha", "Brasil", '1967/08/01', "M"),
    ("George Lucas", "Estados Unidos", '1944/05/14', "M"),
    ("Alan Rickman", "Inglaterra", '1946/02/21', "M"),
    ("Fernando Meirelles", "Brasil", '1965/11/09', "M");
    
insert into tbl_Genero (genero) value
    ("Terror"),
	("Ação"),
	("Comedia"),
	("Drama"),
	("Suspense"),
	("Ficção"),
	("Romance"),
	("Animação");

/*
INSERT INTO filme_and_ator VALUES(1,1);
INSERT INTO filme_and_ator VALUES(1,2);
INSERT INTO filme_and_ator VALUES(2,1);
INSERT INTO filme_and_ator VALUES(2,2);
INSERT INTO filme_and_ator VALUES(1,1);
INSERT INTO filme_and_ator VALUES(2,1);
INSERT INTO filme_and_ator VALUES(3,1);
INSERT INTO filme_and_ator VALUES(4,1);
INSERT INTO filme_and_ator VALUES(5,1);
INSERT INTO filme_and_ator VALUES(6,1);
INSERT INTO filme_and_ator VALUES(7,1);
INSERT INTO filme_and_ator VALUES(8,1);
INSERT INTO filme_and_ator VALUES(9,1);
INSERT INTO filme_and_ator VALUES(10,1);
INSERT INTO filme_and_ator VALUES(11,1);
INSERT INTO filme_and_ator VALUES(12,1);
INSERT INTO filme_and_ator VALUES(13,1);
INSERT INTO filme_and_ator VALUES(14,1);
INSERT INTO filme_and_ator VALUES(15,1);
INSERT INTO filme_and_ator VALUES(1,2);
INSERT INTO filme_and_ator VALUES(1,3);
INSERT INTO filme_and_ator VALUES(1,4);
INSERT INTO filme_and_ator VALUES(1,5);
INSERT INTO filme_and_ator VALUES(1,6);
INSERT INTO filme_and_ator VALUES(1,7);
INSERT INTO filme_and_ator VALUES(1,8);
INSERT INTO filme_and_ator VALUES(1,9);
INSERT INTO filme_and_ator VALUES(1,10);
INSERT INTO filme_and_ator VALUES(1,11);
INSERT INTO filme_and_ator VALUES(1,12);
INSERT INTO filme_and_ator VALUES(1,13);
INSERT INTO filme_and_ator VALUES(1,14);
INSERT INTO filme_and_ator VALUES(1,15);
INSERT INTO filme_and_ator VALUES(1,16);
*/

INSERT INTO filme_and_ator values
    (2,1),
    (3,1),
    (4,1),
    (5,1),
    (6,1),
    (7,1),
    (8,1),
    (9,1),
    (10,1),
    (11,1),
    (12,1),
    (13,1),
    (14,1),
    (15,1),
    (1,1),
    (1,2),
    (1,3),
    (1,4),
    (1,5),
    (1,6),
    (1,7),
    (1,8),
    (1,9),
    (1,10),
    (1,11),
    (1,12),
    (1,13),
    (1,14),
    (1,15);

select * from filme_and_ator;

SHOW TABLES;
desc tbl_filmes;

SELECT * FROM  tbl_ator;
SELECT * FROM  tbl_diretor;
SELECT * FROM  tbl_filmes;
SELECT * FROM  tbl_genero;

SELECT nome_filme, duracao FROM tbl_filmes;
SELECT nome_filme, duracao FROM tbl_filmes WHERE Ano_lancamento > 2016;
SELECT nome_filme, duracao FROM tbl_filmes WHERE Ano_lancamento > 2010 AND Ano_lancamento < 2020;
SELECT nome_filme, duracao FROM tbl_filmes WHERE duracao between 100 and 200;
SELECT nome_filme, duracao FROM tbl_filmes WHERE nome_filme = 'Logan';
SELECT nome_filme, duracao FROM tbl_filmes WHERE nome_filme LIKE 'Lo%';
SELECT nome_filme, duracao FROM tbl_filmes WHERE nome_filme LIKE '%an';
SELECT nome_filme, duracao FROM tbl_filmes WHERE nome_filme LIKE '% do %';

#UPDATE SEM WHERE
UPDATE tbl_ator SET dt_nascimento = '2018-12-25';
DELETE FROM tbl_ator;


insert into tbl_Ator (Nome_ator, Sexo, Dt_nascimento) values
	("Andrew Garfield", "M", '1983/08/25'),
	("Sandra Bullock", "F", '1964/06/26'),
	("Will Smith", "M", '1968/09/25'),
	("Harrison Ford", "M", '1942/07/13'),
	("Hugh Jackman", "M", '1968/10/12'),
	("Angelina Jolie", "F", '1975/06/04'),
	("Keanu Reeves", "M", '1964/09/02'),
	("Jennifer Lawrence", "F", '1990/08/15'),
	("Sylvester Stallone", "M", '1946/07/06'),
	("James Mcavoy", "M", '1979/04/21'),
	("Brad Pitt", "M", '1963/12/18'),
	("Leonardo Dicaprio", "M", '1974/11/11'),
	("Vin Diesel", "M", '1967/07/18'),
	("Johnny Depp", "M", '1963/06/09'),
	("Robin Williams", "M", '1951/07/21'),
	("Robert Downey Jr.", "M", '1965/04/04'),
	("Patrick Stewart", "M", '1940/07/13'),
	("Sandra Bullock", "F", '1964/07/26'),
	("Jackie Chan", "M", '1954/04/07'),
	("Jennifer Aniston", "F", '1969/02/11'),
	("Jim Carrey", "M", '1983/08/25'),
	("Scarlett Johansson", "F", '1984/11/22'),
	("Megan Fox", "F", '1986/05/16'),
	("Ben Stiller", "M", '1965/11/30'),
	("Emma Stone", "F", '1988/11/06');

rollback; #Voltando uma cagada
commit; #Realizando um commit

SELECT * FROM  tbl_ator;

DELETE FROM tbl_ator WHERE Id_ator = 1;

SHOW TABLES;
ALTER TABLE tbl_ator ADD tbl_status_ator ENUM('ATIVO','INATIVO') default 'Ativo';
ALTER TABLE tbl_diretor ADD tbl_status_diretor ENUM('ATIVO','INATIVO') default 'Ativo';
ALTER TABLE tbl_exibicao ADD tbl_status_exibicao ENUM('ATIVO','INATIVO') default 'Ativo';
ALTER TABLE tbl_filmes ADD tbl_status_filmes ENUM('ATIVO','INATIVO') default 'Ativo';
ALTER TABLE tbl_genero ADD tbl_status_genero ENUM('ATIVO','INATIVO') default 'Ativo';
ALTER TABLE tbl_horario ADD tbl_status_horario ENUM('ATIVO','INATIVO') default 'Ativo';
ALTER TABLE tbl_sala ADD tbl_status_sala ENUM('ATIVO','INATIVO') default 'Ativo';
UPDATE tbl_Filmes SET Cartaz = true WHERE Ano_lancamento > 2015;
UPDATE tbl_Filmes SET Cartaz = false WHERE Ano_lancamento <= 2015;

UPDATE tbl_ator SET Status_ator2 = 'Ativo' WHERE Status_ator2 is null;

ALTER TABLE tbl_Filmes add Cartaz BOOLEAN;

SELECT * FROM  tbl_Filmes;



# =================== SELECT ================

