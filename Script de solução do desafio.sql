--1
SELECT Nome, Ano
FROM Filmes

--2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano asc

--3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao
FROM Filmes
Where Ano = '1997'

--5
SELECT Nome, Ano, Duracao
FROM Filmes
Where Ano > '2000'

--6
SELECT Nome, Ano, Duracao
From Filmes
WHERE Duracao > 100
	AND Duracao < 150
ORDER BY Duracao asc

--7
SELECT Ano, Quantidade = Count(*)
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade desc

--8 da forma que está na imagem
SELECT *
FROM Atores
WHERE Genero = 'M'

-- 8 da forma que eu entendi
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M'

--9 da forma que está na imagem
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome asc

-- 9 da forma que eu entendi
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome asc

-- 10
SELECT f.Nome, g.Genero
FROM Filmes AS f
INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme
INNER JOIN Generos AS g ON g.Id = fg.idGenero

--11
SELECT f.Nome, g.Genero
FROM Filmes AS f
INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme
INNER JOIN Generos AS g ON g.Id = fg.idGenero
WHERE g.Genero = 'Mistério'

--12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes AS f
INNER JOIN ElencoFilme AS ef ON f.Id = ef.IdFilme
INNER JOIN Atores AS a ON a.Id = ef.IdAtor
