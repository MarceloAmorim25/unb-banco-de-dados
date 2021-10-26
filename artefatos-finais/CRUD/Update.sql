-- -----------------------------------------------------
-- Atualiza endereço
-- -----------------------------------------------------
CALL EnderecoCRUD(
    "1",
    "",
    "",
    "3",
    "",
    'Update'
);

CALL EnderecoCRUD(
    "2",
    "",
    "Do outro lado de antes",
    "",
    "",
    'Update'
);

CALL EnderecoCRUD(
    "3",
    "Ceilândia",
    "",
    "",
    "",
    'Update'
);

-- -----------------------------------------------------
-- Atualiza Aluno
-- -----------------------------------------------------
CALL AlunoCRUD (
    "190027623",
    "Isabela Ferreira de Souza Lopes",
    "",
    "",
    "",
    "",
    'Update'
);

-- -----------------------------------------------------
-- Atualiza Funcionario
-- -----------------------------------------------------
CALL FuncionarioCRUD (
    "190027622",
    "Felipe Fontenele",
    "",
    "",
    "",
    0,
    "",
    "cinza",
    "",
    'Update'
);

-- -----------------------------------------------------
-- Atualiza Professor
-- -----------------------------------------------------
CALL ProfessorCRUD (
    "190027626",
    "Júlio Ferreira",
    "",
    "",
    "",
    0,
    "",
    0,
    1500,
    'Update'
);

-- -----------------------------------------------------
-- Atualiza Telefone
-- -----------------------------------------------------
CALL TelefoneCRUD (
    1,
    "(46) 95489-7179",
    0,
    0,
    0,
    'Update'
);

CALL TelefoneCRUD (
    2,
    "(16) 24999-7688",
    0,
    0,
    0,
    'Update'
);

CALL TelefoneCRUD (
    3,
    "(79) 91182-9667",
    0,
    0,
    0,
    'Update'
);

-- -----------------------------------------------------
-- Atualiza Livro
-- -----------------------------------------------------
CALL LivroCRUD (
    1,
    "",
    "",
    "",
    0,
    0,
    "Software",
    "",
    'Update'
);

CALL LivroCRUD (
    2,
    "",
    "",
    "",
    0,
    0,
    "",
    "Software",
    'Update'
);

CALL LivroCRUD (
    5,
    "",
    "",
    "",
    0,
    0,
    "Software",
    "",
    'Update'
);

-- -----------------------------------------------------
-- Atualiza Multa
-- -----------------------------------------------------
CALL MultaCRUD (1, 0, 0, 'Update');

-- -----------------------------------------------------
-- Atualiza Empréstimo
-- -----------------------------------------------------
CALL EmprestimoCRUD (
    1,
    0,
    NULL,
    NULL,
    0,
    NULL,
    NULL,
    0,
    'Update'
);