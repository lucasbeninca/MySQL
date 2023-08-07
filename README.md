# MySQL


**CREATE**
- create table nome_da_tabela (id int,campos float, nome varchar(50), cpf float, primeira_compra bit, data_nascimento date);

**INSERT**
- insert into nome_da_tabela (campos, nome, cpf etc...) values ('teste', 'lucas beninca', 0851822222);

**UPDATE**

- update table nome_da_tabela set campos = 10, nome = 'lucas beninca', cpf = 085xxxxxxxx, primeira_compra = 0, data_nascimento = 'xx-xx-xxxx'
where  id = 2; 

**DELETE**

- delete from nome_da_tabela where identificador = 'valor_do_identificador';

**ADICIONAR PRIMARY KEY A UMA TABELA**

- alter table nome_da_tabela add primary key (campo_que_sera_chave_primaria);

**ADICIONAR COLUNA NA TABLEA**
- alter table nome_da_tabela add column (nome_campo tipo{float});

**REMOVER UMA COLUNA DA TABLEA**
- alter tale base.nome_tabela drop column nome_campo;

**LIMITANDO A SAÍDA DOS CAMPOS**
- select cpf, nome from tbcliente limit 5; /* o limit limita o número deresultados*/

**CRIANDO UM ALIAS**
- select CPF as CPF_Cliente, nome as nome_cliente from tbcliente; /*alias para as colunas  */

**OPERADORES LÓGICOS NO SQL**
- select * from nome_tabela where preco_lista > 10;
  - operador > maior que o que estiver a direita
  - operador < menor que o que estiver a direita
  - ou >= maior igual que o que estiver a direita
  - e <= menor igual que o que estiver a direita
  - = que o que estiver a direira
  - <> diferente que o que estiver a direita
- *O MYSQL não consegue usar os operadores como = <> ou >=, <= para campos do tipo FLOAT*, necessário utilizar o **BETWEEN**: select * from nome_tablea where preco_lista BETWEEN 10 AND 12; retorna os valores entre 10 e 12, assim podemos listar campos de ponto flutuante.

**CONTROLE DE DATAS**
- para listar datas podemos usar os operadores lógicos citados acima e as seguintes condições no *select*: YEAR, MONTH o YEAR é uma função que pega o ano de uma data e retorna um numero inteiro, o mesmo é usado da seguinte forma select * from nome_tabela WHERE YEAR(campo_data) = 1995, o MONTH faz a mesma coisa porem com o mês e deve ser usado assim: SELECT * FROM nome_tabela WHERE MONTH(campo_data) = 10; 

**USO DE FILTROS *AND* e *OR***
- Podeos utilizar os filtros de  AND, ou seja levarem conta duas condições como *WHERE (idade >= 18 and idade <= 22 and sexo = 'M');* e juntar o resultado disto com outra condição, usando o *OR* então teriamos: *WHERE (idade >= 18 and idade <= 22 and sexo = 'M')
or (cidade = 'Rio de Janeiro' or bairro = 'Jardins');*, onde isto nos traria, os resultados de cadastros de clientes com idade entre 18 e 22 anos que sejam do sexo maisculino ou, entre estes, que moram na cidade de Rio de Janeiro, ou no bairro jardins; **OU SEJA IDADE ENTRE 18 E 22 ANOS E SEXO MASCULINO, OU MORAM NO RIO OU NO BAIRRO JARDINS**.

**IN**
- O IN pode ser utilizado no lugar do or, por exemplo em vez de fazer SELECT * FROM nome_table WHERE cidade = 'xx' OR cidade ='xx'; eu posso fazer SELECT * FROM nome_tabela WHERE cidade in('xx','xxx');

**LIKE**
- SELECT * FROM nome_tabela WHERE nome LIKE '%xxxx%'; o % é utilizado como um * para representar qualquer registro genérico.
- quando colocamos algo entre '%algum_registro_que_quero_buscar%' o mySQL retorna tudos os registros que tem aquele registro, como por exemplo '%Beninca%' o mySQL vai retornar todos os nomes que tem Beninca em alguma parte dele.
- quando colocamos '%Beninca' o mySQl vai retornar apenas os registros que possuem Beninca no final do nome.

**DISTINCT**
- DISTINCT é usado para trazer os registros diferentes, SELECT DISTINCT * FROM nome_tabela.

**ORDER BY**
- ORDER BY é utilizado para ordenar o resultado do select, SELECT * FROM nome_tabela ORDER BY campo, se eu usar o DESC no final a ordenaçao é de forma decresendte. do maior para o menor.

**GROUP BY AND SUM,MAX,MIN,AVG,COUNT**
- podemos usar o GROUP BY para agrupar resultados iguais em uma tabela, SELECT campo FROM nome_tabela GROUP BY campo;
- por exemplo em uma tabela ondetesmo os seguintes registros : 

| X  |  Y  |
| ------------------- | ------------------- |
| A | 2 |
| A | 1 |
| B | 2 |
| B | 3 |
| B | 1 |

- se utilizarmos o SUM da seguinte forma SELECT x, SUM (y) FROM nome_tabela GROUP BY x; , teremos o seguinte resultado

| X  |  Y  |
| ------------------- | ------------------- |
| A | 3 |
| B | 6 |

- ou seja o mySQL vai agrupar os valores iguais da coluna X no caso A e B e vai somar os valores da coluna Y 
- ALEM DO *(SUM)* TEMOS: 

| OPERADORES | FUNÇÃO |
| ------------------- | ------------------- |
| SUM  | SOMA |
| MAX | TRAZ O MAIOR NÚMERO |
| MIN | TRAZ O MENOR NÚMERO |
| AVG | TRAZ A MÉDIA DOS NÚMEROS |
| COUNT | CONTA AS OCORRÊNCIAS no caso da tabela a cima o A teria 2 na coluna Y e o B teria 3 na coluna Y  |

----------------------------------------------------------------------------------------------------------------

**DISTINCT**
- SELECT DISTINCT * FROM nome_tabela; o DISTINCT retorna apenas as linhas que são diferentes, ou seja apenas uma linha com cada combinação de valor, não retornando, linhas com combinações iguáis.

**LIMIT**
- Podemos utilizar o limit para limitar a saída de registros na tabela, da seguinte forma SELECT * FROM nome_tabela LIMIT 5;
- desta forma como pode ser visto acima o MySQL vai retornar apenas os 5 primeiros registros da tabela, se quisermos, trazer mais registros do meio da tabela podemos usar da seguinte forma SELECT * FROM nome_tabela LIMIT 5,2; ou seja o MySQL vai trazer 2 registros apartir do 5 registro da tabela incluindo o 5 registro.

**HAVING**

- o HAVING é uma condição de filtro utilizada para filtra o resultado de uma agregação, como por exemplo o resultado de um GROUP BY, SELECT campo, SUM(campo) FROM nome_tabela GROUP BY campo HAVING SUM(campo); tendo a seguinte tabela:

| X  |  Y  |
| ------------------- | ------------------- |
| A | 2 |
| A | 1 |
| B | 2 |
| B | 3 |
| B | 1 |

- Ao fazer O SUM, SELECT campo(x), SUM(Y) FROM nome_tabela GROUP BY campo (X);  vou ter:

| X  |  Y  |
| ------------------- | ------------------- |
| A | 3 |
| B | 6 |

- E se eu quiser apenas os resultados maiores que 5 eu fasso: SELECT campo(x), SUM(Y) FROM nome_tabela GROUP BY campo (X) HAVING SUM(Y) > 5;
- então eu teria o seguinte resultado:

| X  |  Y  |
| ------------------- | ------------------- |
| B | 6 |

**CASE**

- Muito parecido com um IF em programação, mas utilizado para caso determinado resultado apareça o SQL deve apresentar tal valor, exemplo caso valor maior que 5 mostrar produto caro, EXEMPLO de SYNTAXY:
  
  
      select campo, campo2,
        case
	      when campo >= 12 then 'CARO'
              when campo >= 7 and campo < 12 then 'EM CONTA'
        else 'BARRATO'
      end as STATUS_PRECO
      from nome_tabela;
      
      
- podemos também juntar outros comandos com o CASE  e ter um select mais complexo : 

		select embalagen, preco_de_lista,
		case
		    when preco_de_lista >= 12 then 'CARO'
		    when preco_de_lista >= 7 and preco_de_lista < 12 then 'EM CONTA'
		    else 'BARRATO'
		end as STATUS_PRECO, avg(PRECO_DE_LISTA) as preco_medio
		from tabela_de_produtos 
		group by embalagem,
		case
		    when preco_de_lista >= 12 then 'CARO'
		    when preco_de_lista >= 7 and preco_de_lista < 12 then 'EM CONTA'
		    else 'BARRATO'
		end;
--------------------------------------------------------------------------------------------------------------

- PASSANDO O ALIAS DO CASE NO LUGAR DO CASE:

		select embalagen, preco_de_lista,
		case
		    when preco_de_lista >= 12 then 'CARO'
		    when preco_de_lista >= 7 and preco_de_lista < 12 then 'EM CONTA'
		    else 'BARRATO'
		end as STATUS_PRECO, avg(PRECO_DE_LISTA) as preco_medio
		from tabela_de_produtos 
		group by embalagem, status_preco;
		
		
		
- No lugar de passar o CASE novamente no GROUP BY eu posso passar o ALIAS dele ou seja STATUS_PRECO, desta forma eu estou mantenho o agrupamento por embalagem e pelo novo campo criado o CASE e chamado de (STATUS_PRECO), se eu fizer o GROUP BY e não passar o CASE, ou seu ALIAS no GROUP BY o MySQL vai apenas irá mostrar o resultado considerando o agrupamento por embalagem resultando em uma consulta com apenas os 3 primeiros registros OU SEJA: (um registro com GARRAFA um com PET e um com LATA, e a respectiva média dos valores destes produtos.

**JOIN's**
- *INNER JOIN* usado para fazer um select, com campos de duas ou mais tabelas:

		SELECT ALIAS.nome, ALIAS.hobby FROM
		tabela_esquerda ALIAS
		INNER JOIN tabela_direita ALIASb
		ON ALIAS.identificador = aliasb.identificador;
		// o identificador é o campo que ambas as tabelas tem em comum.
		
| NOME |  IDENTIFICADOR  | X | IDENTIFICADOR | HOBBY |
| ------------------- | ------------------ | ------------------ | ----------------- | ------------------ | 
| JOÃO | 1 | - | 1 | PRAIA |
| MARIA | 3 | - | 3 | FUTEBOL |
| PEDRO | 4 | - | 5 | FOTOGRAFIA |
| CLÁUDIA | 5 | - | 8 | ARTESABATO |

- O resultado do INNER JOIN destas duas tabelas é:

| NOME  | HOBBY  |
| ------------------- | ------------------- |
| JOÃO | PRAIA |
| PRAIA | FUTEBOL |


- *LEFET JOIN* usado para trazer todos os campos da tabela a esquerda e apenas os campos que tem alguma correspondência, os demais campos sem correspondência da tabela da direita vem como NULL.

		SELECT ALIAS.NOME ALIASb.HOBBY FROM tabela_esquerda ALIAS
		LEFT JOIN tabela_direita ALIAS
		ON ALIAS.IDENTIFICADOR = ALIASb.IDENTIFICADOR;
		
		
| NOME |  IDENTIFICADOR  | X | IDENTIFICADOR | HOBBY |
| ------------------- | ------------------ | ------------------ | ----------------- | ------------------ | 
| JOÃO | 1 | - | 1 | PRAIA |
| MARIA | 3 | - | 3 | FUTEBOL |
| PEDRO | 4 | - | 5 | FOTOGRAFIA |
| CLÁUDIA | 5 | - | 8 | ARTESABATO |

- O resultado do LEFT JOIN destas duas tabelas é:

| NOME  | HOBBY  |
| ------------------- | ------------------- |
| JOÃO | PRAIA |
| MARIA | FUTEBOL |
| PEDRO | NULL |
| CLÁUDIA | NULL |
		
		

- *RIGHT JOIN* faz o mesmo que o LEFT JOIN, mas traz todos os campos databela a direita e apenas os que tem corrensponência da tabela da esquerda e os demais traz como NULL.

		SELECT ALIAS.NOME ALIASb.HOBBY FROM tabela_esquerda ALIAS
		RIGHT JOIN tabela_direita ALIAS
		ON ALIAS.IDENTIFICADOR = ALIASb.IDENTIFICADOR;
		
| NOME |  IDENTIFICADOR  | X | IDENTIFICADOR | HOBBY |
| ------------------- | ------------------ | ------------------ | ----------------- | ------------------ | 
| JOÃO | 1 | - | 1 | PRAIA |
| MARIA | 3 | - | 3 | FUTEBOL |
| PEDRO | 4 | - | 5 | FOTOGRAFIA |
| CLÁUDIA | 5 | - | 8 | ARTESABATO |		
		
- O resultado do RIGHT JOIN destas duas tabelas é:

| NOME  | HOBBY  |
| ------------------- | ------------------- |
| JOÃO | PRAIA |
| MARIA | FUTEBOL |
| NULL | FOTOGRAFIA |
| NULL | ARTESANATO |

- *FULL JOIN* Retorna todos os registros de todas as tabelas da com ou sem correspondência.

		SELECT ALIAS.NOME ALIASb.HOBBY FROM tabela_esquerda ALIAS
		FULL JOIN tabela_direita ALIAS
		ON ALIAS.IDENTIFICADOR = ALIASb.IDENTIFICADOR;
		
| NOME |  IDENTIFICADOR  | X | IDENTIFICADOR | HOBBY |
| ------------------- | ------------------ | ------------------ | ----------------- | ------------------ | 
| JOÃO | 1 | - | 1 | PRAIA |
| MARIA | 3 | - | 3 | FUTEBOL |
| PEDRO | 4 | - | 5 | FOTOGRAFIA |
| CLÁUDIA | 5 | - | 8 | ARTESABATO |
	
- O resultado do FULL JOIN destas duas tabelas é:

| NOME  | HOBBY  |
| ------------------- | ------------------- |
| JOÃO | PRAIA |
| MARIA | FUTEBOL |
| PEDRO | NULL |
| CLÁUDIA | NULL |
| NULL | FOTOGRAFIA |
| NULL | ARTESANATO |

- *CROSS JOIN* O CROSS JOIN faz um produto carteseano de todas as relações.

       SELECT ALIAS.nome, aliasb.HOBBY FROM
       tabela_esquerda ALIAS, tabela_direita ALIASb
       
| NOME |  IDENTIFICADOR  | X | IDENTIFICADOR | HOBBY |
| ------------------- | ------------------ | ------------------ | ----------------- | ------------------ | 
| JOÃO | 1 | - | 1 | PRAIA |
| MARIA | 3 | - | 3 | FUTEBOL |
| PEDRO | 4 | - | 5 | FOTOGRAFIA |
| CLÁUDIA | 5 | - | 8 | ARTESABATO |

- O resultado do CROSS JOIN destas duas tabelas é:

| NOME  | HOBBY  |
| ------------------- | ------------------- |
| JOÃO | PRAIA |
| MARIA | PRAIA|
| PEDRO | PRAIA|
| CLÁUDIA | PRAIA |
| JOÃO | FUTEBOL |
| MARIA | FUTEBOL |
| PEDRO | FUTEBOL
| CLÁUDIA | FUTEBOL |
| (...) | (...) |
       







