package br.com.biblioteca.entity

import java.math.BigDecimal
import java.time.LocalDateTime
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id

@Entity
class Pagamento(

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val codigo: Int,

    val dataPagamento: String,

    val valorPago: BigDecimal,

    val horaPagamento: LocalDateTime

)