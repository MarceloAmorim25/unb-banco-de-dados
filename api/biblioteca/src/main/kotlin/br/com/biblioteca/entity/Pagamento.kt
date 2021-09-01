package br.com.biblioteca.entity

import java.math.BigDecimal
import java.time.LocalDateTime
import javax.persistence.*

@Entity
@Table(name = "Pagamento")
class Pagamento(

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val codigo: Int,

    val dataPagamento: String,

    val valorPago: BigDecimal,

    val horaPagamento: LocalDateTime

)