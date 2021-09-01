package br.com.biblioteca.repository

import org.springframework.stereotype.Component
import javax.persistence.EntityManager

@Component
class AlunoRepository(
    private val entityManager : EntityManager
) {

}