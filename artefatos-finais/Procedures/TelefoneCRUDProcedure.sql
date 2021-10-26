DELIMITER //
CREATE PROCEDURE TelefoneCRUD(
    idTelefone INTEGER,
    Numero VARCHAR(45),
    Funcionario_matricula INTEGER,
    Aluno_matricula INTEGER,
    Professor_matricula INTEGER,
    StatementType VARCHAR(45)
) BEGIN IF StatementType = 'Insert' THEN
INSERT INTO
    `bibliotecadb`.`Telefone` (
        `idTelefone`,
        `Numero`,
        `Funcionario_matricula`,
        `Aluno_matricula`,
        `Professor_matricula`
    )
VALUES
    (
        idTelefone,
        Numero,
        Funcionario_matricula,
        Aluno_matricula,
        Professor_matricula
    );

ELSEIF StatementType = 'Select' THEN
SELECT
    *
FROM
    Telefone
WHERE
    Telefone.idTelefone = idTelefone;

ELSEIF StatementType = 'Delete' THEN
DELETE FROM
    Telefone
WHERE
    Telefone.idTelefone = idTelefone;

ELSEIF StatementType = 'Update' THEN
UPDATE
    Telefone
SET
    Telefone.Numero = CASE
        WHEN Numero = '' THEN Telefone.Numero
        ELSE Numero
    END,
    Telefone.Funcionario_matricula = CASE
        WHEN Funcionario_matricula = '' THEN Telefone.Funcionario_matricula
        ELSE Funcionario_matricula
    END,
    Telefone.Aluno_matricula = CASE
        WHEN Aluno_matricula = '' THEN Telefone.Aluno_matricula
        ELSE Aluno_matricula
    END,
    Telefone.Telefone_matricula = CASE
        WHEN Telefone_matricula = '' THEN Telefone.Telefone_matricula
        ELSE Telefone_matricula
    END
WHERE
    Telefone.idTelefone = idTelefone;

END IF;

END;

DELIMITER;