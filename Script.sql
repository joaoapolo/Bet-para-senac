drop database if exists bet_senac;

create database bet_senac;

drop table if exists bet_senac.clientes;

create table bet_senac.clientes (
	id bigint primary key auto_increment,
	nome varchar(255) not null,
	documento varchar(11),
	data_nascimento date not null
);

drop table if exists bet_senac.apostas;

create table bet_senac.apostas (
	id bigint primary key auto_increment,
	id_cliente bigint not null,
	evento varchar(255) not null,
	valor decimal(10,2) not null
);

alter table bet_senac.apostas 
	add column tipo enum('futebol', 'basquete', 'outros') not null;

INSERT INTO bet_senac.clientes (nome, documento, data_nascimento) VALUES
('Ana Silva', '12345678901', '1990-05-14'),
('Carlos Oliveira', '10987654321', '1985-11-23'),
('Maria Santos', '12345678901', '1992-08-30'),
('João Pereira', '23456789012', '1988-02-17'),
('Lucia Costa', '34567890123', '1995-04-02'),
('Felipe Almeida', '45678901234', '1987-12-05'),
('Fernanda Lima', '56789012345', '1991-07-19'),
('Lucas Martins', '67890123456', '1983-03-29'),
('Juliana Ferreira', '78901234567', '1994-06-11'),
('Pedro Souza', '89012345678', '1989-10-25'),
('Tatiane Rocha', '90123456789', '1993-09-12'),
('Ricardo Mendes', '11234567890', '1986-01-15'),
('Mariana Dias', '22345678901', '1992-12-30'),
('Thiago Ribeiro', '33456789012', '1984-03-21'),
('Priscila Cardoso', '44567890123', '1990-11-05'),
('Eduardo Gomes', '55678901234', '1987-08-17'),
('Aline Alves', '66789012345', '1996-02-09'),
('Roberto Nascimento', '77890123456', '1982-05-22'),
('Bruna Pires', '88901234567', '1991-10-13'),
('André Martins', '99012345678', '1988-04-30'),
('Vanessa Rocha', '10123456789', '1995-07-14'),
('Gabriel Teixeira', '21234567890', '1989-11-01'),
('Sofia Santos', '32345678901', '1993-01-18'),
('Daniel Costa', '43456789012', '1986-06-24'),
('Larissa Lima', '54567890123', '1990-09-29'),
('Vinícius Oliveira', '65678901234', '1984-02-03'),
('Natália Ferreira', '76789012345', '1992-03-17'),
('Felipe Santos', '87890123456', '1987-10-09'),
('Cristina Almeida', '98901234567', '1991-05-25'),
('Leonardo Dias', '12345678902', '1985-12-31'),
('Renata Silva', '23456789013', '1994-08-04'),
('Fábio Ribeiro', '34567890124', '1983-07-20'),
('Cíntia Nascimento', '45678901235', '1996-11-11'),
('Rodrigo Gomes', '56789012346', '1988-05-15'),
('Alice Martins', '67890123457', '1993-09-06'),
('Samuel Rocha', '78901234568', '1990-01-22'),
('Jéssica Almeida', '89012345679', '1986-04-18'),
('Carlos Dias', '90123456780', '1989-12-26'),
('Tatiane Lima', '11234567891', '1992-03-01'),
('Bruno Pires', '22345678902', '1987-06-17'),
('Gustavo Costa', '33456789013', '1994-08-22'),
('Yasmin Ferreira', '44567890124', '1991-09-05'),
('Murilo Santos', '55678901235', '1985-02-09'),
('Aline Oliveira', '66789012346', '1996-07-30'),
('Sérgio Almeida', '77890123457', '1984-11-13'),
('Raquel Nascimento', '88901234568', '1989-04-14'),
('Eduarda Martins', '99012345679', '1993-10-19'),
('Paulo Teixeira', '10123456790', '1988-03-11'),
('Evelyn Rocha', '21234567891', '1990-12-21'),
('Victor Costa', '32345678902', '1992-01-04'),
('Claudia Lima', '43456789013', '1985-08-26'),
('Robson Dias', '54567890124', '1987-07-03'),
('Isabela Ferreira', '65678901235', '1995-02-15'),
('Davi Santos', '76789012346', '1983-11-27'),
('Giovanna Almeida', '87890123457', '1991-06-12'),
('Mateus Rocha', '98901234568', '1994-09-16');

INSERT INTO bet_senac.apostas (id_cliente, evento, valor, tipo) VALUES
(1, 'Santos x São Paulo', 100.00, 'futebol'),
(1, 'Golden State Warriors x Miami Heat', 50.00, 'basquete'),
(2, 'Flamengo x Palmeiras', 200.00, 'futebol'),
(2, 'Los Angeles Lakers x Boston Celtics', 150.00, 'outros'),
(3, 'Corinthians x Internacional', 80.00, 'basquete'),
(3, 'Barcelona x Real Madrid', 120.00, 'futebol'),
(4, 'Atlético-MG x Grêmio', 60.00, 'outros'),
(4, 'Chelsea x Manchester City', 90.00, 'futebol'),
(5, 'Paris Saint-Germain x Lyon', 70.00, 'basquete'),
(5, 'Juventus x AC Milan', 30.00, 'futebol'),
(6, 'Bayern de Munique x Borussia Dortmund', 110.00, 'futebol'),
(6, 'Phoenix Suns x Denver Nuggets', 40.00, 'outros'),
(7, 'Vasco x Botafogo', 90.00, 'basquete'),
(7, 'Liverpool x Manchester United', 200.00, 'futebol'),
(8, 'Sport x Náutico', 150.00, 'outros'),
(8, 'Arsenal x Tottenham', 100.00, 'futebol'),
(9, 'Fluminense x Vasco', 80.00, 'basquete'),
(9, 'Roma x Napoli', 60.00, 'futebol'),
(10, 'Chelsea x Liverpool', 50.00, 'outros'),
(10, 'Boca Juniors x River Plate', 120.00, 'futebol'),
(11, 'Atlético de Madrid x Real Sociedad', 70.00, 'basquete'),
(11, 'Manchester City x Chelsea', 150.00, 'futebol'),
(12, 'Barcelona x Sevilla', 40.00, 'outros'),
(12, 'Santos x Corinthians', 110.00, 'futebol'),
(13, 'São Paulo x Palmeiras', 200.00, 'basquete'),
(13, 'Milão x Inter de Milão', 90.00, 'futebol'),
(14, 'Grêmio x Flamengo', 60.00, 'outros'),
(14, 'Vasco x Atlético-MG', 80.00, 'futebol'),
(15, 'Palmeiras x Internacional', 100.00, 'basquete'),
(15, 'São Paulo x Santos', 150.00, 'futebol'),
(16, 'Barcelona x Atletico Madrid', 70.00, 'outros'),
(16, 'Borussia Dortmund x RB Leipzig', 130.00, 'futebol'),
(17, 'Liverpool x Manchester City', 80.00, 'basquete'),
(17, 'Paris Saint-Germain x Lille', 110.00, 'futebol'),
(18, 'Corinthians x Flamengo', 50.00, 'outros'),
(18, 'Bayern x Schalke', 90.00, 'futebol'),
(19, 'Nuggets x Heat', 120.00, 'basquete'),
(19, 'Celtics x Bucks', 70.00, 'futebol'),
(20, 'Milan x Roma', 200.00, 'outros'),
(20, 'Manchester United x Everton', 100.00, 'futebol'),
(21, 'Napoli x Juventus', 150.00, 'basquete'),
(21, 'Barcelona x Chelsea', 60.00, 'futebol'),
(22, 'Real Madrid x Sevilla', 90.00, 'outros'),
(22, 'Boca Juniors x Racing', 70.00, 'futebol'),
(23, 'Internacional x Atlético-MG', 50.00, 'basquete'),
(23, 'Santos x Botafogo', 80.00, 'futebol'),
(24, 'Flamengo x Fluminense', 120.00, 'outros'),
(24, 'Vasco x São Paulo', 200.00, 'futebol'),
(25, 'Arsenal x Manchester United', 100.00, 'basquete'),
(25, 'Tottenham x Chelsea', 90.00, 'futebol'),
(26, 'Real Madrid x Barcelona', 80.00, 'outros'),
(26, 'Bayern x Dortmund', 70.00, 'futebol'),
(27, 'Juventus x Lazio', 150.00, 'basquete'),
(27, 'Napoli x Inter', 60.00, 'futebol'),
(28, 'Liverpool x Tottenham', 200.00, 'outros'),
(28, 'Paris Saint-Germain x Monaco', 110.00, 'futebol'),
(29, 'Corinthians x Palmeiras', 100.00, 'basquete'),
(29, 'São Paulo x Santos', 150.00, 'futebol'),
(30, 'Flamengo x Vasco', 40.00, 'outros'),
(1, 'Real Madrid x Bayern de Munique', 100.00, 'futebol'),
(2, 'Barcelona x Atlético de Madrid', 50.00, 'futebol'),
(3, 'Lakers x Clippers', 80.00, 'basquete'),
(4, 'Flamengo x Grêmio', 200.00, 'futebol'),
(5, 'Palmeiras x São Paulo', 150.00, 'futebol'),
(6, 'Nuggets x Suns', 90.00, 'basquete'),
(7, 'Internacional x Santos', 70.00, 'futebol'),
(8, 'Manchester City x Arsenal', 120.00, 'futebol'),
(9, 'Fluminense x Vasco', 40.00, 'futebol'),
(10, 'Celtics x Raptors', 100.00, 'basquete'),
(11, 'Corinthians x Flamengo', 60.00, 'futebol'),
(12, 'Borussia Dortmund x Bayer Leverkusen', 90.00, 'futebol'),
(13, 'Milão x Juventus', 150.00, 'futebol'),
(14, 'Liverpool x Chelsea', 110.00, 'futebol'),
(15, 'PSG x Lyon', 200.00, 'futebol'),
(16, 'Nuggets x Warriors', 70.00, 'basquete'),
(17, 'Boca Juniors x Independiente', 40.00, 'futebol'),
(18, 'Arsenal x Tottenham', 100.00, 'futebol'),
(19, 'Milan x Roma', 90.00, 'futebol'),
(20, 'Vasco x Atlético-MG', 80.00, 'futebol'),
(21, 'Barcelona x Sevilla', 150.00, 'futebol'),
(22, 'Manchester United x West Ham', 120.00, 'futebol'),
(23, 'Dallas Mavericks x Miami Heat', 70.00, 'basquete'),
(24, 'Fluminense x Botafogo', 40.00, 'futebol'),
(25, 'Lakers x Mavericks', 60.00, 'basquete'),
(26, 'Grêmio x Atlético-MG', 90.00, 'futebol'),
(27, 'Bayern x RB Leipzig', 200.00, 'futebol'),
(28, 'Palmeiras x Atlético-GO', 110.00, 'futebol'),
(29, 'São Paulo x Atlético-MG', 50.00, 'futebol'),
(30, 'Celtics x Nets', 80.00, 'basquete'),
(1, 'Real Madrid x Bayern de Munique', 100.00, 'futebol'),
(2, 'Barcelona x Atlético de Madrid', 50.00, 'futebol'),
(3, 'Lakers x Clippers', 80.00, 'basquete'),
(4, 'Flamengo x Grêmio', 200.00, 'futebol'),
(5, 'Palmeiras x São Paulo', 150.00, 'futebol'),
(6, 'Nuggets x Suns', 90.00, 'basquete'),
(7, 'Internacional x Santos', 70.00, 'futebol'),
(8, 'Manchester City x Arsenal', 120.00, 'futebol'),
(9, 'Fluminense x Vasco', 40.00, 'futebol'),
(10, 'Celtics x Raptors', 100.00, 'basquete'),
(11, 'Corinthians x Flamengo', 60.00, 'futebol'),
(12, 'Borussia Dortmund x Bayer Leverkusen', 90.00, 'futebol'),
(13, 'Milão x Juventus', 150.00, 'futebol'),
(14, 'Liverpool x Chelsea', 110.00, 'futebol'),
(15, 'PSG x Lyon', 200.00, 'futebol'),
(16, 'Nuggets x Warriors', 70.00, 'basquete'),
(17, 'Boca Juniors x Independiente', 40.00, 'futebol'),
(18, 'Arsenal x Tottenham', 100.00, 'futebol'),
(19, 'Milan x Roma', 90.00, 'futebol'),
(20, 'Vasco x Atlético-MG', 80.00, 'futebol'),
(21, 'Barcelona x Sevilla', 150.00, 'futebol'),
(22, 'Manchester United x West Ham', 120.00, 'futebol'),
(23, 'Dallas Mavericks x Miami Heat', 70.00, 'basquete'),
(24, 'Fluminense x Botafogo', 40.00, 'futebol'),
(25, 'Lakers x Mavericks', 60.00, 'basquete'),
(26, 'Grêmio x Atlético-MG', 90.00, 'futebol'),
(27, 'Bayern x RB Leipzig', 200.00, 'futebol'),
(28, 'Palmeiras x Atlético-GO', 110.00, 'futebol'),
(29, 'São Paulo x Atlético-MG', 50.00, 'futebol'),
(30, 'Celtics x Hawks', 80.00, 'basquete'),
(1, 'Arsenal x Everton', 60.00, 'futebol'),
(2, 'Lazio x Roma', 150.00, 'futebol'),
(3, 'Real Madrid x Sevilla', 100.00, 'futebol'),
(4, 'Napoli x Atalanta', 70.00, 'futebol'),
(5, 'Santos x Corinthians', 90.00, 'futebol'),
(6, 'Juventus x Napoli', 120.00, 'futebol'),
(7, 'Flamengo x Atlético-MG', 150.00, 'futebol'),
(8, 'Milão x Inter', 60.00, 'futebol'),
(9, 'Barcelona x Borussia Dortmund', 100.00, 'futebol'),
(10, 'Lakers x Kings', 80.00, 'basquete'),
(11, 'Liverpool x Arsenal', 90.00, 'futebol'),
(12, 'PSG x Lille', 200.00, 'futebol'),
(13, 'Corinthians x Grêmio', 40.00, 'futebol'),
(14, 'Tottenham x Liverpool', 70.00, 'futebol'),
(15, 'Celtics x Pacers', 110.00, 'basquete'),
(16, 'São Paulo x Santos', 90.00, 'futebol'),
(17, 'Nuggets x Timberwolves', 60.00, 'basquete'),
(18, 'Milan x Fiorentina', 50.00, 'futebol'),
(19, 'Boca Juniors x Racing', 80.00, 'futebol'),
(20, 'Barcelona x Manchester City', 100.00, 'futebol'),
(21, 'PSG x Lille', 150.00, 'futebol'),
(22, 'Arsenal x Leicester', 90.00, 'futebol'),
(23, 'Napoli x Juventus', 110.00, 'futebol'),
(24, 'Vasco x Fluminense', 60.00, 'futebol'),
(25, 'Flamengo x Palmeiras', 70.00, 'futebol'),
(26, 'Borussia Dortmund x Wolfsburg', 100.00, 'futebol'),
(27, 'Celtics x Pacers', 80.00, 'basquete'),
(28, 'Real Madrid x Valencia', 120.00, 'futebol'),
(29, 'Lakers x Mavericks', 90.00, 'basquete'),
(30, 'Manchester United x Chelsea', 150.00, 'futebol');

-- CONSULTAS

select * from bet_senac.clientes;

select nome, documento from bet_senac.clientes;

select * from bet_senac.apostas;

select id, id_cliente, evento, valor
	from bet_senac.apostas;

select id, id_cliente, evento, valor
	from bet_senac.apostas
	where valor > 100;

select id, id_cliente, evento, valor
	from bet_senac.apostas
	where evento = 'Bahia x Vitória';

select id, nome, documento, data_nascimento 
	from bet_senac.clientes
	where data_nascimento < '1985-01-01';

select id, id_cliente, evento, valor
	from bet_senac.apostas
	where evento like '%Real%'
		and valor > 100;
	
select id, nome, documento, data_nascimento 
	from bet_senac.clientes
	where year(data_nascimento) < 1985;

select * from bet_senac.apostas;

select count(*) from bet_senac.apostas;

select sum(valor) from bet_senac.apostas;

select max(valor) from bet_senac.apostas;

select min(valor) from bet_senac.apostas;

select max(valor) from bet_senac.apostas
	where evento = 'Bahia x Vitória';
	
select max(valor) from bet_senac.apostas
	where evento like '%Real%'
		and evento like '%Barcelona%';
		
select id, valor, valor * 0.1 as porcentagem_casa
	from bet_senac.apostas;
	
select sum(valor * 0.1) as total_casa from bet_senac.apostas;

select * from bet_senac.apostas;

update bet_senac.apostas set evento = 'Lakers x Celtics', tipo = 'basquete'
	where id = 4;

select * from bet_senac.apostas;

select * from bet_senac.apostas where tipo = 'futebol';

select * from bet_senac.apostas where evento like '%Real Madrid%';

select * from bet_senac.apostas where evento like '%x Real Madrid';

select * from bet_senac.apostas where evento like 'Real Madrid x%';

select count(*) from bet_senac.apostas where evento like '%Barcelona%';

select count(*) as quantidade, tipo 
	from bet_senac.apostas 
	group by tipo;

select sum(valor) as total, tipo 
	from bet_senac.apostas 
	group by tipo;

select evento, valor 
	from bet_senac.apostas 
	order by valor;

select evento, valor 
	from bet_senac.apostas 
	order by valor asc;

select evento, valor 
	from bet_senac.apostas 
	order by valor desc;

select evento, valor 
	from bet_senac.apostas 
	order by valor desc, evento asc;

select evento, valor 
	from bet_senac.apostas 
	order by valor desc, evento asc 
	limit 10;
	
select nome, data_nascimento 
	from bet_senac.clientes 
	order by data_nascimento asc
	limit 10;
	
select 
	nome, 
	date_format(from_days(datediff(now(), data_nascimento)), '%Y') + 0 as idade
from bet_senac.clientes
order by idade desc
limit 10;

select evento, sum(valor) as total 
	from bet_senac.apostas
	group by evento
	order by total desc 
	limit 5;

select c.nome, a.evento, a.valor 
	from bet_senac.apostas a
		inner join bet_senac.clientes c on a.id_cliente = c.id
	order by c.nome;

select c.nome from bet_senac.clientes c 
	inner join bet_senac.apostas a on a.id_cliente = c.id
	where a.evento like '%Barcelona%'
	order by c.nome;

select c.nome, count(*) as qtde_apostas from bet_senac.clientes c 
	inner join bet_senac.apostas a on a.id_cliente = c.id
	where a.evento like '%Barcelona%'
	group by c.nome
	order by qtde_apostas desc, c.nome;

select c.nome, count(*) as qtde_apostas, sum(a.valor) as total from bet_senac.clientes c 
	inner join bet_senac.apostas a on a.id_cliente = c.id
	where a.evento like '%Barcelona%'
	group by c.nome
	order by total desc, qtde_apostas desc, c.nome;

select c.nome, count(*) as qtde_apostas, sum(a.valor) as total from bet_senac.clientes c 
	inner join bet_senac.apostas a on a.id_cliente = c.id
	where a.evento like '%Barcelona%'
	group by c.nome
	having qtde_apostas > 1
	order by total desc, qtde_apostas desc, c.nome;

select 
	c.nome, 
	sum(a.valor) as total,
	date_format(
		from_days(
			datediff(now(), c.data_nascimento)
		), 
		'%Y'
	) + 0 as idade
from bet_senac.clientes c 
	inner join bet_senac.apostas a on a.id_cliente = c.id
	group by c.id
	order by total desc
	limit 5;

select avg(valor) as media from bet_senac.apostas;

select * from bet_senac.clientes c;

insert into bet_senac.clientes 
	(nome, documento, data_nascimento)
	values ('Tassio', '9854376', '1985-12-12');

update bet_senac.clientes 
	set nome = 'Tassio Valle', documento = '2222222', data_nascimento = '1989-03-03'
	where id = 57;

delete from bet_senac.clientes where id = 57;
