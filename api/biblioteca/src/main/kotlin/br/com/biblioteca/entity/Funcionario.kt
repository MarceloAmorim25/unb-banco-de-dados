package br.com.biblioteca.entity

import javax.persistence.*

@Entity
@Table(name = "Funcionario")
data class Funcionario(

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
    val telefone: String,

    @Column(name = "numero_dependentes")
    val numeroDependentes: Int,

    @Column(name = "habilidades_especificas")
    val habilidadesEspecificas: String,

    @Column(name = "cor_pele")
    val corPele: String

)