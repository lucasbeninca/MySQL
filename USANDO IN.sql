use sucos_vendas;

select * from itens_notas_fiscais;

select * from tabela_de_clientes where cidade in ('São Paulo', 'Rio de Janeiro') 
and (idade > 16 and idade < 22);

select * from tabela_de_clientes where nome like '%mattos';

