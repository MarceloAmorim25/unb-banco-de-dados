package br.com.biblioteca.repository

import br.com.biblioteca.entity.Aluno
import org.springframework.stereotype.Component
import javax.persistence.EntityManager
import javax.persistence.PersistenceContext
import javax.transaction.Transactional

@Component
class AlunoRepository {

    @PersistenceContext
    lateinit var entityManager: EntityManager

    @Transactional
    fun save(aluno: Aluno) {

        val sqlStatment =
            "INSERT INTO `bibliotecadb`.`aluno` (`matricula`,`nome`,`sexo`,`estado_civil`,`filiacao`,`endereco`,`telefone`)\n" +
                    "VALUES (" +
                    "${aluno.matricula}," +
                    " \"${aluno.nome}\"," +
                    " \"${aluno.sexo}\"," +
                    " \"${aluno.estadoCivil}\"," +
                    " \"${aluno.filiacao}\"," +
                    " \"${aluno.endereco}\"," +
                    " \"${aluno.telefone}\");"

        entityManager
            .createNativeQuery(sqlStatment)
            .executeUpdate()

    }

    fun findAll() {

        val sqlStatment = "SELECT * FROM bibliotecadb.Aluno;"
        entityManager.createNativeQuery(sqlStatment, Aluno::class.java)
    }

    fun contagemAll(){
        val sqlStatment = "SELECT COUNT(*) AS Contagem FROM( " +
                "SELECT nome FROM `bibliotecadb`.`Aluno`" +
                "UNION ALL" +
                "SELECT nome FROM `bibliotecadb`.`Funcionario`" +
                "UNION" +
                "SELECT nome FROM `bibliotecadb`.`Professor`" +
                ") AS users";
        entityManager.createNativeQuery(sqlStatment, Int);
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