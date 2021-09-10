use sucos_vendas;

select estado, SUM(limite_de_credito) as LIMITE_TOTAL
from tabela_de_clientes GROUP BY ESTADO;

select embalagem, MAX(preco_de_lista) as MAIOR_PRECO from tabela_de_produtos
GROUP BY EMBALAGEM;

select embalagem, COUNT(*) AS CONTADOR from tabela_de_produtos 
GROUP BY EMBALAGEM;

select bairro, SUM(limite_de_credito) as limite from tabela_de_clientes
where cidade = 'Rio de Janeiro' GROUP BY bairro;

