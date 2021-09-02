package br.com.biblioteca.entity

import java.math.BigDecimal
import java.time.LocalDateTime
import javax.persistence.*

@Entity
@Table(name = "Pagamento")
data class Pagamento(

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val codigo: Int,

    @Column(name = "valor_pago")
    val valorPago: BigDecimal,

    @Column(name = "data_pagamento")
    val dataPagamento: String,

    @Column(name = "hora_pagamento")
    val horaPagamento: LocalDateTime

)