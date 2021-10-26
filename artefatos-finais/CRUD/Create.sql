-- -----------------------------------------------------
-- Criar endereço
-- -----------------------------------------------------
CALL EnderecoCRUD(
    "1",
    "Sudoeste",
    "Rua de cima",
    "12345",
    "12345",
    'Insert'
);

CALL EnderecoCRUD (
    "2",
    "Pistão Sul",
    "Rua 3",
    "12",
    "1234512345",
    'Insert'
);

CALL EnderecoCRUD (
    "3",
    "Setor Leste",
    "Conjunto 13",
    "206",
    "1234512345",
    'Insert'
);

CALL EnderecoCRUD (
    "4",
    "Sobradinho",
    "3",
    "206",
    "1234512345",
    'Insert'
);

CALL EnderecoCRUD (
    "5",
    "Asa Norte",
    "Conjunto 4",
    "9",
    "1234512345",
    'Insert'
);

-- -----------------------------------------------------
-- Criar Aluno
-- -----------------------------------------------------
CALL AlunoCRUD (
    "190027623",
    "Isabela de Souza Ferreira",
    "Feminina",
    "Casada",
    "Partido Y",
    "1",
    'Insert'
);

CALL AlunoCRUD (
    "190027629",
    "Júlio Fernandez Pereira",
    "Masculino",
    "Casado",
    "Partido Z",
    "2",
    'Insert'
);

-- -----------------------------------------------------
-- Criar Funcionario
-- -----------------------------------------------------
CALL FuncionarioCRUD (
    "190027622",
    "Felipe Fon",
    "Masculino",
    "Solteiro",
    "Partido x",
    3,
    "sabe dar mortal",
    "preta",
    "3",
    'Insert'
);

-- -----------------------------------------------------
-- Criar Professor
-- -----------------------------------------------------
CALL ProfessorCRUD (
    "190027626",
    "Carlos Ferreira",
    "Masculino",
    "Casado",
    "Partido Y",
    8,
    "x",
    "2020",
    "4",
    'Insert'
);

CALL ProfessorCRUD (
    "190027627",
    "Jorge dos Reis",
    "Masculino",
    "Casado",
    "Partido Y",
    8,
    "x",
    "2020",
    "5",
    'Insert'
);

-- -----------------------------------------------------
-- Criar Telefone
-- -----------------------------------------------------
CALL TelefoneCRUD (
    1,
    "(46) 95489-7971",
    190027622,
    NULL,
    NULL,
    'Insert'
);

CALL TelefoneCRUD (
    2,
    "(16) 99942-7688",
    NULL,
    NULL,
    190027627,
    'Insert'
);

CALL TelefoneCRUD (
    3,
    "(79) 94811-9667",
    NULL,
    NULL,
    190027626,
    'Insert'
);

CALL TelefoneCRUD (
    4,
    "(31) 96208-8867",
    NULL,
    190027629,
    NULL,
    'Insert'
);

CALL TelefoneCRUD (
    5,
    "(73) 90619-2835",
    NULL,
    190027623,
    NULL,
    'Insert'
);

-- -----------------------------------------------------
-- Criar Livro
-- -----------------------------------------------------
CALL LivroCRUD (
    1,
    "Arquitetura Limpa",
    "Alta Books",
    "Uncle Bob",
    2020,
    232,
    "Engenharia de Software",
    "123123123",
    'Insert'
);

CALL LivroCRUD(
    2,
    "A Revolução dos Bixos",
    "Companhia das Letras",
    "George Orwell",
    2007,
    147,
    "Fantasia",
    "1231983543",
    'Insert'
);

CALL LivroCRUD (
    3,
    "Introdução à Linguagem SQL",
    "Novatec",
    "Thomas Nield",
    2016,
    141,
    "Banco de Dados",
    "981758873",
    'Insert'
);

CALL LivroCRUD (
    4,
    "Python para Análise de Dados",
    "Novatec",
    "Wes McKinney",
    2018,
    615,
    "Análise de Dados",
    "9817582133",
    'Insert'
);

CALL LivroCRUD (
    5,
    "O Aranha Escarlate: De volta à máscara",
    "Panini Comics",
    "Ben Reilly",
    2018,
    124,
    "Heróis",
    "8201282133",
    'Insert'
);

-- -----------------------------------------------------
-- Criar Multa
-- -----------------------------------------------------
CALL MultaCRUD (1, '2.0', '0.3', 'Insert');

CALL MultaCRUD (2, '2.0', '0.5', 'Insert');

CALL MultaCRUD (3, 2.0, 0.5, 'Insert');

CALL MultaCRUD (4, 2.0, 0.7, 'Insert');

CALL MultaCRUD (5, 2.0, 0.9, 'Insert');

-- -----------------------------------------------------
-- Criar Empréstimo
-- -----------------------------------------------------
CALL EmprestimoCRUD (
    1,
    1,
    "2021-10-20 00:00:00",
    "2021-10-27 00:00:00",
    190027622,
    NULL,
    NULL,
    1,
    'Insert'
);

CALL EmprestimoCRUD (
    2,
    1,
    "2021-10-02 00:00:00",
    "2021-10-10 00:00:00",
    NULL,
    NULL,
    190027626,
    2,
    'Insert'
);

CALL EmprestimoCRUD (
    3,
    4,
    "2021-09-19 00:00:00",
    "2021-10-26 00:00:00",
    NULL,
    NULL,
    190027627,
    4,
    'Insert'
);

CALL EmprestimoCRUD (
    4,
    2,
    "2021-08-10 00:00:00",
    "2021-09-12 00:00:00",
    NULL,
    190027623,
    NULL,
    5,
    'Insert'
);

CALL EmprestimoCRUD (
    5,
    3,
    "2021-08-19 00:00:00",
    "2021-10-01 00:00:00",
    NULL,
    190027629,
    NULL,
    3,
    'Insert'
);