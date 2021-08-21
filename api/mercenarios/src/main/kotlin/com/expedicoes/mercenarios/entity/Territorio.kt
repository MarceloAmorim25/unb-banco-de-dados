package com.expedicoes.mercenarios.entity

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id


@Entity
data class Territorio(

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        val id: Int,

        val nome: String,

        val riscos: String

)