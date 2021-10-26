DELIMITER // 
CREATE PROCEDURE AlunoCRUD (
	matricula INTEGER,
	nome VARCHAR(45),
	sexo VARCHAR(45),
	estado_civil VARCHAR(45),
	filiacao VARCHAR(45),
	Endereco_idEndereco INTEGER,
	StatementType VARCHAR(45)
) BEGIN IF StatementType = 'Insert' THEN
INSERT INTO
	`bibliotecadb`.`Aluno` (
		`matricula`,
		`nome`,
		`sexo`,
		`estado_civil`,
		`filiacao`,
		`Endereco_idEndereco`
	)
VALUES
	(
		matricula,
		nome,
		sexo,
		estado_civil,
		filiacao,
		Endereco_idEndereco
	);

ELSEIF StatementType = 'Select' THEN
SELECT
	*
FROM
	Aluno
WHERE
	Aluno.matricula = matricula;

ELSEIF StatementType = 'Delete' THEN
DELETE FROM
	Aluno
WHERE
	Aluno.matricula = matricula;

ELSEIF StatementType = 'Update' THEN
UPDATE
	Aluno
SET
	Aluno.nome = CASE
		WHEN nome = '' THEN Aluno.nome
		ELSE nome
	END,
	Aluno.sexo = CASE
		WHEN sexo = '' THEN Aluno.sexo
		ELSE sexo
	END,
	Aluno.estado_civil = CASE
		WHEN estado_civil = '' THEN Aluno.estado_civil
		ELSE estado_civil
	END,
	Aluno.filiacao = CASE
		WHEN filiacao = '' THEN Aluno.filiacao
		ELSE filiacao
	END,
	Aluno.Endereco_idEndereco = CASE
		WHEN Endereco_idEndereco = 0 THEN Aluno.Endereco_idEndereco
		ELSE Endereco_idEndereco
	END
WHERE
	Aluno.matricula = matricula;

END IF;

END;

DELIMITER;