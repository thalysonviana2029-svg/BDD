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