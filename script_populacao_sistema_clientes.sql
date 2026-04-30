-- cliente

insert into CLIENTE(nome_cliente, email_cliente)
values
('Joao matosso', 'joao@gmeil.com'),
('Jorge matosso', 'jorge@gmail.com');

-- produtos

insert into PRODUTO (nome_produto, preco_produto)
values
('Batom', '56.00'),
('Pao' , '16.75');

-- vendas

insert into VENDA (data_venda, id_cliente)
values 
('2025-01-01', 1),
('2024-05-05', 2);

-- item_venda

insert into ITEM_VENDA(id_venda, id_produto, quantidade_item, preco_unitario)
values
(1, 2, 23, '56.00'),
(2, 3 , 44, '16.75');

