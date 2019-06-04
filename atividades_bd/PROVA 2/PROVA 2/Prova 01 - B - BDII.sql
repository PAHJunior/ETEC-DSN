#SIGA AS INSTRUÇÕES CONTIDAS NOS COMENTARIOS PARA REALIZAR AS TAREFAS DESTE EXERCICIO.

#POSSIVELMENTE DEVEM OCORRER ERROS AO EXECUTAR A CRIAÇÃO DAS TABELAS E INSERÇÃO DE DADOS NO BANCO,
#CASO VENHA A ACONTECER ERROS, ANALISE QUAL O ERRO EMITIDO E CORRIJA-O PARA DAR SEQUENCIA.
#APOS REALIZAR A CRIACAO DAS TABELAS E A INSERÇAO DOS DADOS NA PARTE FINAL DESTE SCRIPT HÁ ALGUMAS QUESTOES QUE VOCE DEVERÁ RESPONDER.
#LEIA ATENTAMENTE E SIGA TODAS AS INSTRUÇÕES.
#CASO ACHE NECESSARIO O MER ESTARA JUNTO PARA QUE POSSA SER CONSULTADO
#AO FINAL DA RESOLUÇÃO, COMUNIQUE O PROFESSOR PARA QUE POSSA COPIAR SEU ARQUIVO E ANALISA-LO POSTERIORMENTE.

# 1 - CRIE O BANCO DE DADOS COM O SEU NOME.
CREATE DATABASE SEUNOMEAQUI; 

USE SEUNOMEAQUI;

# 2 - APOS CRIAR O BANCO, REALIZE A CRIAÇÃO DAS 7 TABELAS ABAIXO. CASO VENHA A ACONTECER ALGUM ERRO CORRIJA-O.
CREATE TABLE gravadora(
	id_gravadora int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_gravadora varchar(100) NOT NULL,
    site varchar(100) NOT NULL,
    contato varchar(100) NOT NULL
);

CREATE TABLE cd(
	id_cd int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_cd varchar(100) NOT NULL,
    preco_venda decimal(6,2) NOT NULL,
    lancamento int NOT NULL,
    fk_id_gravadora int not null,
    FOREIGN KEY (fk_id_gravadora) REFERENCES gravadora (id_gravadora)
);

CREATE TABLE musica_autor(
	fk_id_musica int NOT NULL,
	fk_id_autor int NOT NULL,
    PRIMARY KEY (fk_id_musica,fk_id_autor),
	FOREIGN KEY (fk_id_musica) REFERENCES musica (id_musica),
    FOREIGN KEY (fk_id_autor) REFERENCES autor (id_autor)
);

CREATE TABLE musica(
	id_musica int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome_musica varchar(100) NOT NULL,
    duracao time NOT NULL
);

CREATE TABLE autor(
	id_autor int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_autor varchar(100) NOT NULL,
	nascimento date not null
);

CREATE TABLE musica_cd(
	faixa int NOT NULL AUTO_INCREMENT,
	fk_id_cd int NOT NULL,
    fk_id_musica int NOT NULL,
	PRIMARY KEY (faixa,fk_id_cd,fk_id_musica),
	FOREIGN KEY (fk_id_musica) REFERENCES musica (id_musica),
    FOREIGN KEY (fk_id_cd) REFERENCES cd (qualachave)
);


#AGORA QUE VOCE CONSEGUIU REALIZAR O DDL DO SEU BANCO VAMOS AO DML.
# 3- INSIRA AS INFORMACOES ABAIXO CORRESPONDENTE A CADA UMA DAS TABELAS CRIADAS.
INSERT INTO musica (nome_musica, duracao)
VALUES
	('Será','00:02:28'),
	('Ainda é Cedo', '00:03:55'),
	('Geração Cocacola','00:02:20'),
	('Eduardo e Mônica','00:04:32'),
	('Tempo Perdido','00:05:00'),
	('Índios','00:04:23'),
	('Que País é esse','00:02:24'),
	('Faroeste Caboclo','00:09:03'),
	('Há Tempos','00:03:16'),
	('Pais e Filhos','00:05:06'),
	('Meninos e Meninas','00:03:22'),
	('Vento no litoral','00:06:05'),
	('Perfeição','00:04:35'),
	('Dezesseis','00:03:20'),
	('Antes das Seis','00:05:28'),
	('Meninos, Eu vi','00:03:25'),
	('Eu te Amo','00:03:06'),
	('Piano na Mangueira','00:02:23'),
	('A Violeta','00:02:54'),
	('Anos Dourados','00:02:56'),
	('Olha, Maria','00:03:55'),
	('Biscate','00:03:20'),
	('Retrato em Preto e Branco','00:03:03'),
	('Falando de Amor','00:03:20'),
	('Pois é','00:02:48'),
	('Noite dos Massacrados','00:02:42'),
	('Sabia','00:03:20'),
	('Bate Boca','00:04:41');

INSERT INTO autor (nome_autor, nascimento)
VALUES
	('RENATO RUSSO','1944/12/30'),
	('MARCELO BONFÁ','1987/10/12'),
	('TOM JOBIN','1951/03/20'),
	('VINICIUS DE MORAES','1951/03/20'),
	('CHICO BUARQUE','1980/01/01'),
	('CAETANO VELOSO','1981/12/24'),
	('JORGE BEN JOR','1991/03/20'),
	('CARTOLA','1986/07/18'),
	('CARTOLA','1988/09/10'),
	('TIM MAIA','1943/10/09'),
	('GILBERTO GIL','1944/12/30'),
	('PIXINGUINHA','1975/12/25'),
	('LUIZ GONZAGA','1977/09/04'),
	('ELIS REGINA','1952/04/11'),
	('RAUL SEIXAS','1970/05/22'),
	('MILTON NASCIMENTO','1966/10/06');

INSERT INTO nomedatabela (nome_gravadora, site, contato)
VALUES
	('EMI','www.emi.com','Belcitranio Nunes'),
	('Polygram','www.polygram.com','Carlos Adão'),
	('Abril','www.abril.com','Mikaely Costa'),
    ('Som Livre','www.somlivre.com','Esmerlindo Argenio'),
	('Som Livre','www.somlivre.com','Esmerlindo Argenio');
 	
INSERT INTO cd (nome_cd, preco_venda, lancamento, fk_id_gravadora)
VALUES
	('Mais do Mesmo', 15.00, 1992, 1), 
    ('Só Sucesso', 12.80, 1982, 2), 
    ('Old Hits', 25.25, 1995, 3), 
    ('Musica Raiz', 25.25, 1980, 1),
    ('Escuta ai', 25.25, 2002, 2),
    ('Vem que tem som', 15.50, 1995, 7);

    
#SE OCORRER ERRO NOS INSERTS ABAIXO, VERIFIQUE SE A SINTAXE ESTA CORRETA, SE A ORDEM HIERARQUICA ESTA CORRETA E SE SUA TABELA DE CURSOS CONTEM OS INDICE DE CHAVE MENCIONADOS.    
INSERT INTO musica_cd (fk_id_cd, fk_id_musica)
VALUES 
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
	(2,11),
    (2,12),
    (2,13),
    (2,14),
    (2,15),
    (2,16),
    (2,17),
    (2,18),
    (2,19),
    (2,20),    
    (3,21),
    (3,22),
    (3,23),
    (3,24),
    (3,25),
    (3,26),
    (3,27),
    (3,28),
	(4,1),
    (4,2),
    (4,3),
    (4,4),
    (4,5),
    (4,6),
    (4,7),
    (4,8),
    (4,9),
    (4,10),
	(4,11),
    (4,12),
    (4,13),
    (4,14),
    (4,15),
    (4,16),
    (4,17),
    (5,18),
    (5,19),
    (5,20),    
    (5,21),
    (5,22),
    (5,23),
    (5,24),
    (5,25),
    (5,26),
    (5,27),
    (5,28);

INSERT INTO musica_autor (fk_id_musica, fk_id_autor)
VALUES 
	(1,1),
    (2,3),
    (3,2),
    (4,6),
    (10,4),
    (6,1),
    (7,1),
    (8,5),
    (9,6),
    (10,2),
	(11,4),
    (12,2),
    (13,5),
    (14,2),
    (15,1),
    (16,3),
    (17,4),
    (18,4),
    (19,2),
    (20,1),    
    (21,3),
    (22,5),
    (23,4),
    (24,6),
    (25,2),
    (26,1),
    (27,3),
    (28,4),
	(1,5),
    (2,1),
    (3,1),
    (4,2),
    (5,3),
    (6,5),
    (7,2),
    (8,1),
    (9,3),
    (10,4),
	(11,1),
    (12,3),
    (13,4),
    (14,1),
    (15,6),
    (1,3),
    (7,4),
    (6,4),
    (9,2),
    (10,1),    
    (11,3),
    (2,5),
    (3,4),
    (4,8),
    (5,2),
    (6,7),
    (7,3),
    (8,4);
    
    
    ############### EXERCICIOS ######################

# 1 - A GRAVADORA "SOM LIVRE" FOI INSERIDA DUAS VEZES NA TABELA. ALTERE O "SEGUNDO" REGISTRO DELA PARA "LIVE RECORDS" E O SITE PARA "WWW.LIVERECORDS.COM". 
# DEIXE O CODIGO ABAIXO:



# 2 - O CD CHAMADO "VEM QUE TEM SOM" NAO ESTA MAIS DISPONIVEL. EXCLUA ESTE REGISTO DAS INFORMAÇÕES DO BANCO. DEIXE O CODIGO ABAIXO:



# 3 - SELECIONE O NOME DE TODAS MUSICAS QUE TERMINAREM COM A LETRA "A" EM SEU NOME, ORGANIZANDO EM ORDEM ALFABETICA DO "ULTIMO PARA O PRIMEIRO". DEIXE O CODIGO ABAIXO:



# 4 - SELECIONAR QUANTOS AUTORES NASCERAM ENTRE OS ANOS 1960 E 1980 E RENOMEIE A COLUNA DO SELECT PARA "TOTAL_AUTORES". DEIXE O CODIGO ABAIXO:



# 5 - SELECIONAR QUANTAS MUSICAS PERTENCEM A CADA UM DOS AUTORES E RENOMEIE AS COLUNAS DO SELECT. DEIXE O CODIGO ABAIXO:



# 6 - SELECIONAR QUAL A SOMA, A MEDIA, A MENOR DURACAO TIRADA E A MAIOR DURACAO DENTRE TODAS AS MUSICAS CADASTRADAS. RENOMEIE AS COLUNAS DO SELECT. DEIXE O CODIGO ABAIXO:



# 7 - EXIBIR TODAS AS MUSICAS QUE TIVEREM A DURAÇÃO MAIOR QUE 3 MINUTOS. ORGANIZANDO DA MENOR DURAÇAO PARA A MAIOR E DEPOIS EM ORDEM ALFABETICA DA ULTIMA PARA A PRIMEIRA.
#  DEIXE O CODIGO ABAIXO:


# 8 - EXIBIR QUANTAS MUSICAS CADA UM DOS CDS CONTEM. INFORMANDO DO CD QUE TEM MAIS PARA O QUE TEM MENOS.  DEIXE O CODIGO ABAIXO:




