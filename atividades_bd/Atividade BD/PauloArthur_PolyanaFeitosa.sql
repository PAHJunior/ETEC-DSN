drop database atividadde_PauloArthur_Polyana;
create database atividadde_PauloArthur_Polyana;

use atividadde_PauloArthur_Polyana;

create table Professor(
	idProfessor int auto_increment primary key,
    nomeProfessor varchar(45) not null,
    rg varchar(45) not null,
    nascimento varchar(45) not null
);

create table Disciplina(
	idDisciplina int auto_increment primary key,
    nomeDisciplina varchar(45) not null,
    carga varchar(45) not null,
    Professor_idProfessor int not null,
    foreign key (Professor_idProfessor) references Professor(idProfessor)
);

create table Aluno(
	idAluno int auto_increment primary key,
    nomeAluno varchar(45) not null,
    cpf varchar(45) not null,
    sexo char not null
);

create table Curso(
	idCurso int auto_increment primary key,
    dataRegistro varchar(45) not null,
    Disciplina_idDisciplina int not null,
    Aluno_idAluno int not null,
    foreign key (Disciplina_idDisciplina) references Disciplina(idDisciplina),
    foreign key (Aluno_idAluno) references Aluno(idAluno)
);

## INSERTS
insert into Professor (nomeProfessor, rg, nascimento) values
	("Giordano", "42.954.985-7", '1978-04-26'),
	("Bittencourt", "75.321.479-0", '1989-01-16'),
    ("Adamastor", "93.325.874-1", '1971-05-03'),
    ("Silvia", "98.765.432-1", '1965-09-07');


insert into Aluno (nomeAluno, cpf, sexo) values
	("Zimbertino Terto", "407.687.458-88", "M"),
    ("Cleubelia Amaral", "254.987.524-00", "F"),
    ("Aluzinia Souza", "348.987.604-08", "F"),
    ("Carnabrando Pedroso", "987.654.321-00", "M");

insert into Disciplina (nomeDisciplina, carga, Professor_idProfessor) values
	("Português", "180", "1"),
    ("Matematica", "180", "2"),
    ("Fisíca", "30", "3"),
    ("Artes", "15", "4")
;

insert into Curso (dataRegistro, Disciplina_idDisciplina, Aluno_idAluno) values
	('2018-04-26', "1", "1"),
    ('2019-01-17', "2", "2"),
    ('2011-05-03', "3", "2"),
    ('2015-09-07', "4", "3");


#REALIZANDO AS ALTERAÇÕES CONFORME O CLIENTE MANDOU

alter table Professor rename tbl_Professor;
alter table Disciplina rename tbl_Disciplina;
alter table Curso rename tbl_Curso;
alter table Aluno rename tbl_Aluno;

alter table tbl_Professor modify rg varchar(15) not null;
alter table tbl_Professor modify nascimento date not null;
alter table tbl_disciplina change carga cargaHoraria varchar(45) not null;
alter table tbl_Aluno change cpf rg varchar(45) not null;

#Fazendo as consultas
# 1-questão
select * from tbl_Disciplina where nomeDisciplina like '%a';

# 2-questão
select * from tbl_Aluno where nomeAluno like '%a%';

# 3-questão
select * from tbl_Curso;
select count(Disciplina_idDisciplina) as 'Quantidade de cursos' from tbl_Curso group by Aluno_idAluno;

# 4-questão
delete from tbl_aluno where idAluno = 4 ;

# 5-questão
alter table tbl_Curso modify dataRegistro timestamp default now();

