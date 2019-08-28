create database db_vendas;

use db_vendas;

create table tbl_produto (
	cod_produto   int unsigned auto_increment,
    nome_produto  varchar(100) not null,
    desc_produto  varchar(100) not null,
    unid_medida   varchar(2) not null,
    estoque_atual int default 0,
    estoque_min   int default 0,
    estoque_max   int default 0,
    valor         decimal(10,2) not null,
    primary key (cod_produto)
);


create table tbl_endereco (
	id int(10) not null,
    cep int(9) not null,
    logradouro varchar(90) not null,
    bairro varchar(50) not null,
    cidade varchar(50) not null,
    estado char(2) not null,
    
    constraint pk_endereco primary key (cep)
);


create table tbl_cliente (
	cod_cliente int unsigned auto_increment,
    nome_cliente varchar(45) not null,
    cpf varchar(11) default '',
    data_nasc date,
    cep int(9) default 0,
    numero varchar(10) default '',
	complemento varchar(20) default '',
	primary key (cod_cliente),
    constraint foreign key fk_clincep (cep) references tbl_enderecos(cep)
    
);


create table tbl_endereco(
	id_endereco int primary key auto_increment, 
    cep varchar(10),
    logradouro varchar(50)

);


create table tbl_pedidos(
	cod_pedido varchar(20),
    data_pedido date,
    data_entrega date
);

produto