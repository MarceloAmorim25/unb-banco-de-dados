### CRIAR ITENS NA TABELA ALUNO

```

INSERT INTO `bibliotecadb`.`Aluno`
    (`matricula`,`nome`,`sexo`,`estado_civil`,`filiacao`,`endereco`,`telefone`)
VALUES
    (1, "teste 1", "teste", "teste", "teste", "teste", "teste"),
    (2, "teste 2", "teste", "teste", "teste", "teste", "teste"),
    (3, "teste 3", "teste", "teste", "teste", "teste", "teste"),
    (4, "teste 4", "teste", "teste", "teste", "teste", "teste"),
    (5, "teste 5", "teste", "teste", "teste", "teste", "teste"),
    (6, "teste 6", "teste", "teste", "teste", "teste", "teste"),
    (7, "teste 7", "teste", "teste", "teste", "teste", "teste"),
    (8, "teste 8", "teste", "teste", "teste", "teste", "teste"),
    (9, "teste 9", "teste", "teste", "teste", "teste", "teste"),
    (10, "teste 10", "teste", "teste", "teste", "teste", "teste");
    
```


### BUSCAR TODOS OS ITENS

```

SELECT * FROM bibliotecadb.Aluno;

```