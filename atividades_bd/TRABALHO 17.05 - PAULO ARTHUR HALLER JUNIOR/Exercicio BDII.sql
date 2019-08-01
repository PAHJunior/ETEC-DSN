DROP DATABASE petetec;

CREATE DATABASE petetec;

USE petetec;

-- -----------------------------------------------------
-- Construindo a tabela de fornecedor
-- -----------------------------------------------------
CREATE TABLE tbl_fornecedor (
	id_fornecedor INT NOT NULL AUTO_INCREMENT,
	nome_fantasia VARCHAR(45) NOT NULL,
	cnpj VARCHAR(45) NOT NULL UNIQUE,
	email VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_fornecedor)
);

-- -----------------------------------------------------
-- Construindo a tabela de produto
-- -----------------------------------------------------
CREATE TABLE tbl_produto (
	id_produto INT NOT NULL AUTO_INCREMENT,
	nome_produto VARCHAR(45) NOT NULL,
	valor_compra DECIMAL(6,2) NOT NULL,
	valor_venda DECIMAL(6,2) NOT NULL,
	qtde_estoque INT NOT NULL,
	FK_id_fornecedor INT NOT NULL,
	PRIMARY KEY (id_produto),
	FOREIGN KEY (FK_id_fornecedor) REFERENCES tbl_fornecedor (id_fornecedor)
);

-- -----------------------------------------------------
-- Construindo a tabela de cargo
-- -----------------------------------------------------
CREATE TABLE tbl_cargo (
	id_cargo INT NOT NULL AUTO_INCREMENT,
	cargo VARCHAR(45) NOT NULL,
	salario DECIMAL(7,2) NOT NULL,
	PRIMARY KEY (id_cargo)
);

-- -----------------------------------------------------
-- Construindo a tabela de funcionario
-- -----------------------------------------------------
CREATE TABLE tbl_funcionario (
	id_funcionario INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	cpf VARCHAR(14) NOT NULL UNIQUE,
	FK_id_cargo INT NOT NULL,
	PRIMARY KEY (id_funcionario),
	FOREIGN KEY (FK_id_cargo) REFERENCES tbl_cargo (id_cargo)
);

-- -----------------------------------------------------
-- Construindo a tabela de servico
-- -----------------------------------------------------
CREATE TABLE tbl_servico (
	id_servico INT NOT NULL AUTO_INCREMENT,
	descricao VARCHAR(45) NOT NULL,
	valor_servico DECIMAL(6,2) NOT NULL,
	tempo_servico TIME NOT NULL,
	PRIMARY KEY (id_servico)
);

-- -----------------------------------------------------
-- Construindo a tabela de cliente
-- -----------------------------------------------------
CREATE TABLE tbl_cliente (
	id_cliente INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	cpf VARCHAR(14) NOT NULL UNIQUE,
	nascimento DATE NOT NULL,
	sexo CHAR NOT NULL,
	telefone VARCHAR(45) NOT NULL,
	email VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_cliente)
);

-- -----------------------------------------------------
-- Construindo a tabela de animal
-- -----------------------------------------------------
CREATE TABLE tbl_animal (
	id_animal INT NOT NULL AUTO_INCREMENT,
	nome_animal VARCHAR(45) NOT NULL,
	especie VARCHAR(45) NOT NULL,
	sexo VARCHAR(45) NOT NULL,
	nascimento DATE NOT NULL,
    peso INT NOT NULL,
	FK_id_cliente INT NOT NULL,
	PRIMARY KEY (id_animal),
	FOREIGN KEY (FK_id_cliente) REFERENCES tbl_cliente (id_cliente)
);

-- -----------------------------------------------------
-- Construindo a tabela de compra
-- -----------------------------------------------------
CREATE TABLE tbl_compra (
	id_compra INT NOT NULL AUTO_INCREMENT,
	valor_total DECIMAL(7,2) NOT NULL,
	data_atual DATETIME NOT NULL,
	FK_id_cliente INT NOT NULL,
	FK_id_funcionario INT NOT NULL,
	PRIMARY KEY (id_compra),
	FOREIGN KEY (FK_id_cliente) REFERENCES tbl_cliente (id_cliente),
	FOREIGN KEY (FK_id_funcionario) REFERENCES tbl_funcionario (id_funcionario)
);

-- -----------------------------------------------------
-- Construindo a tabela de compras_produtos
-- -----------------------------------------------------
CREATE TABLE compras_produtos (
	FK_id_compra INT NOT NULL,
	FK_id_produto INT NOT NULL,
	PRIMARY KEY (FK_id_compra, FK_id_produto),
	FOREIGN KEY (FK_id_compra) REFERENCES tbl_compra (id_compra),
	FOREIGN KEY (FK_id_produto) REFERENCES tbl_produto (id_produto)
);

-- -----------------------------------------------------
-- Construindo a tabela de animal_servico`
-- -----------------------------------------------------
CREATE TABLE animal_servico (
	FK_id_animal INT NOT NULL,
	FK_id_servico INT NOT NULL,
    data_servico DATETIME NOT NULL,
	FOREIGN KEY (FK_id_animal) REFERENCES tbl_animal (id_animal),
	FOREIGN KEY (FK_id_servico) REFERENCES tbl_servico (id_servico)
);

-- -----------------------------------------------------
-- Construindo a tabela de servico_funcionario
-- -----------------------------------------------------
CREATE TABLE servico_funcionario (
	FK_id_servico INT NOT NULL,
	FK_id_funcionario INT NOT NULL,
	FOREIGN KEY (FK_id_servico) REFERENCES tbl_servico (id_servico),
	FOREIGN KEY (FK_id_funcionario) REFERENCES tbl_funcionario (id_funcionario)
);

## INSERT NA TABELA DE FORNECEDOR
-- -----------------------------------------------------
INSERT INTO tbl_fornecedor (nome_fantasia, cnpj, email)
	VALUES("Casa de Ração Doritos", "15.687.409/0001-64","doritos@doritos.com"),
    ("Casa de Ração Pepy", "10.107.409/0001-64","pepy@pepy.com"),
    ("Furacão Pet", "01.101.900/0001-77","furacaopet@furacaopet.com"),
    ("Casa do Cão", "12.687.741/0001-00","casadocao@casadocao.com"),
    ("Patinhas House", "05.197.004/0001-64","patinhas@patinhas.com"),
    ("Center Ração", "16.674.158/0001-11","centerracao@centerracao.com"),
    ("Shopping Cão", "99.000.014/0001-12","shoppingcao@shoppingcao.com"),
    ("Mundo Animal", "75.674.874/0001-00","mundoanimal@mundoanimal.com"),
    ("4 Patas", "45.267.410/0001-90","4patas@4patas.com"),
    ("Acãochego", "40.084.457/0001-07","acaochego@acaochego.com"),
    ("Mypet", "11.048.478/0001-74","mypet@mypet.com");
	

## INSERT NA TABELA DE PRODUTO
-- -----------------------------------------------------
INSERT INTO tbl_produto (nome_produto, valor_compra, valor_venda, qtde_estoque, FK_id_fornecedor)
	VALUES("Ração para Gatos", 15.62, 18.90, 50, 1),
    ("Ração para Cães", 12.20, 18.90, 90, 1),
    ("Anti Pulgas e Carrapatos", 130.21, 190.60, 10, 2),
    ("Gaiola", 35.00, 60.00, 15, 7),
    ("Aquario", 120.00, 180.90, 8, 5),
    ("Shampoo Pet", 15.62, 18.90, 50, 1),
    ("Coleira de Couro", 1.52, 3.89, 50, 10),
    ("Peitoral de Nylon", 6.69, 11.00, 50, 8),
    ("Coleira de Nylon", 12.00, 18.00, 25, 5),
    ("Porta saquinho higienico", 7.50, 8.90, 30, 2),
    ("Comedouro duplo Luxo", 19.00, 22.90, 45, 3),
    ("Caixa de areia para Gatos", 50.00, 68.99, 20, 6),
    ("Cama para Gatos", 35.50, 42.00, 15, 7),
    ("Cama para cachorros", 34.50, 45.50, 30, 8),
    ("Secador", 60.00, 82.00, 20, 10),
    ("Cesto de transporte para gatos", 70.00, 98.99, 22, 11),
    ("Cesto de transporte para cachorro", 70.00, 92.90, 29, 10),
    ("Roda para Hamster", 30.50, 38.90, 10, 8),
    ("Alpiste", 10.15, 12.00, 50, 7),
    ("Osso - Brinquedo", 30.00, 38.90, 80, 1),
    ("Bola - Brinquedo", 5.62, 6.50, 50, 1),
    ("Kit de Petiscos para cachorro", 32.00, 35.00, 50, 6),
    ("Kit de Petiscos para gatos", 28.00, 33.90, 50, 3),
    ("Bebedouro para Passaros", 2.50, 3.00, 50, 2),
    ("Ração para Peixes", 6.20, 8.15, 30, 1),
    ("Bomba para aquario", 20.60, 30.99, 10, 5),
    ("Kit Enfeite para Aquario", 30.00, 38.20, 20, 6),
    ("Tapete Higienico", 10.00, 14.99, 20, 6),
    ("Suplemento para Cães", 5.10, 8.90, 22, 1),
    ("Suplemento para Gatos", 3.15, 5.20, 30, 1),
    ("Cercado para Cachorro pequeno", 150.62, 180.90, 15, 8),
    ("Laços para Cães", 0.50, 1.20, 120, 10),
    ("Roupas para Cães", 40.00, 55.99, 50, 11),
    ("Roupas para Gatos", 51.60, 60.90, 20, 10),
    ("Saquinho de Petiscos para Cães", 25.00, 33.90, 50, 5),
    ("Saquinho de Petiscos para Gatos", 27.80, 35.15, 35, 7);
    


## INSERT NA TABELA DE CARGO
-- -----------------------------------------------------
INSERT INTO tbl_cargo (cargo, salario)
	VALUES("Vendedor", 1200.00),
    ("Banhista e tosador", 1680.00),
    ("Veterinario", 2120.00);


## INSERT NA TABELA DE FUNCIONARIO
-- -----------------------------------------------------
INSERT INTO tbl_funcionario (nome, cpf, FK_id_cargo)
	VALUES("Adelina", "879.874.646-85", 1),
    ("Ana", "405.412.123-21", 2),
    ("Marcelo", "904.874.746-45", 3),
    ("Carlos", "254.413.046-01", 1),
    ("Haila", "970.054.789-87", 2),
    ("Fernando", "487.546.654-11", 3),
    ("André", "417.011.515-78", 2),
    ("Jaqueline", "654.044.047-74", 2),
    ("Alex", "450.874.646-01", 3),
    ("Roberto", "341.450.651-45", 2);


## INSERT NA TABELA DE SERVICOS
-- -----------------------------------------------------
INSERT INTO tbl_servico (descricao, valor_servico, tempo_servico)
	VALUES("Banho", 35.00, "00:25:00"),
    ("Tosa", 25.00, "00:15:30"),
    ("Banho e Tosa", 55.00, "00:40:30"),
    ("Vacina", 20.00, "00:05:00"),
    ("Castração", 325.00, "01:20:00"),
    ("Higienização Bucal", 50.00, "00:20:00"),
    ("Hospedagem Diaria", 170.00, "24:00:00"),
    ("Consultas veterinárias", 100.00, "00:45:00"),
    ("Adestramento", 800.00, "240:00:00"),
    ("Passeios", 150.00, "02:30:00");


## INSERT NA TABELA DE CLIENTEStbl_animal
-- -----------------------------------------------------
INSERT INTO tbl_cliente (nome, cpf, nascimento, sexo, telefone, email)
	VALUES("Luis Amado", "879.874.646-85", "1987-08-15", 'M', "4002-8922", "luis@email.com"),
    ("Valentino Cardoso", "405.412.123-21", "1990-08-08", 'M', "4002-8922", "valentino@email.com"),
    ("Ulisses Bartolomeu", "904.874.746-45", "1992-07-22", 'M', "4002-8922", "ulisses@email.com"),
    ("Alberto Carlos", "254.413.046-01", "2001-10-18", 'M', "4002-8922", "alberto@email.com"),
    ("Fabiana Telles", "970.054.789-87", "1982-04-17", 'F', "4002-8922", "fabiana@email.com"),
    ("Pamela Costa", "487.546.654-11", "1980-01-20", 'F', "4002-8922", "pamela@email.com"),
    ("Antunes Algumacoisa", "417.011.515-78", "1990-01-10", 'M', "4002-8922", "antunes@email.com"),
    ("Amadeu Souza", "654.044.047-74", "1975-05-20", 'M', "4002-8922", "amadeu@email.com"),
    ("Hernesto Caruso", "450.874.646-01", "1967-07-08", 'M', "4002-8922", "hernesto@email.com"),
    ("Carlita Salvador", "341.450.651-45", "1996-07-19", 'F', "4002-8922", "carlita@email.com"),
    ("Americo Alegre", "404.987.978-79", "1981-09-18", 'M', "4002-8922", "americo@email.com"),
    ("Oliver Tsubasa", "405.111.048-20", "1985-08-24", 'M', "4002-8922", "tsubasa@email.com"),
    ("Son Goku", "405.001.489-13", "1990-07-09", 'M', "4002-8922", "goku@email.com"),
    ("Ash Ketchum", "798.751.047-09", "1999-02-28", 'M', "4002-8922", "ash@email.com");


## INSERT NA TABELA DE ANIMAL
-- -----------------------------------------------------
INSERT INTO tbl_animal (nome_animal, especie, sexo, nascimento, peso, FK_id_cliente)
	VALUES("Tótó", "Cachorro", 'M', "2010-05-12", 12, 1),
    ("Sansão", "Gato", 'M', "2015-10-19", 2, 4),
    ("Thor", "Cachorro", 'M', "2010-10-02", 8, 3),
    ("Meduza", "Gato", 'F', "2019-11-22", 3, 6),
    ("Pretinho", "Gato", 'M', "2018-05-27", 2, 2),
    ("Negão", "Cachorro", 'M', "2000-01-17", 11, 5),
    ("Bob", "Passaro", 'M', "2016-07-01", 1, 8),
    ("Aquiles", "Gato", 'M', "2010-12-12", 2, 12),
    ("Nemo", "Peixe", 'M', "2019-02-20", 2, 11),
    ("Pikachu", "Hamster", 'M', "2012-12-23", 1, 14),
    ("Fofinho", "Gato", 'M', "2010-01-12", 3, 10),
    ("Nemesis", "Passaro", 'M', "2010-02-19", 1, 9),
    ("Raptor", "Peixe", 'M', "2016-09-04", 1, 1),
    ("Golias", "Gato", 'M', "2019-01-20", 3, 7),
    ("Xuxa", "Cachorro", 'F', "2004-08-17", 10, 2),
    ("Peludinha", "Cachorro", 'F', "2017-09-12", 5, 14),
    ("Rojão", "Cachorro", 'M', "2017-05-07", 5, 7),
    ("Golias", "Passaro", 'M', "2015-09-27", 8, 9),
    ("Java", "Gato", 'M', "1996-01-23", 4, 8),
    ("Bart", "Peixe", 'M', "2017-10-06", 1, 3),
    ("Donkey", "Gato", 'M', "2010-05-22", 3, 7),
    ("Algodão", "Cachorro", 'M', "2014-12-17", 6, 10);



## INSERT NA TABELA DE COMPRA
-- -----------------------------------------------------
INSERT INTO tbl_compra (valor_total, data_atual, FK_id_cliente, FK_id_funcionario)
	VALUES(16.10, "2019-06-27 13:54:00", 1, 3),
    (6.80, "2019-06-27 12:14:18", 8, 3),
    (8.99, "2017-02-08 19:49:20", 7, 3),
    (287.00, "2018-08-14 20:18:20", 4, 6),
    (68.90, "2015-06-01 09:00:07", 6, 6),
    (15.88, "2018-12-12 12:25:41", 7, 1),
    (340.90, "2019-03-27 18:24:45", 2, 2),
    (410.55, "2019-02-01 15:38:02", 3, 6),
    (18.50, "2018-10-17 11:54:27", 1, 6),
    (16.10, "2019-01-15 19:57:07", 10, 4),
    (66.10, "2019-02-06 17:44:00", 1, 3),
    (62.80, "2019-02-08 10:41:18", 8, 3),
    (81.79, "2017-12-17 17:29:28", 7, 3),
    (27.54, "2018-10-14 14:10:24", 4, 6),
    (668.98, "2017-06-22 19:00:07", 6, 6),
    (105.50, "2018-07-01 14:25:41", 7, 1),
    (30.91, "2018-03-30 15:24:45", 2, 2),
    (40.50, "2019-05-21 11:38:02", 3, 6),
    (8.50, "2018-10-17 08:54:27", 1, 6),
    (16.18, "2019-01-15 12:57:07", 10, 4),    
    (67.10, "2019-06-27 10:33:00", 1, 3),
    (66.80, "2019-06-27 12:19:18", 8, 3),
    (87.99, "2017-02-08 19:49:20", 7, 3),
    (27.00, "2018-08-14 20:10:41", 4, 6),
    (69.90, "2015-06-01 12:19:07", 6, 6),
    (155.88, "2018-12-12 17:20:43", 7, 1),
    (34.90, "2019-03-27 19:20:08", 2, 2),
    (40.55, "2019-02-01 15:52:02", 3, 6),
    (178.50, "2018-10-17 11:59:41", 1, 6),
    (160.10, "2019-01-15 20:00:09", 10, 4);
    

## INSERT NA TABELA DE COMPRAS_PRODUTOS
-- -----------------------------------------------------
INSERT INTO compras_produtos
	VALUES(1, 1),
	(17, 19),
	(10, 33),
	(21, 18),
	(16, 7),
	(5, 14),
	(21, 5),
	(18, 4),
	(9, 28),
	(26, 1),
	(13, 7),
	(29, 9),
	(30, 21),
	(21, 26),
	(24, 12),
	(5, 28),
	(29, 1),
	(3, 14),
	(20, 23),
	(3, 27),
	(1, 21),
	(13, 2),
	(21, 7),
	(26, 16),
	(1, 3),
	(23, 21);


## INSERT NA TABELA DE ANIMAL_SERVICO
-- -----------------------------------------------------
INSERT INTO animal_servico
	VALUES(1, 1, "2019-06-27 15:29"),	
	(21, 7, "2018-12-15 03:27:48"),	
	(18, 9, "2019-01-01 15:34:48"),	
	(17, 3, "2019-06-02 16:36:43"),	
	(2, 3, "2018-08-15 09:22:55"),	
	(8, 10, "2019-01-22 23:21:32"),	
	(12, 6, "2018-10-27 03:23:47"),	
	(10, 9, "2019-01-26 12:53:49"),	
	(9, 2, "2019-04-16 01:58:29"),	
	(2, 3, "2018-08-15 09:22:55"),	
	(8, 10, "2019-01-22 23:21:32"),	
	(12, 6, "2018-10-27 03:23:47"),
    (15, 1, "2018-11-17 01:23:50"),
	(18, 5, "2018-07-18 04:47:36"),
	(18, 5, "2019-05-31 21:27:47"),
	(15, 6, "2018-08-15 13:25:31"),
	(16, 6, "2018-07-12 02:04:11"),
	(18, 2, "2019-03-04 07:15:42"),
	(18, 1, "2018-10-28 17:10:17"),
	(9, 9, "2019-05-22 08:44:27"),
	(3, 9, "2019-05-13 09:56:12"),
	(14, 5, "2018-10-22 06:45:57"),
	(22, 3, "2019-05-03 07:18:44"),
	(12, 4, "2018-07-01 03:02:09"),
	(22, 2, "2019-03-06 08:17:54"),
	(22, 2, "2019-06-15 09:50:29"),
	(15, 3, "2019-02-17 17:07:18"),
	(4, 7, "2018-07-08 03:31:07"),
	(18, 4, "2019-04-13 00:46:59"),
	(10, 2, "2018-10-20 21:48:12"),
	(3, 1, "2018-09-21 15:47:37"),
	(16, 8, "2018-08-28 13:43:21"),
	(10, 8, "2019-04-15 22:20:35"),
	(16, 4, "2019-02-10 09:04:32"),
	(18, 10, "2018-11-12 10:30:37"),
	(9, 9, "2018-08-03 19:42:38"),
	(1, 3, "2018-12-17 23:39:37"),
	(8, 5, "2019-05-07 23:42:29"),
	(15, 6, "2018-11-09 02:22:47"),
	(18, 3, "2019-05-29 04:06:15"),
	(13, 7, "2018-11-07 13:22:30"),
	(17, 6, "2018-09-23 07:14:59"),
	(12, 10, "2018-08-09 19:31:43"),
	(14, 7, "2018-11-02 12:03:28"),
	(11, 6, "2019-06-09 13:32:36");
	
	
## INSERT NA TABELA DE SERVICO_FUNCIONARIO
-- -----------------------------------------------------
INSERT INTO servico_funcionario
	VALUES(1, 1),
	(1, 2),
	(7, 7),
	(10, 9),
	(4, 6),
	(1, 4),
	(2, 1),
	(6, 6),
	(6, 6),
	(2, 7),
	(8, 6),
	(1, 8),
	(9, 6),
	(9, 4),
	(10, 8),
	(10, 6),
	(10, 8),
	(2, 9),
	(1, 6),
	(2, 1),
	(5, 8),
	(3, 2),
	(2, 5);

# 1-
create view atividade_1 as
select especie, media from tbl_animal where especie in('gato', 'cachorro');


# 2-
create view atividade_2 as
select a.valor_total from tbl_compra a
join compras_produtos b on a.id_compra = fk_id_compra
join tbl_produto c on b.fk_id_produto = c.id_produto
where a.valor_total > (select avg(valor_compra) from tbl_produto);


# 3-
create view atividade_3 as
select nome_produto from tbl_produto where not exists (select * from compras_produtos where compras_produtos.fk_id_produto = id_produto);

# 11-
create view atividade_11 as
select a.nome_animal, b.nome from tbl_animal a
join b tbl_cliente on a.fk_id_cliente = b.id_cliente;


#6 
create view questao_6 as
	select a.cargo ,count(a.cargo) from tbl_cargo a
	join tbl_funcionario b on a.id_cargo = b.fk_id_cargo group by cargo;

#7
create view questao_7 as
	select count(a.nome), a.nome, c.descricao from tbl_funcionario a
	join servico_funcionario b on a.id_funcionario = b.fk_id_funcionario
	join tbl_servico c on b.fk_id_servico = c.id_servico where a.nome like '%Jaqueline%';
    
    
######################################################################################################################################
######################################################################################################################################

### QUESTÕES PROVA BANCO DE DADOS ###
/*
1- INFORMAR QUAL O PESO MEDIO DE TODOS OS ANIMAIS DA ESPECIE "CACHORRO" e "GATO", ASSIM COMO O MAIOR E O MENOR PESO E A SOMA DE TODOS OS PESOS DESTAS DUAS ESPECIES.

    
    select a.nome_filme, b.genero, c.nome_diretor from tbl_filme a 
join tbl_genero b  on a.fk_id_genero = b.id_genero 
join tbl_diretor c on a.fk_id_diretor = c.id_diretor;

    
2- LISTAR AS COMPRAS QUE TENHAM O VALOR_TOTAL ACIMA DA MEDIA DE TODAS AS COMPRAS.



3- LISTAR TODOS OS PRODUTOS QUE NAO TIVERAM NENHUMA VENDA REGISTRADA.


    
4- INFORMAR O NOME DE TODOS OS ANIMAIS QUE NASCERAM ENTRE OS ANOS 2000 E 2010, ASSIM COMO TAMBEM O NOME DE SEUS DONOS, ORGANIZANDO EM ORDEM ALFABETICA DE Z-A PELO NOME DO DONO.

    
5- LISTE OS NOME DE TODOS OS CLIENTES E DE SEUS ANIMAIS QUE TIVERAM ALGUM TIPO DE SERVICO NOS ULTIMOS 30 DIAS.



6- LISTAR TODOS OS CARGOS CADASTRADOS E QUANTOS FUNCIONARIOS CADA CARGO TEM.


    
7- INFORME QUANTAS VEZES O FUNCIONARIA "Jaqueline" REALIZOU ALGUM SERVIÇO, MOSTRANDO A QUANTIDADE DE VEZES E O NOME DO SERVIÇO REALIZADO.



8- QUAL O NOME DOS ANIMAIS QUE FORAM ATENDIDOS PELO FUNCIONARIO "Alex", ASSIM COMO O NOME DO DONO DO ANIMAL E O SERVICO PRESTADO EM ORDEM ALFABETICA PELO DONO.



9- LISTAR O NOME DE TODOS OS FUNCIONARIOS QUE ATENDERAM O "Tótó" E QUAL O SALARIO DESTES FUNCIONARIOS.



10- TRANSFORMAR TODAS AS QUESTOES ANTERIORES EM VIEWS COM OS SEGUINTE NOME: "EXERCICIO_01" E ASSIM SUCESSIVAMENTE PARA CADA QUESTAO.



11- BONUS1: LISTAR TODOS OS ANIMAIS TERMINADOS COM "ÃO" E TODOS OS OS CLIENTES QUE CONTENHAM "AM" NO NOME.



12- BONUS2: CRIAR UMA TRIGGER QUE QUANDO O UM ANIMAL FOR CADASTRADO AUTOMATICAMENTE ELE GANHA UM BANHO GRATIS.

