package br.com.biblioteca.entity

import javax.persistence.*

@Entity
@Table(name = "Livro")
data class Livro(

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val codigo: Int,

    @Column(name = "titulo")
    val titulo: String,

    @Column(name = "editora")
    val editora: String,

    @Column(name = "autor")
    val autor: String,

    @Column(name = "ano_edicao")
    val anoEdicao: Int,

    @Column(name = "numero_paginas")
    val numeroPaginas: Int,

    @Column(name = "area_conhecimento")
    val areaConhecimento: String,

    @Column(name = "isbn")
    val isbn: String,

    @ManyToOne
    @JoinColumn(name = "Aluno_matricula")
    val aluno: Aluno,

    @ManyToOne
    @JoinColumn(name = "Professor_matricula")
    val professor: Professor,

    @ManyToOne
    @JoinColumn(name = "Funcionario_matricula")
    val funcionario: Funcionario

)