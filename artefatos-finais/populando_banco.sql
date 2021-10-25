-- -----------------------------------------------------
-- Criar endereço e consultar
-- -----------------------------------------------------

INSERT INTO `bibliotecadb`.`Endereco`
(`idEndereco`,
`Bairro`,
`Rua`,
`Numero`,
`CEP`)
VALUES
(
    "1",
    "Sudoeste",
    "Rua de cima",
    "12345",
    "12345"
);

INSERT INTO `bibliotecadb`.`Endereco`
(`idEndereco`,
`Bairro`,
`Rua`,
`Numero`,
`CEP`)
VALUES
(
    "2",
    "Pistão Sul",
    "Rua 3",
    "12",
    "1234512345"
);

INSERT INTO `bibliotecadb`.`Endereco`
(`idEndereco`,
`Bairro`,
`Rua`,
`Numero`,
`CEP`)
VALUES
(
    "3",
    "Setor Leste",
    "Conjunto 13",
    "206",
    "1234512345"
);

INSERT INTO `bibliotecadb`.`Endereco`
(`idEndereco`,
`Bairro`,
`Rua`,
`Numero`,
`CEP`)
VALUES
(
    "4",
    "Sobradinho",
    "3",
    "206",
    "1234512345"
);

INSERT INTO `bibliotecadb`.`Endereco`
(`idEndereco`,
`Bairro`,
`Rua`,
`Numero`,
`CEP`)
VALUES
(
    "5",
    "Asa Norte",
    "Conjunto 4",
    "9",
    "1234512345"
);
SELECT * FROM bibliotecadb.Endereco;

-- -----------------------------------------------------
-- Criar Aluno e consultar
-- -----------------------------------------------------

INSERT INTO `bibliotecadb`.`Aluno`
(`matricula`,
`nome`,
`sexo`,
`estado_civil`,
`filiacao`,
`Endereco_idEndereco`)
VALUES
(
	"190027623",
    "Isabel Ferreira",
    "Masculino",
    "Casada",
    "Partido Y",
	"1"
);

SELECT * FROM bibliotecadb.Aluno;

-- -----------------------------------------------------
-- Criar Funcionario e consultar
-- -----------------------------------------------------

INSERT INTO `bibliotecadb`.`Funcionario`
(`matricula`,
`nome`,
`sexo`,
`estado_civil`,
`filiacao`,
`numero_dependentes`,
`habilidades_especificas`,
`cor_pele`,
`Endereco_idEndereco`)
VALUES
(
	"190027622",
    "Felipe Fon",
    "Masculino",
    "Solteiro",
    "Partido x",
    3,
    "sabe dar mortal",
    "preta",
    "1"
);

SELECT * FROM bibliotecadb.Funcionario;

-- -----------------------------------------------------
-- Criar Livro e consultar
-- -----------------------------------------------------

INSERT INTO `bibliotecadb`.`Livro`
(`codigo`,
`titulo`,
`editora`,
`autor`,
`ano_edicao`,
`numero_paginas`,
`area_conhecimento`,
`isbn`)
VALUES
(
	1,
   "Arquitetura Limpa",
   "Alta Books",
   "Uncle Bob",
   2020,
   232,
   "Engenharia de Software",
   "123123123"
);

SELECT * FROM bibliotecadb.Livro;


-- -----------------------------------------------------
-- Criar Pagamento e consultar
-- -----------------------------------------------------

INSERT INTO `bibliotecadb`.`Pagamento`
(`codigo`,
`valor_pago`,
`juros`)
VALUES
(
    "1",
    "10",
    "2"
);

SELECT * FROM bibliotecadb.Pagamento;


-- -----------------------------------------------------
-- Criar Professor e consultar
-- -----------------------------------------------------

INSERT INTO `bibliotecadb`.`Professor`
(`matricula`,
`nome`,
`sexo`,
`estado_civil`,
`filiacao`,
`carga_horaria`,
`titulacao`,
`ano_titulacao`,
`Endereco_idEndereco`)
VALUES
(
    "190027624",
    "Isabel Ferreira",
    "Masculino",
    "Casada",
    "Partido Y",
    8,
    "x",
    "2020",
    "1"
);

SELECT * FROM bibliotecadb.Professor;

-- -----------------------------------------------------
-- Criar Telefone e consultar
-- -----------------------------------------------------

INSERT INTO `bibliotecadb`.`Telefone`
(`idTelefone`,
`Numero`,
`Funcionario_matricula`,
`Aluno_matricula`,
`Professor_matricula`)
VALUES
(
    1,
    "988888888",
    NULL,
    NULL,
    190027623
);

SELECT * FROM bibliotecadb.Telefone;

-- -----------------------------------------------------
-- Criar Empréstimo e consultar
-- -----------------------------------------------------

INSERT INTO `bibliotecadb`.`Emprestimo`
(`idEmprestimo`,
`data_emprestimo`,
`data_devolucao`,
`Funcionario_matricula`,
`Aluno_matricula`,
`Professor_matricula`,
`Pagamento_codigo`)
VALUES
(
    "1",
    "2021-10-20 20:10:10",
    "2021-10-27 20:10:10",
    "190027622",
    NULL,
    NULL,
    NULL
);