package com.alira.politik.service;

import org.springframework.stereotype.Service;
import com.alira.politik.model.Politico;
import com.alira.politik.repository.PoliticoRepository;

import jakarta.persistence.EntityNotFoundException;

@Service
public class PoliticoService {

    private final PoliticoRepository politicoRepository;

    public PoliticoService(PoliticoRepository politicoRepository){
        this.politicoRepository = politicoRepository;
    }

    public Politico criarPolitico(Politico politico){
        return politicoRepository.save(politico);
    }

    public java.util.List<Politico> listarPoliticos(){
        return politicoRepository.findAll();
    }

    public Politico buscarPorId(Long id){
        return politicoRepository.findById(id).orElseThrow(
            () -> new EntityNotFoundException("Político com ID " + id + " não encontrado."));
    }

    public Politico atualizarPolitico(Long id, Politico novosDadosPolitco){
        Politico politicoAtualizar = this.buscarPorId(id);

        politicoAtualizar.setNome(novosDadosPolitco.getNome());
        politicoAtualizar.setCargo(novosDadosPolitco.getCargo());
        politicoAtualizar.setCidade(novosDadosPolitco.getCidade());
        politicoAtualizar.setEstado(novosDadosPolitco.getEstado());
        politicoAtualizar.setNumero(novosDadosPolitco.getNumero());
        politicoAtualizar.setPartido(novosDadosPolitco.getPartido());
        politicoAtualizar.setUrlPerfil(novosDadosPolitco.getUrlPerfil());

        return politicoRepository.save(politicoAtualizar);
    }

    public void deletarPolitico(Long id){
        politicoRepository.deleteById(id);
    }
}
