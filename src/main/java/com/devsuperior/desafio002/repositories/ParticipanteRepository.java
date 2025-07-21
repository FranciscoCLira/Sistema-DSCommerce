package com.devsuperior.desafio002.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devsuperior.desafio002.entities.Participante;

public interface ParticipanteRepository extends JpaRepository<Participante, Integer> {
}