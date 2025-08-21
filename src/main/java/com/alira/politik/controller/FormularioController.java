package com.alira.politik.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.alira.politik.dto.CadastroDTO;
import com.alira.politik.service.EmailService;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;


@RestController
@RequestMapping("api/cadastro")
public class FormularioController {
    private final EmailService emailService;
    private final ObjectMapper objectMapper;

    public FormularioController(EmailService emailService, ObjectMapper objectMapper){
        this.emailService = emailService;
        this.objectMapper = objectMapper;
    }

    @PostMapping(value = "/solicitar-cadastro", consumes = { MediaType.MULTIPART_FORM_DATA_VALUE })
    public ResponseEntity<String> solicitarCadastro(
        @RequestPart("dados") String dadosJson,
        @RequestParam("foto-identidade") MultipartFile identidade,
        @RequestParam("foto-comprovante-residencia") MultipartFile residencia,
        @RequestParam("documento-aplicacao") MultipartFile aplicacao

    ) {
        try {
            CadastroDTO dados = objectMapper.readValue(dadosJson, CadastroDTO.class);
            emailService.enviarEmail(dados, identidade, residencia, aplicacao);
            return ResponseEntity.ok("Formulário enviado com sucesso!");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().body("Houve algum problema ao enviar o formulário: " + e.getMessage());
        }
    }
    
}
