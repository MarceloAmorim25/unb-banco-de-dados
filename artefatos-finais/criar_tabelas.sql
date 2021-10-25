-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bibliotecadb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bibliotecadb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bibliotecadb` ;
USE `bibliotecadb` ;

-- -----------------------------------------------------
-- Table `bibliotecadb`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bibliotecadb`.`Endereco` (
  `idEndereco` INT NOT NULL,
  `Bairro` VARCHAR(45) NULL,
  `Rua` VARCHAR(45) NULL,
  `Numero` VARCHAR(45) NULL,
  `CEP` VARCHAR(45) NULL,
  PRIMARY KEY (`idEndereco`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bibliotecadb`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bibliotecadb`.`Funcionario` (
  `matricula` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  `estado_civil` VARCHAR(45) NULL,
  `filiacao` VARCHAR(45) NULL,
  `numero_dependentes` VARCHAR(45) NULL,
  `habilidades_especificas` VARCHAR(45) NULL,
  `cor_pele` VARCHAR(45) NULL,
  `Endereco_idEndereco` INT NOT NULL,
  PRIMARY KEY (`matricula`),
  INDEX `fk_Funcionario_Endereco1_idx` (`Endereco_idEndereco` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionario_Endereco1`
    FOREIGN KEY (`Endereco_idEndereco`)
    REFERENCES `bibliotecadb`.`Endereco` (`idEndereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bibliotecadb`.`Aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bibliotecadb`.`Aluno` (
  `matricula` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  `estado_civil` VARCHAR(45) NULL,
  `filiacao` VARCHAR(45) NULL,
  `Endereco_idEndereco` INT NOT NULL,
  PRIMARY KEY (`matricula`),
  INDEX `fk_Aluno_Endereco1_idx` (`Endereco_idEndereco` ASC) VISIBLE,
  CONSTRAINT `fk_Aluno_Endereco1`
    FOREIGN KEY (`Endereco_idEndereco`)
    REFERENCES `bibliotecadb`.`Endereco` (`idEndereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bibliotecadb`.`Professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bibliotecadb`.`Professor` (
  `matricula` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  `estado_civil` VARCHAR(45) NULL,
  `filiacao` VARCHAR(45) NULL,
  `carga_horaria` INT NULL,
  `titulacao` VARCHAR(45) NULL,
  `ano_titulacao` INT NULL,
  `Endereco_idEndereco` INT NOT NULL,
  PRIMARY KEY (`matricula`),
  INDEX `fk_Professor_Endereco1_idx` (`Endereco_idEndereco` ASC) VISIBLE,
  CONSTRAINT `fk_Professor_Endereco1`
    FOREIGN KEY (`Endereco_idEndereco`)
    REFERENCES `bibliotecadb`.`Endereco` (`idEndereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bibliotecadb`.`Pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bibliotecadb`.`Pagamento` (
  `codigo` INT NOT NULL,
  `valor_pago` DECIMAL NULL,
  `juros` DECIMAL NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bibliotecadb`.`Emprestimo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bibliotecadb`.`Emprestimo` (
  `idEmprestimo` INT NOT NULL,
  `data_emprestimo` DATETIME NULL,
  `data_devolucao` DATETIME NULL,
  `Funcionario_matricula` INT NULL,
  `Aluno_matricula` INT NULL,
  `Professor_matricula` INT NULL,
  `Pagamento_codigo` INT NULL,
  PRIMARY KEY (`idEmprestimo`),
  INDEX `fk_Emprestimo_Funcionario1_idx` (`Funcionario_matricula` ASC) VISIBLE,
  INDEX `fk_Emprestimo_Aluno1_idx` (`Aluno_matricula` ASC) VISIBLE,
  INDEX `fk_Emprestimo_Professor1_idx` (`Professor_matricula` ASC) VISIBLE,
  INDEX `fk_Emprestimo_Pagamento1_idx` (`Pagamento_codigo` ASC) VISIBLE,
  UNIQUE INDEX `Funcionario_matricula_UNIQUE` (`Funcionario_matricula` ASC) VISIBLE,
  UNIQUE INDEX `Aluno_matricula_UNIQUE` (`Aluno_matricula` ASC) VISIBLE,
  UNIQUE INDEX `Professor_matricula_UNIQUE` (`Professor_matricula` ASC) VISIBLE,
  UNIQUE INDEX `Pagamento_codigo_UNIQUE` (`Pagamento_codigo` ASC) VISIBLE,
  CONSTRAINT `fk_Emprestimo_Funcionario1`
    FOREIGN KEY (`Funcionario_matricula`)
    REFERENCES `bibliotecadb`.`Funcionario` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Emprestimo_Aluno1`
    FOREIGN KEY (`Aluno_matricula`)
    REFERENCES `bibliotecadb`.`Aluno` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Emprestimo_Professor1`
    FOREIGN KEY (`Professor_matricula`)
    REFERENCES `bibliotecadb`.`Professor` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Emprestimo_Pagamento1`
    FOREIGN KEY (`Pagamento_codigo`)
    REFERENCES `bibliotecadb`.`Pagamento` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bibliotecadb`.`Livro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bibliotecadb`.`Livro` (
  `codigo` INT NOT NULL,
  `titulo` VARCHAR(45) NULL,
  `editora` VARCHAR(45) NULL,
  `autor` VARCHAR(45) NULL,
  `ano_edicao` INT NULL,
  `numero_paginas` INT NULL,
  `area_conhecimento` VARCHAR(45) NULL,
  `isbn` VARCHAR(45) NULL,
  `Emprestimo_idEmprestimo` INT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_Livro_Emprestimo1_idx` (`Emprestimo_idEmprestimo` ASC) VISIBLE,
  UNIQUE INDEX `Emprestimo_idEmprestimo_UNIQUE` (`Emprestimo_idEmprestimo` ASC) VISIBLE,
  CONSTRAINT `fk_Livro_Emprestimo1`
    FOREIGN KEY (`Emprestimo_idEmprestimo`)
    REFERENCES `bibliotecadb`.`Emprestimo` (`idEmprestimo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bibliotecadb`.`Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bibliotecadb`.`Telefone` (
  `idTelefone` INT NOT NULL,
  `Numero` VARCHAR(45) NULL,
  `Funcionario_matricula` INT NOT NULL,
  `Aluno_matricula` INT NOT NULL,
  `Professor_matricula` INT NOT NULL,
  PRIMARY KEY (`idTelefone`),
  INDEX `fk_Telefone_Funcionario1_idx` (`Funcionario_matricula` ASC) VISIBLE,
  INDEX `fk_Telefone_Aluno1_idx` (`Aluno_matricula` ASC) VISIBLE,
  INDEX `fk_Telefone_Professor1_idx` (`Professor_matricula` ASC) VISIBLE,
  CONSTRAINT `fk_Telefone_Funcionario1`
    FOREIGN KEY (`Funcionario_matricula`)
    REFERENCES `bibliotecadb`.`Funcionario` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Telefone_Aluno1`
    FOREIGN KEY (`Aluno_matricula`)
    REFERENCES `bibliotecadb`.`Aluno` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Telefone_Professor1`
    FOREIGN KEY (`Professor_matricula`)
    REFERENCES `bibliotecadb`.`Professor` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
