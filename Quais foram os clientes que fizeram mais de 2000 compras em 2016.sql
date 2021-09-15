select cpf, count(*) from notas_fiscais
where year(data_venda) = 2016
group by cpf
having count(*) > 2000;

