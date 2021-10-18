package br.com.biblioteca.repository

import br.com.biblioteca.entity.Aluno
import br.com.biblioteca.entity.Professor
import org.springframework.stereotype.Component
import javax.persistence.EntityManager
import javax.persistence.PersistenceContext
import javax.transaction.Transactional

@Component
class ProfessorRepository {

    @PersistenceContext
    lateinit var entityManager: EntityManager

    @Transactional
    fun save(professor: Professor) {

        val sqlStatment =
            "INSERT INTO `bibliotecadb`.`professor` (`matricula`,`ano_titulacao`,`carga_horaria`,`endereco`,`estado_civil`,`filiacao`,`nome`,`sexo`,`telefone`,`titulacao`)\n" +
                    "VALUES (" +
                    "${professor.matricula}," +
                    " \"${professor.anoTitulacao}\"," +
                    " \"${professor.cargaHoraria}\"," +
                    " \"${professor.endereco}\"," +
                    " \"${professor.estadoCivil}\"," +
                    " \"${professor.filiacao}\"," +
                    " \"${professor.nome}\"," +
                    " \"${professor.sexo}\"," +
                    " \"${professor.telefone}\"," +
                    " \"${professor.titulacao}\");"

        entityManager
            .createNativeQuery(sqlStatment)
            .executeUpdate()

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

    fun findAll() {

        val sqlStatment = "SELECT * FROM bibliotecadb.professor;"
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