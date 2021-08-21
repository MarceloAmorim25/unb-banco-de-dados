package com.expedicoes.mercenarios.controller

import com.expedicoes.mercenarios.entity.Guilda
import com.expedicoes.mercenarios.repository.GuildaRepository
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*
import java.util.*

@RequestMapping("/v1/guildas")
@RestController
class GuildaController(
     private val guildaRepository: GuildaRepository
) {

    @PostMapping
    fun criarGuilda(@RequestBody guilda: Guilda) : ResponseEntity<Guilda> {
        guildaRepository.save(guilda)
        return ResponseEntity.ok(guilda)
    }

    @GetMapping("/{id}")
    fun buscarGuilda(@PathVariable id: Int) : ResponseEntity<Optional<Guilda>> {
        val guilda = guildaRepository.findById(id)
        return ResponseEntity.ok(guilda)
    }

}