CREATE DATABASE IF NOT EXISTS Filmes;
USE Filmes;

CREATE TABLE Atores (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  PrimeiroNome VARCHAR(20),
  UltimoNome VARCHAR(20),
  Genero VARCHAR(1)
);

CREATE TABLE Filmes (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(50),
  Ano INT,
  Duracao INT
);


CREATE TABLE Generos (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Genero VARCHAR(20)
);

CREATE TABLE FilmesGenero (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  IdGenero INT,
  IdFilme INT,
  FOREIGN KEY (IdGenero) REFERENCES Generos(Id),
  FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);

CREATE TABLE ElencoFilme (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  IdAtor INT NOT NULL,
  IdFilme INT,
  Papel VARCHAR(30),
  FOREIGN KEY (IdAtor) REFERENCES Atores(Id),
  FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);


-- Dados para Atores
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES
(1, 'James', 'Stewart', 'M'),
(2, 'Deborah', 'Kerr', 'F'),
(3, 'Peter', 'OToole', 'M'),
(4, 'Robert', 'DeNiro', 'M'),
(6, 'Harrison', 'Ford', 'M'),
(7, 'Stephen', 'Baldwin', 'M'),
(8, 'Jack', 'Nicholson', 'M'),
(9, 'Mark', 'Wahlberg', 'M'),
(10, 'Woody', 'Allen', 'M'),
(11, 'Claire', 'Danes', 'F'),
(12, 'Tim', 'Robbins', 'M'),
(13, 'Kevin', 'Spacey', 'M'),
(14, 'Kate', 'Winslet', 'F'),
(15, 'Robin', 'Williams', 'M'),
(16, 'Jon', 'Voight', 'M'),
(17, 'Ewan', 'McGregor', 'M'),
(18, 'Christian', 'Bale', 'M'),
(19, 'Maggie', 'Gyllenhaal', 'F'),
(20, 'Dev', 'Patel', 'M'),
(21, 'Sigourney', 'Weaver', 'F'),
(22, 'David', 'Aston', 'M'),
(23, 'Ali', 'Astin', 'F');

-- Dados para Filmes (sem Id explícito, deixa o AUTO_INCREMENT cuidar)
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES
('Um Corpo que Cai', 1958, 128),
('Os Inocentes', 1961, 100),
('Lawrence da Arábia', 1962, 216),
('O Franco Atirador', 1978, 183),
('Amadeus', 1984, 160),
('Blade Runner', 1982, 117),
('De Olhos Bem Fechados', 1999, 159),
('Os Suspeitos', 1995, 106),
('Chinatown', 1974, 130),
('Boogie Nights - Prazer Sem Limites', 1997, 155),
('Noivo Neurótico, Noiva Nervosa', 1977, 93),
('Princesa Mononoke', 1997, 134),
('Um Sonho de Liberdade', 1994, 142),
('Beleza Americana', 1999, 122),
('Titanic', 1997, 194),
('Gênio Indomável', 1997, 126),
('Amargo pesadelo', 1972, 109),
('Trainspotting - Sem Limites', 1996, 94),
('O Grande Truque', 2006, 130),
('Donnie Darko', 2001, 113),
('Quem Quer Ser um Milionário?', 2008, 120),
('Aliens, O Resgate', 1986, 137),
('Uma Vida sem Limites', 2004, 118),
('Avatar', 2009, 162),
('Coração Valente', 1995, 178),
('Os Sete Samurais', 1954, 207),
('A Viagem de Chihiro', 2001, 125),
('De Volta para o Futuro', 1985, 116);

-- Dados para FilmesGenero
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES
(1, 22),
(2, 17),
(2, 3),
(3, 12),
(5, 11),
(6, 8),
(6, 13),
(7, 26),
(7, 28),
(7, 18),
(7, 21),
(8, 2),
(9, 23),
(10, 7),
(10, 27),
(10, 1),
(11, 14),
(12, 6),
(13, 4);

INSERT INTO Generos (Genero) VALUES
('Ação'),      -- Id = 1
('Aventura'),  -- Id = 2
('Animação'),  -- Id = 3
('Biografia'), -- Id = 4
('Comédia'),   -- Id = 5
('Crime'),     -- Id = 6
('Drama'),     -- Id = 7
('Horror'),    -- Id = 8
('Musical'),   -- Id = 9
('Mistério'),  -- Id = 10
('Romance'),   -- Id = 11
('Suspense'),  -- Id = 12
('Guerra');    -- Id = 13


-- Dados para ElencoFilme (sem Id explícito)
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES
(1, 1, 'John Scottie Ferguson'),
(2, 2, 'Miss Giddens'),
(3, 3, 'T.E. Lawrence'),
(4, 4, 'Michael'),
(6, 6, 'Rick Deckard'),
(7, 8, 'McManus'),
(9, 10, 'Eddie Adams'),
(10, 11, 'Alvy Singer'),
(11, 12, 'San'),
(12, 13, 'Andy Dufresne'),
(13, 14, 'Lester Burnham'),
(14, 15, 'Rose DeWitt Bukater'),
(15, 16, 'Sean Maguire'),
(16, 17, 'Ed'),
(17, 18, 'Renton'),
(19, 20, 'Elizabeth Darko'),
(20, 21, 'Older Jamal'),
(21, 22, 'Ripley'),
(13, 23, 'Bobby Darin'),
(8, 9, 'J.J. Gittes'),
(18, 19, 'Alfred Borden');
