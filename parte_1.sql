CREATE DATABASE kopa_dp;

create table if not exists kopas(
	id BIGSERIAL primary key,
	selecao VARCHAR(128) unique,
	qnt_copas INT
);



insert into kopas
	(selecao, qnt_copas)
VALUES 
	('Brasil', 5),
	('Alemanha', 5),
	('Itália', 4),
	('Argentina', 2),
	('França', 2),
	('Uruguai', 2),
	('Inglaterra', 1),
	('Espanha', 1),
	('Japão', 1);



update
	kopas 
set
	qnt_copas = 4
where 
	kopas.selecao like 'Alemanha'




delete from
	kopas 
where 
	selecao like 'Japão'



select * from kopas