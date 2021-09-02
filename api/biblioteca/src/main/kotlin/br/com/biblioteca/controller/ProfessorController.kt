package br.com.biblioteca.controller

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
    fun create(@RequestBody professor: Professor) {
        professorRepository.save(professor)
    }

    @GetMapping("/{id}")
    fun getById(@PathVariable id: Int) : Optional<Professor> {
        return professorRepository.findById(id)
    }

    @GetMapping
    fun getAll() : List<Professor> {
        return professorRepository.findAll()
    }

}