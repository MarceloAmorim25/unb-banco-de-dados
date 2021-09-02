package br.com.biblioteca.repository

import org.springframework.stereotype.Component
import javax.persistence.EntityManager


@Component
class FuncionarioRepository(
    private val entityManager : EntityManager
) {

    fun save() {
        entityManager
            .createNativeQuery("")
    }

    fun update() {
        entityManager
            .createNativeQuery("")
    }

    fun findById() {
        entityManager
            .createNativeQuery("")
    }

    fun findAll() {
        entityManager
            .createNativeQuery("")
    }

    fun delete() {
        entityManager
            .createNativeQuery("")
    }

}