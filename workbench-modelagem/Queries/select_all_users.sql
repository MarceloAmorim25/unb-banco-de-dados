SELECT
    COUNT(*) AS Contagem
FROM(
	SELECT
		nome
	FROM
		mydb.Aluno
UNION ALL
	SELECT
		nome
	FROM
		mydb.Funcionario
UNION
	SELECT
		nome
	FROM
		mydb.Professor
) AS users