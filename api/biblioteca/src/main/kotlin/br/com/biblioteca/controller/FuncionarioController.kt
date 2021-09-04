package br.com.biblioteca.controller

import br.com.biblioteca.dto.funcionario.FuncionarioRequest
import br.com.biblioteca.repository.FuncionarioRepository
import org.springframework.web.bind.annotation.*


@RequestMapping("/v1/funcionarios")
@RestController
class FuncionarioController(
    private val funcionarioRepository: FuncionarioRepository
) {

    @PostMapping
    fun create(@RequestBody funcionarioRequest: FuncionarioRequest) {
        val funcionario = funcionarioRequest.toEntity()
        funcionarioRepository.save(funcionario)
    }

    @GetMapping("/{id}")
    fun getById(@PathVariable id: String) {
        return funcionarioRepository.findById(id)
    }

    @GetMapping
    fun getAll() {
        return funcionarioRepository.findAll()
    }

}