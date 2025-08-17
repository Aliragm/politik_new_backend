package com.alira.politik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.alira.politik.model.Politico;

@Repository
public interface PoliticoRepository extends JpaRepository<Politico, Long>{
    
}
