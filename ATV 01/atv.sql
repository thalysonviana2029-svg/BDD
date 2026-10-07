CREATE DATABASE atv_senai;

USE atv_senai;

CREATE TABLE cliente (
id_cliente INT PRIMARY KEY,
nome_cliente VARCHAR(30),
email VARCHAR(40),
telefone VARCHAR(20) NOT NULL

);

USE atv_senai;

CREATE TABLE produto (
id_produto INT PRIMARY KEY,
preco NUMBER(10),
nome_produto VARCHAR(30),
quantidade INT,
telefone VARCHAR(20) NOT NULL

);

USE atv_senai;

CREATE TABLE vendas (
id_vendas INT PRIMARY KEY,
id_cliente INT, 
id_produto INT,
quantidade INT,
dt_venda DATE NOT NULL

);

USE atv_senai;

INSERT INTO cliente (id_cliente, nome_cliente, email, telefone)
VALUES (1, "Jansen Leite", "jansen.leite@example.com", "19986543210");

INSERT INTO cliente (id_cliente, nome_cliente, email, telefone)
VALUES (2, "Luis Fernando", "luis.fernando@example.com", "19987771214");

INSERT INTO cliente (id_cliente, nome_cliente, email, telefone)
VALUES (3, "Tania Silva", "tania.silva@example.com", "19988881215");


ALTER TABLE cliente
ADD CONSTRAINT uk_cliente_unico UNIQUE (email);

USE atv_senai;

INSERT INTO produto (id_produto, preco, nome_produto, quantidade, telefone)
VALUES (1, 5500.00, "Notebook", 10, "19987654321");

INSERT INTO produto (id_produto, preco, nome_produto, quantidade, telefone)
VALUES (2, 6000.00, "Geladeira", 20, "19983457856");

INSERT INTO produto (id_produto, preco, nome_produto, quantidade, telefone)
VALUES (3, 13000.00, "Iphone 18", 7, "19987654321");

ALTER TABLE produto
ADD CONSTRAINT uk_produto_unico UNIQUE (nome_produto);

USE atv_senai;

INSERT INTO vendas (id_vendas, id_cliente, id_produto, quantidade, dt_venda)
VALUES (1, 1, 1, 1, '2023-01-01');

INSERT INTO vendas (id_vendas, id_cliente, id_produto, quantidade, dt_venda)
VALUES (2, 2, 2, 1, '2023-01-02');

INSERT INTO vendas (id_vendas, id_cliente, id_produto, quantidade, dt_venda)
VALUES (3, 3, 3, 2, '2023-01-03');

ALTER TABLE vendas
ADD CONSTRAINT uk_vendas_unico UNIQUE (id_cliente);

ALTER TABLE vendas
ADD CONSTRAINT fk_vendas_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto);
