-- ATIVIDADE UPDATE

-- Exercício 01

"Não é possível fazer o exercício, pois o email está com UNIQUE KEY"

-- Exercício 02

UPDATE cliente
SET data_cadastro = "2026-01-01"
WHERE cidade IN ("Manaus");

-- Exercício 03 

UPDATE cliente
SET nome_cliente = "Michael Jackson"
WHERE id_cliente = 10;

-- Exercício 04

UPDATE produto
SET nome_produto = "Notebook Lenovo IdeaPad 7"
WHERE id_produto = 1;

-- Exercício 05

UPDATE produto
SET preco_unitario = "4999.99"
WHERE marca IN ("DELL");

-- Exercício 06

UPDATE venda
SET desconto_percentual = "0.01"
WHERE quantidade = 2;