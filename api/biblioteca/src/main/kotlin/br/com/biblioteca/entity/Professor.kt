package br.com.biblioteca.entity

import javax.persistence.*

@Entity
@Table(name = "Professor")
data class Professor(

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val matricula: Int,

    val nome: String,

    val sexo: String,

    val estadoCivil: String,

    val endereco: String,

    val filiacao: String,

    val telefone: String,

    val cargaHoraria: Int,

    val titulacao: String,

    val anoTitulacao: Int

)