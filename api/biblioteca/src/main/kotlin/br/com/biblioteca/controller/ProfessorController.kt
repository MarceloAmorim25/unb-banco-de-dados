package br.com.biblioteca.controller

import br.com.biblioteca.dto.aluno.AlunoRequest
import br.com.biblioteca.dto.professor.ProfessorRequest
import br.com.biblioteca.entity.Professor
import br.com.biblioteca.repository.ProfessorRepository
import org.springframework.web.bind.annotation.*
import java.util.*

@RequestMapping("/v1/professores")
@RestController
class ProfessorController(
    private val professorRepository: ProfessorRepository
) {

    @PostMapping
    fun create(@RequestBody professorRequest: ProfessorRequest) {
        val professor = professorRequest.toEntity()
        professorRepository.save(professor)
    }

    @GetMapping("/{id}")
    fun getById(@PathVariable id: String) {
        return professorRepository.findById(id)
    }

    @GetMapping
    fun getAll() {
        return professorRepository.findAll()
    }

}