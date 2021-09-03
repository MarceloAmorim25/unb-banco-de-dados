package br.com.biblioteca.repository

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

}