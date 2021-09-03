package br.com.biblioteca.repository

import br.com.biblioteca.entity.Livro
import org.springframework.data.jpa.repository.JpaRepository


interface LivroRepository : JpaRepository<Livro, Int>