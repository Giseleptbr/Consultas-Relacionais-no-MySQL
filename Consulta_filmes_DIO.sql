-- Exercício 1
-- Buscar o nome e ano dos filmes

SELECT Nome, Ano
FROM Filmes;

-- Exercício 2
-- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- Exercício 3
-- Buscar pelo filme "Volta para o Futuro", trazendo o nome, ano e duração

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'Volta para o Futuro';

-- Exercício 4
-- Buscar os filmes lançados em 1997

SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

-- Exercício 5
-- Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;

-- Exercício 6
-- Buscar os filmes com duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente

SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- Exercício 7
-- Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente

SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

-- 8 - Buscar os atores do gênero masculino, retornando PrimeiroNome e UltimoNome

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 9 - Buscar os atores do gênero feminino, retornando PrimeiroNome, UltimoNome, ordenados pelo PrimeiroNome

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10 - Buscar o nome do filme e o gênero

SELECT f.Nome AS NomeFilme, g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT f.Nome AS NomeFilme, g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo PrimeiroNome, UltimoNome e seu Papel

SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id
ORDER BY f.Nome, a.PrimeiroNome;


