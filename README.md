# Sistema de Biblioteca
## Universidade de Brasília - 2021

Grupo de trabalho:

Felipe Fontenele
</br>
Marcelo Amorim


Repositório dedicado à matéria de Banco de Dados. Esse sistema fictício é a tentativa de traduzir um minimundo numa API. O desenvolvimento
é focado em aprofundar conceitos de bancos de dados relacionais, não sendo, portanto, o foco desse repositório a API em si.

## Estrutural geral do projeto


![](/estrutura-geral.png)


## Setup ambiente para executar a API

Como configurar o ambiente:

- Uma opção é criar uma instância do MySql via Docker. O arquivo docker-compose.yaml facilitará essa tarefa. É necessário executar o comando na pasta do arquivo: 

> docker-compose up

## Sobre a API desenvolvida:

<div style="display: inline_block"><br>
  <img align="center" alt="Kotlin" height="30" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/kotlin/kotlin-original.svg">
  <img align="center" alt="Kotlin" height="40" width="50" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original.svg">
  <img align="center" alt="Kotlin" height="40" width="50" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/spring/spring-original.svg">
</div>

<br>

- Linguagem: Kotlin
- Framework: Spring
- SGBD: MySQL
- GUI para interagir com o banco de dados: MySQL Workbench

## Pesquisas

1 - Quantidade  de  livros  emprestados  por  período  e  por  aluno / professor  e funcionário;

```

```

2 - Livros mais emprestados por período;


3 - Livros por Área;

```

```

4 - Quantidade de alunos, professores e funcionários cadastrados na Biblioteca;

```

SELECT COUNT(*) AS Contagem FROM(SELECT nome FROM `bibliotecadb`.`Aluno`
UNION ALL 
SELECT nome FROM `bibliotecadb`.`Funcionario`
UNION 
SELECT nome FROM `bibliotecadb`.`Professor`
) AS users";

```


5 - Pagamento Total de Multas efetuado em um bimestre.

```

SELECT SUM(valor_pago+juros) FROM Pagamento JOIN Emprestimo ON Emprestimo.Pagamento_codigo = Pagamento.codigo;

```


## Modelagem Mysql-Workbench


![](/workbench-modelagem/modelagem_mysql_workbench.png)