USE SUCOS;

UPDATE tb_produtos SET EMBALAGEM ='LATA', PRECO_LISTA = 2.46
WHERE PRODUTO = '544931';

UPDATE tb_produtos SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';

SELECT * FROM tb_produtos;