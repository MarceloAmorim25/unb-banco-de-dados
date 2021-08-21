package com.expedicoes.mercenarios.entity

import java.math.BigDecimal
import java.time.LocalDateTime
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id

@Entity
data class Encomenda(

      @Id
      @GeneratedValue(strategy = GenerationType.IDENTITY)
      val id: Int,

      val descricao: String,

      val dataRegistro: LocalDateTime,

      val tipoExpedicao: String,

      val quantidadeMercenarios: Int,

      val previsaoRiscos: String,

      val funcionarioResponsavel: String,

      val desconto: BigDecimal,

      val territorio: String,

      val dataLimite: LocalDateTime,

      val dataConclusao: LocalDateTime

)