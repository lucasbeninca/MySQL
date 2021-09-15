select max(quantidade) as maior_quatidade from itens_notas_fiscais 
where CODIGO_DO_PRODUTO = 1101035;

select count(*) from itens_notas_fiscais
where CODIGO_DO_PRODUTO = 1101035 and quantidade = 99;
