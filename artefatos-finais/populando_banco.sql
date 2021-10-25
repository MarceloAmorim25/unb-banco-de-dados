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
    "Isabela de Souza Ferreira",
    "Feminina",
    "Casada",
    "Partido Y",
	"1"
);

INSERT INTO `bibliotecadb`.`Aluno`
(`matricula`,
`nome`,
`sexo`,
`estado_civil`,
`filiacao`,
`Endereco_idEndereco`)
VALUES
(
	"190027629",
    "Júlio Fernandez Pereira",
    "Masculino",
    "Casado",
    "Partido Z",
	"2"
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
    "3"
);

SELECT * FROM bibliotecadb.Funcionario;

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
    "190027626",
    "Carlos Ferreira",
    "Masculino",
    "Casado",
    "Partido Y",
    8,
    "x",
    "2020",
    "4"
);

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
    "190027627",
    "Jorge dos Reis",
    "Masculino",
    "Casado",
    "Partido Y",
    8,
    "x",
    "2020",
    "5"
);

SELECT * FROM bibliotecadb.Professor;

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
	2,
   "A Revolução dos Bixos",
   "Companhia das Letras",
   "George Orwell",
   2007,
   147,
   "Fantasia",
   "1231983543"
);

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
	3,
   "Introdução à Linguagem SQL",
   "Novatec",
   "Thomas Nield",
   2016,
   141,
   "Banco de Dados",
   "981758873"
);

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
	3,
   "Python para Análise de Dados",
   "Novatec",
   "Wes McKinney",
   2018,
   615,
   "Análise de Dados",
   "9817582133"
);

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
	4,
   "Python para Análise de Dados",
   "Novatec",
   "Wes McKinney",
   2018,
   615,
   "Análise de Dados",
   "9817582133"
);

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
	5,
   "O Aranha Escarlate: De volta à máscara",
   "Panini Comics",
   "Ben Reilly",
   2018,
   124,
   "Heróis",
   "8201282133"
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