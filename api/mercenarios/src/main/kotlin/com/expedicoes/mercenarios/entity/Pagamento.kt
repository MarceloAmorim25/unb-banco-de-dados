package com.expedicoes.mercenarios.entity

import java.math.BigDecimal
import java.time.LocalDateTime
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id

@Entity
data class Pagamento(

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        val id: Int,

        val tipoPagamento: String,

        val dataInicial: LocalDateTime,

        val dataFinal: LocalDateTime,

        val numeroParcelas: String,

        val valorTotal: BigDecimal

)