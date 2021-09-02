### CRIAR ITENS NA TABELA FUNCIONARIO

```

INSERT INTO `bibliotecadb`.`Funcionario`
(`matricula`,
`nome`,
`sexo`,
`estado_civil`,
`filiacao`,
`endereco`,
`telefone`,
`numero_dependentes`,
`habilidades_especificas`,
`cor_pele`)
VALUES
(1, "teste1", "teste", "teste", "teste", "teste", "teste", 2, "teste", "teste"),
(2, "teste2", "teste", "teste", "teste", "teste", "teste", 2, "teste", "teste"),
(3, "teste3", "teste", "teste", "teste", "teste", "teste", 2, "teste", "teste"),
(4, "teste4", "teste", "teste", "teste", "teste", "teste", 2, "teste", "teste"),
(5, "teste5", "teste", "teste", "teste", "teste", "teste", 2, "teste", "teste"),
(6, "teste6", "teste", "teste", "teste", "teste", "teste", 2, "teste", "teste"),
(7, "teste7", "teste", "teste", "teste", "teste", "teste", 2, "teste", "teste"),
(8, "teste8", "teste", "teste", "teste", "teste", "teste", 2, "teste", "teste"),
(9, "teste9", "teste", "teste", "teste", "teste", "teste", 2, "teste", "teste"),
(10, "teste10", "teste", "teste", "teste", "teste", "teste", 2, "teste", "teste");

```

### BUSCAR TODOS OS ITENS

```

SELECT * FROM bibliotecadb.Funcionario;

```