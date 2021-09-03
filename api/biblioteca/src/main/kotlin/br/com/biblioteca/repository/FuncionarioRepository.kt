package br.com.biblioteca.repository


import br.com.biblioteca.entity.Aluno
import br.com.biblioteca.entity.Funcionario
import org.springframework.stereotype.Component
import javax.persistence.EntityManager
import javax.persistence.PersistenceContext
import javax.transaction.Transactional

@Component
class FuncionarioRepository {

    @PersistenceContext
    lateinit var entityManager: EntityManager

    @Transactional
    fun save(funcionario: Funcionario) {

        val sqlStatment =
            "INSERT INTO `bibliotecadb`.`funcionario` (`matricula`,`cor_pele`,`endereco`,`estado_civil`,`filiacao`,`habilidades_especificas`,`nome`,`numero_dependentes`,`sexo`,`telefone`)\n" +
                    "VALUES (" +
                    "${funcionario.matricula}," +
                    " \"${funcionario.corPele}\"," +
                    " \"${funcionario.endereco}\"," +
                    " \"${funcionario.estadoCivil}\"," +
                    " \"${funcionario.filiacao}\"," +
                    " \"${funcionario.habilidadesEspecificas}\"," +
                    " \"${funcionario.nome}\"," +
                    " \"${funcionario.numeroDependentes}\"," +
                    " \"${funcionario.sexo}\"," +
                    " \"${funcionario.telefone}\");"

        entityManager
            .createNativeQuery(sqlStatment)
            .executeUpdate()

    }

}
