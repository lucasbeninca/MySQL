select * from tabela_de_vendedores;
select * from notas_fiscais;
select * from notas_fiscais where matricula = 00238;

select * from tabela_de_vendedores alias_vendedores
inner join notas_fiscais alias_notas
on alias_vendedores.matricula = alias_notas.matricula;

SELECT alias_vendedores.matricula, alias_vendedores.nome, count(*)
from tabela_de_vendedores alias_vendedores
inner join notas_fiscais alias_notas
on alias_vendedores.matricula = alias_notas.matricula
group by alias_vendedores.matricula, alias_vendedores.nome;