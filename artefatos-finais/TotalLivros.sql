SELECT 
    codigo,
	COUNT(codigo) AS TotalLivros
FROM 
	Livro
JOIN
	Emprestimo
ON
	Emprestimo.Livro_codigo = Livro.codigo
GROUP BY
	Livro.codigo;