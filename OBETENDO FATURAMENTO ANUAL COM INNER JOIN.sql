use sucos_vendas;

select year(DATA_VENDA), sum(quantidade * preco) as FATURAMENTO
from notas_fiscais nf INNER JOIN itens_notas_fiscais itens_nf
ON nf.NUMERO = itens_nf.numero
group by year(data_venda);
