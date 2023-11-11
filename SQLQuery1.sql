--1
SELECT 
	Nome,
	Ano
FROM Filmes

--2

SELECT * FROM Filmes
ORDER BY Ano ASC

--3

SELECT * FROM Filmes
WHERE Id = 28

--4

SELECT * FROM Filmes
WHERE Ano = 1997

--5

SELECT *
FROM Filmes
WHERE Ano > 2000;

--6

SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7

SELECT Ano, COUNT(*) as Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;


--8

SELECT * FROM Atores
WHERE genero = 'M'

--9

SELECT * FROM Atores
WHERE genero = 'F'
ORDER BY PrimeiroNome

--10

SELECT Filmes.Nome, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

--11

SELECT Filmes.Nome, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

--12

SELECT Filmes.Nome AS NomeDoFilme, 
       Atores.PrimeiroNome, 
       Atores.UltimoNome, 
       ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;

