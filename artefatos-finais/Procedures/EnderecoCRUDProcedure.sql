DELIMITER // 
CREATE PROCEDURE EnderecoCRUD (
    idEndereco INTEGER,
    Bairro VARCHAR(45),
    Rua VARCHAR(45),
    Numero VARCHAR(45),
    CEP VARCHAR(45),
    StatementType VARCHAR(45)
) BEGIN IF StatementType = 'Insert' THEN
INSERT INTO
    `bibliotecadb`.`Endereco` (
        `idEndereco`,
        `Bairro`,
        `Rua`,
        `Numero`,
        `CEP`
    )
VALUES
    (
        idEndereco,
        Bairro,
        Rua,
        Numero,
        CEP
    );

ELSEIF StatementType = 'Select' THEN
SELECT
    *
FROM
    Endereco
WHERE
    Endereco.idEndereco = idEndereco;

ELSEIF StatementType = 'Delete' THEN
DELETE FROM
    Endereco
WHERE
    Endereco.idEndereco = idEndereco;

ELSEIF StatementType = 'Update' THEN
UPDATE
    Endereco
SET
    Endereco.Bairro = CASE
        WHEN Bairro = '' THEN Aluno.Bairro
        ELSE Bairro
    END,
    Endereco.Rua = CASE
        WHEN Rua = '' THEN Endereco.Rua
        ELSE Rua
    END,
    Endereco.Numero = CASE
        WHEN Numero = '' THEN Endereco.Numero
        ELSE Numero
    END,
    Endereco.CEP = CASE
        WHEN CEP = '' THEN Endereco.CEP
        ELSE CEP
    END
WHERE
    Endereco.idEndereco = idEndereco;

END IF;

END;

DELIMITER;