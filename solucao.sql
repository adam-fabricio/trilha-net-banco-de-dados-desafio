
USE Filmes;
GO

PRINT N''
PRINT N'1 - Buscar o nome e ano dos filmes'
PRINT N''
SELECT Nome, Ano FROM Filmes;
GO

PRINT N''
PRINT N'2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano'
PRINT N''
SELECT Nome, Ano FROM Filmes ORDER BY Ano;
GO


PRINT N''
PRINT N'3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração'
PRINT N''
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';
GO


PRINT N''
PRINT N'4 - Buscar os filmes lançados em 1997'
PRINT N''
SELECT * FROM Filmes WHERE Ano = 1997;
GO


PRINT N''
PRINT N'5 - Buscar os filmes lançados APÓS o ano 2000'
PRINT N''
SELECT * FROM Filmes WHERE Ano > 2000;
GO

PRINT N''
PRINT N'6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente'
PRINT N''
SELECT * FROM Filmes 
WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao;
GO

PRINT N''
PRINT N'7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente'
PRINT N''
SELECT Ano, COUNT(1) AS Quantidade 
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;
GO

PRINT N''
PRINT N'8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome'
PRINT N''
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = "M";
GO

PRINT N''
PRINT N'9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome'
PRINT N''
SELECT PrimeiroNome, UltimoNome FROM Atores Where Genero = "F" ORDER BY PrimeiroNome;
GO

PRINT N''
PRINT N'10 - Buscar o nome do filme e o gênero'
PRINT N''
SELECT Nome, Genero FROM Filmes, FilmesGenero, Generos
WHERE Filmes.Id = IdFilme and Generos.Id = IdGenero
;
GO

PRINT N''
PRINT N'11 - Buscar o nome do filme e o gênero do tipo "Mistério"'
PRINT N''
SELECT Nome, Genero FROM Filmes, FilmesGenero, Generos
WHERE Filmes.Id = IdFilme AND Generos.Id = IdGenero AND Genero = "Mistério"
;
GO

PRINT N''
PRINT N'12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel'
PRINT N''
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM Atores, ElencoFilme, Filmes
WHERE IdAtor = Atores.Id AND IdFilme = Filmes.Id;
GO
