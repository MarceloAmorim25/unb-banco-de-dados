package br.com.biblioteca.repository

import br.com.biblioteca.entity.Professor
import org.springframework.data.jpa.repository.JpaRepository

interface ProfessorRepository : JpaRepository<Professor, Int>