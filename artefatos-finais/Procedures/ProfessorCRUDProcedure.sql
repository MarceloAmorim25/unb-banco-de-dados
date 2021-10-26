DELIMITER // 
CREATE PROCEDURE ProfessorCRUD(
    matricula INTEGER,
    nome VARCHAR(45),
    sexo VARCHAR(45),
    estado_civil VARCHAR(45),
    filiacao VARCHAR(45),
    carga_horaria INTEGER,
    titulacao VARCHAR(45),
    ano_titulacao VARCHAR(45),
    Endereco_idEndereco INTEGER,
    StatementType VARCHAR(45)
) BEGIN IF StatementType = 'Insert' THEN
INSERT INTO
    `bibliotecadb`.`Professor` (
        `matricula`,
        `nome`,
        `sexo`,
        `estado_civil`,
        `filiacao`,
        `carga_horaria`,
        `titulacao`,
        `ano_titulacao`,
        `Endereco_idEndereco`
    )
VALUES
    (
        matricula,
        nome,
        sexo,
        estado_civil,
        filiacao,
        carga_horaria,
        titulacao,
        ano_titulacao,
        Endereco_idEndereco
    );

ELSEIF StatementType = 'Select' THEN
SELECT
    *
FROM
    Professor
WHERE
    Professor.matricula = matricula;

ELSEIF StatementType = 'Delete' THEN
DELETE FROM
    Professor
WHERE
    Professor.matricula = matricula;

ELSEIF StatementType = 'Update' THEN
UPDATE
    Professor
SET
    Professor.nome = CASE
        WHEN nome = '' THEN Professor.nome
        ELSE nome
    END,
    Professor.sexo = CASE
        WHEN sexo = '' THEN Professor.sexo
        ELSE sexo
    END,
    Professor.estado_civil = CASE
        WHEN estado_civil = '' THEN Professor.estado_civil
        ELSE estado_civil
    END,
    Professor.filiacao = CASE
        WHEN filiacao = '' THEN Professor.filiacao
        ELSE filiacao
    END,
    Professor.carga_horaria = CASE
        WHEN carga_horaria = '' THEN Professor.carga_horaria
        ELSE carga_horaria
    END,
    Professor.titulacao = CASE
        WHEN titulacao = '' THEN Professor.titulacao
        ELSE titulacao
    END,
    Professor.ano_titulacao = CASE
        WHEN ano_titulacao = 0 THEN Professor.ano_titulacao
        ELSE ano_titulacao
    END,
    Professor.Endereco_idEndereco = CASE
        WHEN Endereco_idEndereco = 0 THEN Professor.Endereco_idEndereco
        ELSE Endereco_idEndereco
    END
WHERE
    Professor.matricula = matricula;

END IF;

END;

DELIMITER;