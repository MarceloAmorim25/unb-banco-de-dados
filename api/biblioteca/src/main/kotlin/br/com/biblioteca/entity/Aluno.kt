package br.com.biblioteca.entity

import javax.persistence.*


@Entity
@Table(name = "Aluno")
data class Aluno(

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val matricula: Int,

    @Column(name = "nome")
    val nome: String,

    @Column(name = "sexo")
    val sexo: String,

    @Column(name = "estado_civil")
    val estadoCivil: String,

    @Column(name = "filiacao")
    val filiacao: String,

    @Column(name = "endereco")
    val endereco: String,

    @Column(name = "telefone")
    val telefone: String

)