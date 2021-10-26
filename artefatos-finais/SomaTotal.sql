SELECT 
	ROUND(SUM(valor_pago + juros), 1) AS SomaTotal 
FROM 
	bibliotecadb.Multa 
JOIN
	bibliotecadb.Emprestimo 
ON 
	bibliotecadb.Multa.codigo = bibliotecadb.Emprestimo.Pagamento_codigo;