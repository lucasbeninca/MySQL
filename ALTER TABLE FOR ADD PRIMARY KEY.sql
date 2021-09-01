USE SUCOS;

ALTER TABLE tb_produtos ADD primary key(PRODUTO);

INSERT INTO tb_produtos (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('10786280', 'Frescor do Verão - 480 ml - maça', 'Lata', '470 ml','maça',5.18);

UPDATE tb_produtos SET EMBALAGEM = 'Garrafa' WHERE PRODUTO = '1078680';