CREATE DATABASE atv_senai;

USE atv_senai;

CREATE TABLE cliente (
id_cliente INT PRIMARY KEY,
nome_cliente NOT NULL VARCHAR(30),
email VARCHAR(40),
telefone INT VARCHAR(10)

);

USE atv_senai;

CREATE TABLE produto (
id_produto INT PRIMARY KEY,
id_preco INT,
nome_produto NOT NULL VARCHAR(30),
email VARCHAR(40),
quantidade INT,
telefone INT NUMBER

);

USE atv_senai;

CREATE TABLE vendas (
id_vendas INT PRIMARY KEY,
nome_cliente NOT NULL VARCHAR(100),
nome_produto NOT NULL VARCHAR(30),
quantidade INT

);