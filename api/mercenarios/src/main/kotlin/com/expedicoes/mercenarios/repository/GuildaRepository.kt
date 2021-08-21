package com.expedicoes.mercenarios.repository

import com.expedicoes.mercenarios.entity.Guilda
import org.springframework.data.jpa.repository.JpaRepository

interface GuildaRepository : JpaRepository<Guilda, Int> {
}