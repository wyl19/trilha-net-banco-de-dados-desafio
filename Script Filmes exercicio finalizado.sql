-- 1
select Nome, Ano from Filmes

-- 2
select Nome,Ano,Duracao from Filmes 
order by Ano asc

-- 3
select Nome,Ano,Duracao from Filmes 
where Nome = 'De Volta para o Futuro'

-- 4
select Nome,Ano,Duracao from Filmes 
where Ano = '1997'

-- 5
select Nome,Ano,Duracao from Filmes 
where Ano > '2000'

-- 6
select Nome,Ano,Duracao from Filmes 
where Duracao > 100 and Duracao < 150
order by Duracao asc

-- 7
select Ano, COUNT(Ano) as Quantidade from Filmes
group by Ano
order by COUNT(Ano) desc

-- 8 
select Id,PrimeiroNome,UltimoNome,Genero from Atores

-- 9
select Id,PrimeiroNome,UltimoNome,Genero from Atores 
where Genero = 'F'
order by PrimeiroNome asc

-- 10
select a.nome, c.Genero from Filmes a
	join FilmesGenero b on a.id = b.IdFilme
	join Generos c on b.IdGenero = c.Id

-- 11
select a.nome, c.Genero from Filmes a
	join FilmesGenero b on a.id = b.IdFilme
	join Generos c on b.IdGenero = c.Id
	where c.Genero = 'Mistério'

--12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select a.nome,c.PrimeiroNome,c.UltimoNome,b.Papel from filmes a
	join ElencoFilme b on a.Id = b.IdFilme
	join Atores c on b.IdAtor = c.Id

