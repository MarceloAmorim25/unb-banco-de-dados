DELIMITER // 
CREATE PROCEDURE FuncionarioCRUD (
    matricula INTEGER,
    nome VARCHAR(45),
    sexo VARCHAR(45),
    estado_civil VARCHAR(45),
    filiacao VARCHAR(45),
    numero_dependentes VARCHAR(45),
    habilidades_especificas VARCHAR(45),
    cor_pele VARCHAR(45),
    Endereco_idEndereco INTEGER,
    StatementType VARCHAR(45)
) BEGIN IF StatementType = 'Insert' THEN
INSERT INTO
    `bibliotecadb`.`Funcionario` (
        `matricula`,
        `nome`,
        `sexo`,
        `estado_civil`,
        `filiacao`,
        `numero_dependentes`,
        `habilidades_especificas`,
        `cor_pele`,
        `Endereco_idEndereco`
    )
VALUES
    (
        matricula,
        nome,
        sexo,
        estado_civil,
        filiacao,
        numero_dependentes,
        habilidades_especificas,
        cor_pele,
        Endereco_idEndereco
    );

ELSEIF StatementType = 'Select' THEN
SELECT
    *
FROM
    Funcionario
WHERE
    Funcionario.matricula = matricula;

ELSEIF StatementType = 'Delete' THEN
DELETE FROM
    Funcionario
WHERE
    Funcionario.matricula = matricula;

ELSEIF StatementType = 'Update' THEN
UPDATE
    Funcionario
SET
    Funcionario.nome = CASE
        WHEN nome = '' THEN Funcionario.nome
        ELSE nome
    END,
    Funcionario.sexo = CASE
        WHEN sexo = '' THEN Funcionario.sexo
        ELSE sexo
    END,
    Funcionario.estado_civil = CASE
        WHEN estado_civil = '' THEN Funcionario.estado_civil
        ELSE estado_civil
    END,
    Funcionario.filiacao = CASE
        WHEN filiacao = '' THEN Funcionario.filiacao
        ELSE filiacao
    END,
    Funcionario.numero_dependentes = CASE
        WHEN numero_dependentes = '' THEN Funcionario.numero_dependentes
        ELSE numero_dependentes
    END,
    Funcionario.cor_pele = CASE
        WHEN cor_pele = '' THEN Funcionario.cor_pele
        ELSE cor_pele
    END,
    Funcionario.Endereco_idEndereco = CASE
        WHEN Endereco_idEndereco = 0 THEN Funcionario.Endereco_idEndereco
        ELSE Endereco_idEndereco
    END
WHERE
    Funcionario.matricula = matricula;

END IF;

END;

DELIMITER;