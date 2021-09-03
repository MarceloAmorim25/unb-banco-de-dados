package br.com.biblioteca.dto

import br.com.biblioteca.entity.Funcionario


data class FuncionarioRequest(

    val matricula: Int,

    val nome: String,

    val sexo: String,

    val estadoCivil: String,

    val filiacao: String,

    val endereco: String,

    val telefone: String,

    val numeroDependentes: Int,

    val habilidadesEspecificas: String,

    val corPele: String,

){

    fun toEntity() : Funcionario {
        return Funcionario(
            matricula = this.matricula,
            nome = this.nome,
            sexo = this.sexo,
            estadoCivil = this.estadoCivil,
            filiacao = this.filiacao,
            endereco = this.endereco,
            telefone = this.telefone,
            numeroDependentes = this.numeroDependentes,
            habilidadesEspecificas = this.habilidadesEspecificas,
            corPele = this.corPele
        )
    }

}