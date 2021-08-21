package com.expedicoes.mercenarios.entity

import java.math.BigDecimal
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id


@Entity
data class Associado(

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        val id: Int,

        val nome: String,

        val genero: String,

        val raca: String,

        val idade: Int,

        val endereco: String,

        val altura: String,

        val peso: BigDecimal,

        val ocupacao: String,

        val posicaoSocial: String,

        val certificadoCidadania: String

)