package br.com.biblioteca.dto.professor

import br.com.biblioteca.entity.Professor


data class ProfessorRequest(

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

){

    fun toEntity() : Professor {

        return Professor(
            matricula = this.matricula,
            nome = this.nome,
            sexo = this.sexo,
            estadoCivil = this.estadoCivil,
            endereco = this.endereco,
            filiacao = this.filiacao,
            telefone = this.telefone,
            cargaHoraria = this.cargaHoraria,
            titulacao = this.titulacao,
            anoTitulacao = this.anoTitulacao
        )

    }

}