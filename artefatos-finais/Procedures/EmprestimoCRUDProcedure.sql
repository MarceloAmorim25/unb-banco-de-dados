DELIMITER // 
CREATE PROCEDURE EmprestimoCRUD (
	idEmprestimo INTEGER,
	Livro_codigo INTEGER,
	data_emprestimo DATETIME,
	data_devolucao DATETIME,
	Funcionario_matricula INTEGER,
	Aluno_matricula INTEGER,
	Professor_matricula INTEGER,
	Pagamento_codigo INTEGER,
	StatementType VARCHAR(45)
) BEGIN IF StatementType = 'Insert' THEN
INSERT INTO
	`bibliotecadb`.`Emprestimo` (
		`idEmprestimo`,
		`Livro_codigo`,
		`data_emprestimo`,
		`data_devolucao`,
		`Funcionario_matricula`,
		`Aluno_matricula`,
		`Professor_matricula`,
		`Pagamento_codigo`
	)
VALUES
	(
		idEmprestimo,
		Livro_codigo,
		data_emprestimo,
		data_devolucao,
		Funcionario_matricula,
		Aluno_matricula,
		Professor_matricula,
		Pagamento_codigo
	);

ELSEIF StatementType = 'Select' THEN
SELECT
	*
FROM
	Emprestimo
WHERE
	Emprestimo.idEmprestimo = idEmprestimo;

ELSEIF StatementType = 'Delete' THEN
DELETE FROM
	Emprestimo
WHERE
	Emprestimo.idEmprestimo = idEmprestimo;

ELSEIF StatementType = 'Update' THEN
UPDATE
	Emprestimo
SET
	Emprestimo.Livro_codigo = CASE
		WHEN Livro_codigo = '' THEN Aluno.Livro_codigo
		ELSE Livro_codigo
	END,
	Emprestimo.data_emprestimo = CASE
		WHEN data_emprestimo = '' THEN Emprestimo.data_emprestimo
		ELSE data_emprestimo
	END,
	Emprestimo.data_devolucao = CASE
		WHEN data_devolucao = '' THEN Emprestimo.data_devolucao
		ELSE data_devolucao
	END,
	Emprestimo.Funcionario_matricula = CASE
		WHEN Funcionario_matricula = '' THEN Emprestimo.Funcionario_matricula
		ELSE Funcionario_matricula
	END,
	Emprestimo.Aluno_matricula = CASE
		WHEN Aluno_matricula = 0 THEN Emprestimo.Aluno_matricula
		ELSE Aluno_matricula
	END,
	Emprestimo.Professor_matricula = CASE
		WHEN Professor_matricula = 0 THEN Emprestimo.Professor_matricula
		ELSE Professor_matricula
	END,
    Emprestimo.Pagamento_codigo = CASE
		WHEN Pagamento_codigo = 0 THEN Emprestimo.Pagamento_codigo
		ELSE Pagamento_codigo
	END
WHERE
	Emprestimo.idEmprestimo = idEmprestimo;

END IF;

END;

DELIMITER;