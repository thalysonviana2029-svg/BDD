-- ATIVIDADE READ

-- Exercício 01 

SELECT * FROM produto;

-- Exercício 02

SELECT nome_produto, categoria, marca, estoque FROM produto;

-- Exercício 03

SELECT nome_produto, categoria, preco_unitario, data_cadastro
FROM produto
ORDER BY marca ASC; 

-- Exercício 04

SELECT nome_produto, categoria, preco_unitario, data_cadastro
FROM produto
ORDER BY data_cadastro ASC; 

-- Exercício 05

SELECT * FROM cliente;

-- Exercício 06

SELECT nome_cliente, email, cidade, estado FROM cliente;

-- Exercício 07

SELECT nome_cliente,cidade, estado
FROM cliente
ORDER BY estado ASC; 

-- Exercício 08

SELECT nome_cliente,cidade, estado
FROM cliente
ORDER BY estado DESC; 

-- Exercício 09

SELECT * FROM venda;

-- Exercício 10

SELECT cliente.nome_cliente, venda.data_venda, venda.preco_unitario_venda, venda.forma_pagamento
FROM cliente
INNER JOIN venda
ON cliente.id_cliente = venda.id_cliente;

-- Exercício 11

SELECT produto.nome_produto, venda.data_venda, venda.quantidade, venda.status_venda
FROM produto
INNER JOIN venda
ON produto.id_produto = venda.id_produto;

-- Exercício 12

SELECT produto.nome_produto, produto.preco_unitario, venda.forma_pagamento
FROM produto
INNER JOIN venda
ON venda.id_produto = produto.id_produto
WHERE venda.forma_pagamento IN ("PIX", "Boleto");

-- Exercício 13

SELECT cliente.nome_cliente, produto.nome_produto, venda.data_venda, venda.quantidade
FROM venda
INNER JOIN cliente
ON cliente.id_cliente = cliente.id_cliente
INNER JOIN produto
ON venda.id_produto = produto.id_produto;

-- Exercício 14

SELECT produto.nome_produto, venda.desconto_percentual, venda.forma_pagamento, venda.data_venda
FROM produto
INNER JOIN venda
ON venda.id_produto = produto.id_produto
ORDER BY venda.data_venda DESC;


-- Exercício 15

SELECT produto.nome_produto, cliente.nome_cliente, venda.desconto_percentual, venda.forma_pagamento
FROM produto
INNER JOIN venda
ON venda.id_venda = produto.id_produto
INNER JOIN cliente
ON cliente.id_cliente = venda.id_cliente
ORDER BY venda.status_venda ASC;

-- Exercício 16

SELECT cliente.nome_cliente, cliente.email, produto.nome_produto, produto.marca, produto.categoria, 
venda.forma_pagamento, venda.status_venda
FROM produto
INNER JOIN cliente ON produto.id_produto = cliente.id_cliente
INNER JOIN venda ON venda.id_cliente = venda.id_produto
WHERE venda.status_venda IN ("Concluída", "Cancelada")
ORDER BY venda.status_venda DESC;

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

ATIVIDADE DELETE

-- Exercício 01

DELETE FROM cliente
WHERE id_cliente = 5;

-- Exercício 02

DELETE FROM cliente
WHERE estado = SC;

-- Exercício 03

DELETE FROM produto
WHERE 

ATIVIDADE INSERT

-- Exercício 01

INSERT INTO cliente (nome_cliente, email, cidade, estado, data_cadastro)
VALUES ("Rubervaldo Sesiano", "ruber.sesi@gmail.com", "Jaguariúna", "SP", CURDATE());

-- Exercício 02

INSERT INTO produto (nome_produto, categoria, marca, preco_unitario, estoque, ativo, data_cadastro)
VALUES ("MousePad 5POL", "Acessórios", "Lumix", 59.98, 35, 1, CURDATE());

-- Exercício 03
INSERT INTO venda (
    id_produto,
    id_cliente,
    data_venda,
    quantidade,
    preco_unitario_venda,
    desconto_percentual,
    forma_pagamento,
    status_venda
)
VALUES (
    (SELECT id_produto FROM produto WHERE nome_produto = "MousePad 5POL" LIMIT 1),
    (SELECT id_cliente FROM cliente WHERE nome_cliente = "Rubervaldo Sesiano" LIMIT 1),
    "2026-10-21",
    10,
    59.98,
    1.33,
    "PIX",
    "Concluída"
);
