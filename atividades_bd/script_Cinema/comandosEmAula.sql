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

rollback; #Voltando uma cagada
commit; #Realizando um commit

SELECT * FROM  tbl_ator;

DELETE FROM tbl_ator WHERE Id_ator = 1;

SELECT min(nome_diretor) from tbl_diretor;
SELECT max(duracao) from tbl_filme;
SELECT max(nome_ator) from tbl_ator;
select count(id_genero) as total_genero from tbl_genero;
select count(*) from tbl_ator where dt_nascimento between '1980-01-01' and '2000-12-31';
select avg(duracao) from tbl_Filme; 
select avg(ano_lancamento) from tbl_Filme;
select * from tbl_filme order by ano_lancamento desc, nome_filme;
select count(*) as total, sexo from tbl_ator where dt_nascimento between '1900-12-12' and '200-12-31' group by sexo;
select sum(duracao) from tbl_filme;
select * from tbl_filme;
select count(*), fk_id_diretor from tbl_filme group by fk_id_diretor;