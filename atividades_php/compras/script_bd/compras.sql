create database compras;

use compras;

create table usuarios(
	id_usuario int not null auto_increment primary key,
    usuario varchar(15) not null,
    senha varchar(10) not null,
    dtcria datetime default now(),
    estatus varchar(1) default ''
);

insert into usuarios(usuario, senha) values ('admin', 'adm123');