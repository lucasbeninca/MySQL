# MySQL


**CREATE**
- create table nome_da_tabela (id int,campos float, nome varchar(50), cpf float, primeira_compra bit, data_nascimento date);

**INSERT**
- insert into nome_da_tabela (campos, nome, cpf etc...) values ('teste', 'lucas beninca', 0851822222);

**UPDATE**

- update table nome_da_tabela set campos = 10, nome = 'lucas beninca', cpf = 08518656907, primeira_compra = 0, data_nascimento = '03-01-1996'
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



