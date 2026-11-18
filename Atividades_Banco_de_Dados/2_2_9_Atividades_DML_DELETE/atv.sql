ATIVIDADE DELETE

-- Exercício 01

DELETE FROM cliente
WHERE id_cliente = 5;

-- Exercício 02

DELETE FROM cliente
WHERE estado = SC;

-- Exercício 03

DELETE FROM produto
WHERE marca = "LG";

-- Exercício 04

DELETE FROM produtos
WHERE id_produtos in(3, 5, 0);

-- Exercício 05

DELETE FROM vendas
WHERE desconto = 0;

-- Exercício 06

DELETE FROM vendas
WHERE status = "Cancelada";
