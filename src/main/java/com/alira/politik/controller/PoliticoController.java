package com.alira.politik.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alira.politik.model.Politico;
import com.alira.politik.service.PoliticoService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;



@RestController
@RequestMapping("api/politicos")
public class PoliticoController {
    private final PoliticoService politicoService;

    public PoliticoController(PoliticoService politicoService) {
        this.politicoService = politicoService;
    }

    @PostMapping
    public Politico criarPolitico(@RequestBody Politico politico) {
        return politicoService.criarPolitico(politico);
    }
    
    @GetMapping
    public java.util.List<Politico> listarTodosPoliticos() {
        return politicoService.listarPoliticos();
    }
    
    @GetMapping("/{id}")
    public Politico buscarPorId(@PathVariable Long id) {
        return politicoService.buscarPorId(id);
    }

    @PutMapping("/{id}")
    public Politico atualizarPolitico(@PathVariable Long id, @RequestBody Politico detalhesPolitico) {
        return politicoService.atualizarPolitico(id, detalhesPolitico);
    }

}
