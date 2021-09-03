package br.com.biblioteca.dto

import br.com.biblioteca.entity.Aluno


data class AlunoRequest(

    val matricula: Int,

    val nome: String,

    val sexo: String,

    val estadoCivil: String,

    val filiacao: String,

    val endereco: String,

    val telefone: String

){

    fun toEntity() : Aluno {
        return Aluno(
            matricula = this.matricula,
            nome = this.nome,
            sexo = this.sexo,
            estadoCivil = this.estadoCivil,
            filiacao = this.filiacao,
            endereco = this.endereco,
            telefone = this.telefone
        )
    }

}