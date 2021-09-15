select EMBALAGEM, sum(PRECO_DE_LISTA) as preco_lista
from tabela_de_produtos group by EMBALAGEM 
having sum(PRECO_DE_LISTA) >= 20;


select embalagem, max(preco_de_lista) as Maior_Preco, 
min(preco_de_lista) as menor_preco from tabela_de_produtos
group by EMBALAGEM having sum(PRECO_DE_LISTA) <= 80 and max(PRECO_DE_LISTA) >= 5;