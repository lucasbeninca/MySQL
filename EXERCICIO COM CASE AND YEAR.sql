select data_de_nascimento,
	case
		when year(data_de_nascimento) < 1990 then 'VELHOS'
        when year(data_de_nascimento) >= 1990 and year(data_de_nascimento) 
        <= 1995 then 'JOVENS'
        else 'CRIANCAS'        
	end as relacao_criancas_jovens_velhos
from tabela_de_clientes;