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