use cinema;
#  Desafio 2 - Selecionar a maior duracao dos filmes cadastrados. 
select max(duracao) from tbl_filme;

#  Desafio 3 - Selecionar a menor duracao dos filmes lancado entre os anos 2000 e 2010. 
select min(duracao) from tbl_filme where ano_lancamento between 2000 and 2010;

#  Desafio 4 - Selecionar os filmes exibibindo apenas aqueles que pertencerem ao genero "Ação".
select * from tbl_filme where FK_Id_genero = 2;

#  Desafio 5 - Selecionar os filmes exibindo aqueles que pertecerem ao genero "Drama" e que tenham sido lançados apos o ano 2010.
select * from tbl_filme where FK_Id_genero = 4 and Ano_lancamento > 2000;

#  Desafio 6 - Exibir todos os filmes e seus anos de lancamentos organizando  
# da seguinte maneira (ordem de ano do mais novo para o mais velho e nome do filme em ordem alfabetica).
select * from tbl_filme order by Ano_lancamento desc, nome_filme;

#  Desafio 7 -Exibir a soma da duracao de todos os filmes que foram 
# lancados entre 2010 e 2018 e pertecerem ao genero "ficçao"
select sum(duracao) from tbl_filme where Ano_lancamento between 2010 and 2018 and FK_Id_genero = 6;

#  Desafio 8 - Exibir quantos filmes foram lancados antes do ano 2000.
select count(*) from tbl_filme where Ano_lancamento < 2000;

#  Desafio 9 - Exibir qual a media de duracao dos filmes lancados apos o ano 2000.
select avg(duracao) from tbl_filme where Ano_lancamento > 2000;

#  Desafio 10 - Quantos filmes pertecem a cada um dos generos.
select FK_Id_genero, count(FK_Id_genero) from tbl_filme group by FK_Id_genero;

#  Desafio 11 - Exibir em ordem alfabetica quais atores e em quais anos nasceram entre 1960 e 1980.
select * from tbl_ator where Dt_nascimento between '1960-01-01' and '1980-01-01' order by nome_ator;

#  Desafio 12 - Exibir todas informações sobre os atores do mais jovem para o mais velho.
select * from tbl_ator order by Dt_nascimento;

#  Desafio 13 - Selecionar em quantos filmes o ator numero 1 trabalhou.
select FK_ID_ator, count(FK_ID_ator) from filme_e_ator where FK_ID_ator = 1;

#  Desafio 14 - Selecionar quantos atores trabalharam no filme numero 1.
select FK_Id_filme, count(FK_Id_filme) from filme_e_ator where FK_Id_filme = 1;

#  Desafio 15 - Selecionar quantos filmes foram lancados em cada um dos anos.
select Ano_lancamento, count(Ano_lancamento) from tbl_filme group by Ano_lancamento;

#  Desafio 16 - Exibir quantos diretores pertencem a cada pais.
select Nacionalidade, count(Nacionalidade) from tbl_diretor group by Nacionalidade;

#  Desafio 17 - exibir o total de filmes, a soma das durações e a media das duracoes para cada um  
#  dos generos de filmes organizando da menor media para a maior.
select count(*) as 'Total_Filmes' , sum(duracao) as 'Soma_duracao' , avg(duracao) as 'Media_Duracao'  from tbl_filme group by FK_Id_genero order by Media_Duracao;