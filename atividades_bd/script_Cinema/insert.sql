use cinema;

#INSERT'S NA TABELA ATOR.
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Andrew Garfield", 'M','1983/08/20');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Sandra Bullock", 'F','1964/06/26');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Will Smith", 'M','1968/09/25');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Harrison Ford", 'M','1942/07/13');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Hugh Jackman", 'M','1968/10/12');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Angelina Jolie", 'F','1975/06/04');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Keanu Reeves", 'M','1964/09/02');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Jennifer Lawrence", 'F','1990/08/15');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Sylvester Stallone", 'M','1946/07/06');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("James Mcavoy", 'M','1979/04/21');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Brad Pitt", 'M','1963/12/18');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Leonardo Dicaprio", 'M','1974/11/11');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Vin Diesel", 'M','1967/07/18');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Johnny Depp", 'M','1963/06/09');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Robin Williams", 'M','1951/07/21');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Robert Downey Jr.", 'M','1965/04/04');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Patrick Stewart", 'M','1940/07/13');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Jackie Chan", 'M','1954/04/07');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Jennifer Aniston", 'F','1969/02/11');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Jim Carrey", 'M','1962/01/17');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Scarlett Johansson", 'F','1984/11/22');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Megan Fox", 'F','1986/05/16');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Ben Stiller", 'M','1965/11/30');
INSERT INTO tbl_Ator(Nome_ator, Sexo, Dt_nascimento) VALUES ("Emma Stone", 'F','1988/11/06');


#INSERT'S NA TABELA ATOR.
INSERT INTO tbl_Diretor (nome_diretor, Nacionalidade, Dt_nascimento, Sexo) VALUES ("Steven Spielberg",    "Estados Unidos",   '1946/12/18',   'M');
INSERT INTO tbl_Diretor (nome_diretor, Nacionalidade, Dt_nascimento, Sexo) VALUES ("James Cameron",   "Canada",   '1954/08/16',   'M');
INSERT INTO tbl_Diretor (nome_diretor, Nacionalidade, Dt_nascimento, Sexo) VALUES ("José Padilha",    "Brasil",   '1967/08/01',   'M');
INSERT INTO tbl_Diretor (nome_diretor, Nacionalidade, Dt_nascimento, Sexo) VALUES ("George Lucas",    "Estados Unidos",   '1944/05/14',   'M');
INSERT INTO tbl_Diretor (nome_diretor, Nacionalidade, Dt_nascimento, Sexo) VALUES ("Alan Rickman",    "Inglaterra",   '1946/02/21',   'M');
INSERT INTO tbl_Diretor (nome_diretor, Nacionalidade, Dt_nascimento, Sexo) VALUES ("Fernando Meirelles",  "Brasil",   '1965/11/09',   'M');

#INSERT'S NA TABELA GENERO.
INSERT INTO tbl_Genero (Genero) VALUES ("Terror");
INSERT INTO tbl_Genero (Genero) VALUES ("Ação");
INSERT INTO tbl_Genero (Genero) VALUES ("Comedia");
INSERT INTO tbl_Genero (Genero) VALUES ("Drama");
INSERT INTO tbl_Genero (Genero) VALUES ("Suspense");
INSERT INTO tbl_Genero (Genero) VALUES ("Ficção");
INSERT INTO tbl_Genero (Genero) VALUES ("Romance");
INSERT INTO tbl_Genero (Genero) VALUES ("Animação");

#INSERT'S NA TABELA FILME.
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Viva: A Vida é Uma Festa",    2017,   105,    8,  5);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Logan",   2017,   137,    2,  1);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Um Sonho de Liberdade",   1995,   142,    4,  5);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Matrix",  1999,   150,    6,  1);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Jumanji", 1996,   104,    3,  6);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Cidade de Deus",  2002,   135,    2,  3);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("O Resgate do Soldado Ryan",   1998,   170,    2,  6);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Extraordinário",  2017,   113,    4,  5);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("O Poderoso Chefão",   1972,   178,    2,  2);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Forrest Gump",    1994,   142,    7,  1);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Truque de Mestre",    2013,   125,    2,  4);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Fragmentado", 2017,   117,    4,  6);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Avatar",  2009,   162,    6,  2);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("O Preço do Amanhã",   2011,   109,    2,  3);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("O Senhor dos Anéis: O Retorno do Rei",    2003,   200,    6,  5);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Toy Story",   1995,   141,    8,  2);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Star Wars: Os Últimos Jedi",  2017,   152,    6,  4);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("O Menino do Pijama Listrado", 2008,   94, 4,  1);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("O Lobo de Wall Street",   2013,   181,    4,  6);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("A Hora do Rush",  1998,   98, 3,  5);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Piratas do Caribe - Maldição do Perola Negra",    2003,   143,    2,  4);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Passengeiros",    2016,   116,    2,  1);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Beleza Oculta",       2016,   97, 4,  2);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("It - A Coisa",    2017,   134,    1,  3);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Rocky V", 1990,   111,    4,  4);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Titanic", 1997,   195,    7,  4);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Vingadores 4",    2019,   150,    2,  2);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Velozes e Furiosos 8",    2017,   136,    2,  6);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Transformers",    2007,   150,    2,  4);
INSERT INTO tbl_Filme (Nome_filme, Ano_lancamento, Duracao, FK_Id_genero, FK_Id_diretor) VALUES ("Ilha do Medo",    2010,   139,    5,  1);

INSERT INTO Filme_e_Ator values
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


INSERT INTO tbl_sala (nome, capacidade) VALUES 
	("Sala 01", 120),
    ("Sala 02", 130),
    ("Sala 03", 180),
    ("Sala 04", 200),
    ("Sala 05", 220),
    ("Sala 06", 420),
    ("Sala 07", 320),
    ("Sala 08", 120),
    ("Sala 09", 255),
    ("Sala 10", 399),
    ("Sala 11", 123),
    ("Sala 12", 342),
    ("Sala 13", 531),
    ("Sala 14", 599),
    ("Sala 15", 421);

INSERT INTO tbl_horario (hora) VALUES
('13:00'),
('14:00'),
('15:30'),
('16:30'),
('17:00'),
('18:00'),
('19:30'),
('20:30'),
('21:00'),
('22:00'),
('22:30'),
('13:30'),
('22:00'),
('20:00'),
('19:00');


INSERT INTO tbl_exibicao (FK_Id_filme, FK_id_horario, FK_id_sala) values
(1, 1, 1),
(1, 1, 2),
(2, 2, 3),
(2, 2, 4),
(3, 3, 5),
(3, 3, 6),
(4, 4, 7),
(4, 4, 8),
(5, 5, 9),
(5, 5, 10),
(6, 6, 11),
(6, 6, 12),
(7, 7, 13),
(7, 7, 14),
(8, 8, 15),
(8, 8, 1),
(9, 9, 2),
(9, 9, 3),
(10, 10, 4),
(10, 10, 5),
(11, 11, 6),
(11, 11, 7),
(12, 12, 8),
(12, 12, 9),
(13, 13, 10),
(13, 13, 11),
(14, 14, 12),
(14, 14, 13),
(15, 15, 14),
(15, 15, 15),
(16, 1, 1),
(16, 1, 2),
(17, 2, 3),
(17, 2, 4),
(18, 3, 5),
(18, 3, 6),
(19, 4, 7),
(19, 4, 8),
(20, 5, 9),
(20, 5, 10),
(21, 6, 11),
(21, 6, 12),
(22, 7, 13),
(22, 7, 14),
(23, 8, 15),
(23, 8, 1),
(24, 9, 2),
(24, 9, 3),
(25, 10, 4),
(25, 10, 5),
(26, 11, 6),
(26, 11, 7),
(27, 12, 8),
(27, 12, 9),
(28, 13, 10),
(28, 13, 11),
(29, 14, 12),
(29, 14, 13),
(30, 15, 14),
(30, 15, 15);