package br.com.biblioteca.repository

import br.com.biblioteca.entity.Aluno
import org.springframework.stereotype.Component
import javax.persistence.EntityManager

@Component
class AlunoRepository(
    private val entityManager : EntityManager
) {

    fun save(aluno: Aluno) {

        val sqlStatment = "INSERT INTO `bibliotecadb`.`Aluno` (`matricula`,`nome`,`sexo`,`estado_civil`,`filiacao`,`endereco`,`telefone`)\n" +
                "VALUES (1, \"${aluno.nome}\", \"${aluno.sexo}\", \"${aluno.estadoCivil}\", \"${aluno.filiacao}\", \"${aluno.endereco}\", \"${aluno.telefone}\");"

        entityManager.createNativeQuery(sqlStatment)

    }

    fun findAll() {

        val sqlStatment= "SELECT * FROM bibliotecadb.Aluno;"
        entityManager.createNativeQuery(sqlStatment, Aluno::class.java)

    }

    fun update() {
        entityManager
            .createNativeQuery("")
    }

    fun findById(id: String) {
        entityManager
            .createNativeQuery("")
    }

    fun delete() {
        entityManager
            .createNativeQuery("")
    }

}