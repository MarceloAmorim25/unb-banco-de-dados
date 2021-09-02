-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Funcionario` (
  `matricula` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  `estado_civil` VARCHAR(45) NULL,
  `filiacao` VARCHAR(45) NULL,
  `endereco` VARCHAR(45) NULL,
  `telefone` VARCHAR(45) NULL,
  `numero_dependentes` VARCHAR(45) NULL,
  `habilidades_especificas` VARCHAR(45) NULL,
  `cor_pele` VARCHAR(45) NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Aluno` (
  `matricula` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  `estado_civil` VARCHAR(45) NULL,
  `filiacao` VARCHAR(45) NULL,
  `endereco` VARCHAR(45) NULL,
  `telefone` VARCHAR(45) NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Professor` (
  `matricula` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  `estado_civil` VARCHAR(45) NULL,
  `endereco` VARCHAR(45) NULL,
  `filiacao` VARCHAR(45) NULL,
  `telefone` VARCHAR(45) NULL,
  `carga_horaria` INT NULL,
  `titulacao` VARCHAR(45) NULL,
  `ano_titulacao` INT NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Livro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Livro` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NULL,
  `editora` VARCHAR(45) NULL,
  `autor` VARCHAR(45) NULL,
  `ano_edicao` INT NULL,
  `numero_paginas` INT NULL,
  `area_conhecimento` VARCHAR(45) NULL,
  `isbn` VARCHAR(45) NULL,
  `Aluno_matricula` INT NOT NULL,
  `Funcionario_matricula` INT NOT NULL,
  `Professor_matricula` INT NOT NULL,
  PRIMARY KEY (`codigo`, `Aluno_matricula`, `Funcionario_matricula`, `Professor_matricula`),
  INDEX `fk_Livro_Aluno_idx` (`Aluno_matricula` ASC) VISIBLE,
  INDEX `fk_Livro_Funcionario1_idx` (`Funcionario_matricula` ASC) VISIBLE,
  INDEX `fk_Livro_Professor1_idx` (`Professor_matricula` ASC) VISIBLE,
  CONSTRAINT `fk_Livro_Aluno`
    FOREIGN KEY (`Aluno_matricula`)
    REFERENCES `mydb`.`Aluno` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Livro_Funcionario1`
    FOREIGN KEY (`Funcionario_matricula`)
    REFERENCES `mydb`.`Funcionario` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Livro_Professor1`
    FOREIGN KEY (`Professor_matricula`)
    REFERENCES `mydb`.`Professor` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pagamento` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `valor_pago` DECIMAL NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Livro_has_Pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Livro_has_Pagamento` (
  `Livro_codigo` INT NOT NULL,
  `Livro_Aluno_matricula` INT NOT NULL,
  `Livro_Funcionario_matricula` INT NOT NULL,
  `Livro_Professor_matricula` INT NOT NULL,
  `Pagamento_codigo` INT NOT NULL,
  `data_pagamento` DATE NULL,
  `hora_pagamento` TIME NULL,
  PRIMARY KEY (`Livro_codigo`, `Livro_Aluno_matricula`, `Livro_Funcionario_matricula`, `Livro_Professor_matricula`, `Pagamento_codigo`),
  INDEX `fk_Livro_has_Pagamento_Pagamento1_idx` (`Pagamento_codigo` ASC) VISIBLE,
  INDEX `fk_Livro_has_Pagamento_Livro1_idx` (`Livro_codigo` ASC, `Livro_Aluno_matricula` ASC, `Livro_Funcionario_matricula` ASC, `Livro_Professor_matricula` ASC) VISIBLE,
  CONSTRAINT `fk_Livro_has_Pagamento_Livro1`
    FOREIGN KEY (`Livro_codigo` , `Livro_Aluno_matricula` , `Livro_Funcionario_matricula` , `Livro_Professor_matricula`)
    REFERENCES `mydb`.`Livro` (`codigo` , `Aluno_matricula` , `Funcionario_matricula` , `Professor_matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Livro_has_Pagamento_Pagamento1`
    FOREIGN KEY (`Pagamento_codigo`)
    REFERENCES `mydb`.`Pagamento` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
