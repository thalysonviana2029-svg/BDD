-- EXEMPLOS

-- "A%" - Inicia com A
-- "%A" - Termina com A
-- "%Jose%" - Contém Jose

-- Exercício 01

SELECT * FROM produto WHERE nome_produto LIKE "D%";

-- Exercício 02

SELECT * FROM produto WHERE nome_produto LIKE "%E" OR marca LIKE "%E" OR estoque LIKE "%E";

-- Exercício 03

SELECT * FROM produto WHERE nome_produto LIKE "%GAMER%" OR marca LIKE "%GAMER%" OR preco_unitario LIKE "%GAMER%";

-- Exercício 04

SELECT * FROM cliente WHERE nome_cliente LIKE "%Barbosa%"; 

-- Exercício 05

SELECT cliente.nome_cliente, venda.data_venda, venda.preco_unitario_venda, venda.forma_pagamento
FROM cliente 
INNER JOIN venda
ON cliente.id_cliente = venda.id_cliente 
WHERE nome_cliente LIKE "C%";

-- Exercício 06

SELECT produto.nome_produto, produto.preco_unitario, venda.id_venda, venda.forma_pagamento
FROM produto
INNER JOIN venda
ON produto.id_produto = venda.id_produto
WHERE venda.forma_pagamento IN ("PIX", "Boleto") 
AND produto.nome_produto LIKE "%Polegada%";

-- Exercício 07

SELECT produto.nome_produto, cliente.nome_cliente, venda.desconto_percentual, venda.forma_pagamento
FROM produto
INNER JOIN venda
ON produto.id_produto = venda.id_produto
INNER JOIN cliente
ON cliente.id_cliente = venda.id_cliente
WHERE produto.nome_produto LIKE "%Placa%" AND produto.nome_produto LIKE "%Notebook%" 
OR cliente.nome_cliente LIKE "%Ana%"
ORDER BY venda.status_venda ASC; 
