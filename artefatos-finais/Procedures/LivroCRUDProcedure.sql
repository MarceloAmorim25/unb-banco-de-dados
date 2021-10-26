DELIMITER // 
CREATE PROCEDURE LivroCRUD(
    codigo INTEGER,
    titulo VARCHAR(45),
    editora VARCHAR(45),
    autor VARCHAR(45),
    ano_edicao INTEGER,
    numero_paginas INTEGER,
    area_conhecimento VARCHAR(45),
    isbn VARCHAR(45),
    StatementType VARCHAR(45)
) BEGIN IF StatementType = 'Insert' THEN
INSERT INTO
    `bibliotecadb`.`Livro` (
        `codigo`,
        `titulo`,
        `editora`,
        `autor`,
        `ano_edicao`,
        `numero_paginas`,
        `area_conhecimento`,
        `isbn`
    )
VALUES
    (
        codigo,
        titulo,
        editora,
        autor,
        ano_edicao,
        numero_paginas,
        area_conhecimento,
        isbn
    );

ELSEIF StatementType = 'Select' THEN
SELECT
    *
FROM
    Livro
WHERE
    Livro.codigo = codigo;

ELSEIF StatementType = 'Delete' THEN
DELETE FROM
    Livro
WHERE
    Livro.codigo = codigo;

ELSEIF StatementType = 'Update' THEN
UPDATE
    Livro
SET
    Livro.titulo = CASE
        WHEN titulo = '' THEN Livro.titulo
        ELSE titulo
    END,
    Livro.editora = CASE
        WHEN editora = '' THEN Livro.editora
        ELSE editora
    END,
    Livro.autor = CASE
        WHEN autor = '' THEN Livro.autor
        ELSE autor
    END,
    Livro.ano_edicao = CASE
        WHEN ano_edicao = '' THEN Livro.ano_edicao
        ELSE ano_edicao
    END,
    Livro.numero_paginas = CASE
        WHEN numero_paginas = '' THEN Livro.numero_paginas
        ELSE numero_paginas
    END,
    Livro.area_conhecimento = CASE
        WHEN area_conhecimento = '' THEN Livro.area_conhecimento
        ELSE area_conhecimento
    END,
    Livro.isbn = CASE
        WHEN isbn = 0 THEN Livro.isbn
        ELSE isbn
    END
WHERE
    Livro.codigo = codigo;

END IF;

END;

DELIMITER;