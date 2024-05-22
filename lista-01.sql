create database avaliacao_22c;

use avaliacao_22c;

/*1*/
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("Cronicas de Narnia", "C.S. Lewis",1950, true, "Fantasia", '978-0064471190', "HarperCollins", 768,"Inglês");

/*2*/
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967,true, "Ficção", "978-0241968581", "Penguin Books", 422, "Espanhol"),
("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, true, "fantasia", "978-0439708180", "Bloomsbury", 309, "Inglês"),
("Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, true, "fantasia", "978-0618640157", "HarperCollins", 423, "Inglês");

/*3*/
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("Corinthians","Yuri alberto",2024,true,"futebol", "978-0618633157","ramos", 200, "portugues");

/*4*/
update Livros
set disponibilidade = false
where ano_publicacao < 2000;

/*5*/
UPDATE livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

/*6  Mude o idioma de todos os livros da editora "Penguin Books" para "Inglês".*/
UPDATE livros
SET idioma = 'Inglês'
WHERE editora = 'Penguin Books';

/*7*/
update Livros 
set titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)"
where isbn = '978-0439708180';

/*8*/
delete from Livros
where categoria = "terror";

/*9*/
delete from Livros
where idioma = "Francês" and ano_publicacao < 1970;

/*10*/
delete from Livros
where titulo = "as cronicas de narnia";

/*11 Apague todos os livros publicados pela editora "Penguin Books".*/
delete from Livros 
where editora = "Penguin Books";

/*12*/
select * from Livros 
where paginas > 500;

/*13*/
select categoria, count(*) as quantidade_livros
from livros
group by categoria;

/*14*/
select * from livros
order by id asc
limit 5;

/*15*/
SELECT 
    SUM(numero_paginas) AS total_paginas,
    AVG(numero_paginas) AS media_paginas
FROM livros
WHERE categoria = 'Drama';

/*16*/
SELECT AVG(ano_publicacao) AS media_ano_publicacao
FROM livros;

/*17*/
SELECT 
    MAX(ano_publicacao) AS livro_mais_recente,
    MIN(ano_publicacao) AS livro_mais_antigo
FROM livros;

/*18*/
select * from Livros 
order by id desc;

/*19*/
(select titulo from livros where idioma = "ingles")
union
(select titulo from livros where idioma = "portugues");

/*20*/
select * from livros
where autor = "George Orwell";