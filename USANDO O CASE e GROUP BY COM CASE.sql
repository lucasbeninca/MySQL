select nome_do_produto, preco_de_lista,
case
	when preco_de_lista >= 12 then 'CARO'
    when preco_de_lista >= 7 and preco_de_lista < 12 then 'EM CONTA'
    else 'BARRATO'
end as STATUS_PRECO
from tabela_de_produtos;

select embalagem, preco_de_lista,
case
	when preco_de_lista >= 12 then 'CARO'
    when preco_de_lista >= 7 and preco_de_lista < 12 then 'EM CONTA'
    else 'BARRATO'
end as STATUS_PRECO, avg(PRECO_DE_LISTA) as preco_medio
from tabela_de_produtos 
group by embalagem, status_preco;
