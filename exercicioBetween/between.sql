-- Exercício 01

SELECT * FROM produto 
WHERE data_cadastro 
BETWEEN "2024-03-01" AND "2024-03-31";

-- Exercício 02

SELECT produto.nome_produto, produto.marca, produto.estoque,produto.data_cadastro 
FROM produto
WHERE produto.data_cadastro BETWEEN "2024-01-01" AND "2024-03-31";

-- Exercício 03

SELECT * FROM cliente 
WHERE data_cadastro 
BETWEEN "2023-01-01" AND "2023-01-31";

-- Exercício 04

SELECT cliente.nome_cliente, cliente.email, cliente.cidade, cliente.estado, cliente.data_cadastro
FROM cliente
WHERE cliente.data_cadastro BETWEEN "2023-06-01" AND "2023-06-15";

-- Exercício 05

SELECT * FROM venda
WHERE data_venda
BETWEEN "2025-05-01" AND "2025-05-31";

-- Exercício 06

SELECT cliente.nome_cliente, venda.data_venda, venda.preco_unitario_venda, venda.forma_pagamento
FROM venda
INNER JOIN cliente 
ON venda.id_cliente = cliente.id_cliente
WHERE venda.data_venda BETWEEN "2025-12-24" AND "2026-01-15"
ORDER BY venda.preco_unitario_venda DESC;

-- Exercício 07

SELECT cliente.nome_cliente, cliente.email, produto.nome_produto, produto.marca,
produto.categoria, venda.forma_pagamento, venda.data_venda, venda.status_venda
FROM cliente
INNER JOIN produto
ON produto.id_produto = cliente.id_cliente
INNER JOIN venda
ON venda.id_cliente = cliente.id_cliente
WHERE venda.status_venda IN ("Cancelada", "Concluída") 
AND venda.data_venda BETWEEN "2025-12-01" AND "2025-12-31"
ORDER BY venda.status_venda ASC;
