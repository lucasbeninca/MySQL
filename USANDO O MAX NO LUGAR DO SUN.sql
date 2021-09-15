use sucos_vendas;

select  max(quantidade) as Maior from itens_notas_fiscais
where codigo_do_produto = '1101035';

