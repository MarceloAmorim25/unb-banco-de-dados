package br.com.biblioteca.repository

import br.com.biblioteca.entity.Pagamento
import org.springframework.data.jpa.repository.JpaRepository


interface PagamentoRepository : JpaRepository<Pagamento, Int>