use cinema;

ALTER TABLE tbl_Diretor ADD Sexo varchar(1) not null; #Comando utilizado para adicionar uma nova coluna em um adeterminada tabela. Passamos os parametros que a mesma deve receber de acordo com o que queremos para ela.

ALTER TABLE tbl_Diretor MODIFY Nacionalidade varchar(45) not null; #Comando utilizado para alterar uma coluna ja existente em nossas tabelas, neste caso do "MODIFY" a tabela ja deve conter uma coluna chamada "Nacionalidade". 

ALTER TABLE tbl_Filme DROP Nome_Filme_EN; #Excluimos uma coluna na estrutura de nossa tabela.

ALTER TABLE tbl_Filme CHANGE Nome_filme_PT Nome_filme VARCHAR(45) not null; #Aqui estamos alterando o nome da COLUNA na tabela, onde passamos qual o antigo nome da coluno e na sequencia qual o nome que desejamos que ela receba.

ALTER TABLE tbl_Filme_has_tbl_Ator RENAME Filme_e_Ator; #Este comando renomeia A TABELA, diferentemente do comando anterior, este faz o renomeio da TABELA.

ALTER TABLE tbl_Filme add Cartaz BOOLEAN;

ALTER TABLE tbl_Ator ADD tbl_status_ator ENUM('ATIVO','INATIVO') default 'Ativo';
ALTER TABLE tbl_Diretor ADD tbl_status_diretor ENUM('ATIVO','INATIVO') default 'Ativo';
ALTER TABLE tbl_exibicao ADD tbl_status_exibicao ENUM('ATIVO','INATIVO') default 'Ativo';
ALTER TABLE tbl_Filme ADD tbl_status_filmes ENUM('ATIVO','INATIVO') default 'Ativo';
ALTER TABLE tbl_genero ADD tbl_status_genero ENUM('ATIVO','INATIVO') default 'Ativo';
ALTER TABLE tbl_horario ADD tbl_status_horario ENUM('ATIVO','INATIVO') default 'Ativo';
ALTER TABLE tbl_sala ADD tbl_status_sala ENUM('ATIVO','INATIVO') default 'Ativo';
UPDATE tbl_Filme SET Cartaz = true WHERE Ano_lancamento > 2015;
UPDATE tbl_Filme SET Cartaz = false WHERE Ano_lancamento <= 2015;