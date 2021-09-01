package br.com.biblioteca.repository

import org.springframework.stereotype.Component
import javax.persistence.EntityManager

@Component
class LivroRepository(
    private val entityManager : EntityManager
) {

}