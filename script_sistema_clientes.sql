create database SISTEMA_CLIENTES;
use SISTEMA_CLIENTES;

create table CLIENTE(
id_cliente int auto_increment primary key,
nome_cliente varchar (100) not null,
email_cliente varchar(30) not null unique
);

create table PRODUTO(
id_produto int auto_increment primary key,
nome_produto varchar (100) not null,
preco_produto decimal(5,2) not null
);

create table VENDA(
id_venda int auto_increment primary key,
data_venda date not null,
id_cliente int,
foreign key(id_cliente) references CLIENTE(id_cliente)
);

create table ITEM_VENDA(
id_venda int,
id_produto int,
quantidade_item int not null,
preco_unitario decimal(5,2) not null,
primary key(id_venda, id_produto),
foreign key (id_venda) references VENDA(id_venda),
foreign key (id_produto) references PRODUTO(id_produto)
);