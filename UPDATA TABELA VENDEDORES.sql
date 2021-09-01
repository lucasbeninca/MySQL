USE SUCOS;

UPDATE tb_vendedores SET PERCENTUAL_COMISSAO = 0.11
WHERE MATRICULA = '00236';

UPDATE tb_vendedores SET NOME = 'José Geraldo da Fonseca Junior'
WHERE MATRICULA = '00233';

select * FROM tb_vendedores;