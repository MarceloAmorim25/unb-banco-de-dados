package br.com.biblioteca.entity

import javax.persistence.*

@Entity
@Table(name = "Livro")
data class Livro(

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val codigo: Int,

    val titulo: String,

    val editora: String,

    val autor: String,

    val anoEdicao: Int,

    val numeroPaginas: Int,

    val areaConhecimento: String,

    val isbn: String

)