package br.com.biblioteca.repository

import br.com.biblioteca.entity.Funcionario
import org.springframework.data.jpa.repository.JpaRepository

interface FuncionarioRepository : JpaRepository<Funcionario, Int>