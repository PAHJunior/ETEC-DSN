
use bd_vendas;
insert into tbl_produto
(nome_produto, desc_produto, unid_medida, estoque_atual, estoque_min, estoque_max, valor) values
('Arroz', 'Arroz agulhinda tipo 1', 'SC', 10, 2, 20, 12.50),
('Feijão', 'Feijão carioquinha com casca', 'SC', 25, 5, 60, 7.50),
('Macarrão', 'Macarrão adria espaguete', 'PC', 50, 10, 80, 5.50),
('Óleo', 'Óleo Lisa', 'LT', 15, 10, 45, 6.50),
('Vínagre', 'Vinagre Castelo', 'GR', 30,10,50,7.89),
('Batata', 'Batata lavada', 'KG', 100,50,200,4.50),
('Tomate', 'Tomate vermelho', 'KG', 50,5,100,6.99),
('Leite', 'Leite Leco', 'CX', 25,10,90,2.50),
('Café', 'Café do ponto', 'SC', 500, 100,200,11.50);

insert into tbl_cliente
(nome_cliente, cpf, data_nasc, cep, numero, complemento) values
('Marcos Costa de Sousa', '12345678901', '1981-02-06', 6768100, '1525', 'apto 166C'),
('Zoroastro Zoando', '01987654321', '1989-06-15', 6757190, '250', ''),
('Idelbrandolâncio Silva', '54698721364', '1974-09-27', 6753001, '120', ''),
('Cosmólio Ferreira', '41368529687', '1966-12-01', 6753020, '25', 'apto 255 F'),
('Conegunda Prado', '54781269501', '1950-10-06', 6753020, '50', 'apto 166C'),
('Brogundes Asmônio', '41256398745','1940-05-10',6753400, '100', ''),
('Iscruência da Silva', '12457965823', '1974-11-25', 6803040, '5', ''),
('Zizafânio Zizundo', '54123698562', '1964-08-14', 6803140, '25', ''),
('Ricuerda Zunda', '21698534589','1934-10-14', 6803045, '123', ''),
('Aninoado Zinzão', '25639856971', '1976-12-15', 6803070, '50', ''); 

insert into tbl_pedido
(data_pedido, data_entrega, cod_cliente) values
('2019-08-02', '2019-08-20', 1),
('2019-04-23', '2019-05-20', 2),
('2019-02-14', '2019-03-20', 3),
('2019-07-17', '2019-08-10', 4),
('2019-01-11', '2019-04-02', 7);

insert into tbl_itempedido
(qtde, i_cod_pedido, i_cod_produto, i_valor) values
(2, 1, 1, 2),
(2, 2, 1, 2),
(3, 3, 1, 3),
(1, 4, 1, 1),
(4, 5, 1, 4),

(2, 1, 2, 2),
(2, 2, 2, 2),
(3, 3, 2, 3),
(1, 4, 2, 1),
(4, 5, 2, 4),

(2, 1, 6, 2),
(2, 2, 6, 2),
(3, 3, 6, 3),
(1, 4, 6, 1),
(1, 5, 6, 4);

select * from tbl_itempedido;