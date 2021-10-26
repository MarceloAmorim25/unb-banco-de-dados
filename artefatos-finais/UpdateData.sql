-- -----------------------------------------------------
-- Modificar endereço
-- -----------------------------------------------------

UPDATE
	Endereco
SET
	Numero = 3
WHERE
	idEndereco = 1;
    
UPDATE
	Endereco
SET
	Rua = "Do outro lado de antes"
WHERE
	idEndereco = 2;

UPDATE
	Endereco
SET
	Bairro = "Ceilândia"
WHERE
	idEndereco = 3;

-- -----------------------------------------------------
-- Modificar Aluno
-- -----------------------------------------------------

UPDATE
	Aluno
SET
	nome = "Isabela Ferreira de Souza Lopes",
    estado_civil = "Cansada"
WHERE
	matricula = 190027623;

-- -----------------------------------------------------
-- Atualizar Funcionario
-- -----------------------------------------------------

UPDATE
	Funcionario
SET
	nome = "Felipe Fontenele",
    cor_pele = "cinza"
WHERE
	matricula = "190027622";
 
-- -----------------------------------------------------
-- Atualizar Professor
-- -----------------------------------------------------

UPDATE
	Professor
SET
	nome = "Júlio Ferreira",
    ano_titulacao = "1500"
WHERE
	matricula = "190027626";
 
-- -----------------------------------------------------
-- Atualiza Telefone
-- -----------------------------------------------------

UPDATE
	Telefone
SET
	Numero = "(46) 95489-7179"
WHERE
	idTelefone = 1;

UPDATE
	Telefone
SET
	Numero = "(16) 24999-7688"
WHERE
	idTelefone = 2;

UPDATE
	Telefone
SET
	Numero = "(79) 91182-9667"
WHERE
	idTelefone = 3;
 
-- -----------------------------------------------------
-- Atualiza Livro
-- -----------------------------------------------------

UPDATE
	Livro
SET
	area_conhecimento = "Software",
    ano_edicao = 2019
WHERE
	codigo = 1;

UPDATE
	Livro
SET
	area_conhecimento = "Software"
WHERE
	codigo = 2;
    
UPDATE
	Livro
SET
	area_conhecimento = "Software"
WHERE
	codigo = 5;
    
-- -----------------------------------------------------
-- Atualiza Empréstimo
-- -----------------------------------------------------

UPDATE
	Emprestimo
SET
	data_devolucao = "2021-10-27 00:00:00"
WHERE
	idEmprestimo = 1;
    
UPDATE
	Emprestimo
SET
	Pagamento_codigo = 2
WHERE
	idEmprestimo = 2;   
    
UPDATE
	Emprestimo
SET
	data_emprestimo = "2021-10-21 00:00:00"
WHERE
	idEmprestimo = 3;  