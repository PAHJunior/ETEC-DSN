use teste;

SELECT sum(duracao) as Soma_Duracao from tbl_Filmes; #Faz a soma de todos os campos duracao
SELECT sum(duracao) as Soma_Duracao from tbl_Filmes WHERE ano_Lancamento < 2000;
SELECT count(ano_Lancamento) from tbl_Filmes; # Conta quantas linhas tem na tabela filmes