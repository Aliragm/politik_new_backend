package com.alira.politik.service;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.alira.politik.dto.CadastroDTO;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailService {
    private final JavaMailSender javaMailSender;

    public EmailService(JavaMailSender javaMailSender){
        this.javaMailSender = javaMailSender;
    }

    @SuppressWarnings("null")
    public void enviarEmail(CadastroDTO dados, MultipartFile identidade, MultipartFile residencia,
    MultipartFile aplicacao){
        String corpoEmail = this.montarCorpoEmail(dados);
        MimeMessage mimeMessage = javaMailSender.createMimeMessage();
        try {
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
            helper.setTo("andrelira50@gmail.com");
            helper.setSubject("Nova Solicitação de Cadastro Politik: " + dados.getNome());
            helper.setText(corpoEmail);
            helper.addAttachment(identidade.getOriginalFilename(), identidade);
            helper.addAttachment(residencia.getOriginalFilename(), residencia);
            helper.addAttachment(aplicacao.getOriginalFilename(), aplicacao);
            javaMailSender.send(mimeMessage);
        } catch (MessagingException e) {
            e.printStackTrace();
            throw new RuntimeException("erro ao enviar os emails com anexos.", e);
        }
    }

    public String montarCorpoEmail(CadastroDTO dados){
        StringBuilder corpoEmail = new StringBuilder();
        corpoEmail.append("Nova solicitação de cadastro recebida!\n\n");
        corpoEmail.append("================ DADOS PESSOAIS ================\n");
        corpoEmail.append("Nome: ").append(dados.getNome()).append("\n");
        corpoEmail.append("Nascimento: ").append(dados.getNascimento()).append("\n");
        corpoEmail.append("Email: ").append(dados.getEmail()).append("\n");
        corpoEmail.append("CPF: ").append(dados.getCpf()).append("\n\n");

        corpoEmail.append("================== ENDEREÇO ==================\n");
        corpoEmail.append("Endereço: ").append(dados.getEndereco()).append("\n");
        corpoEmail.append("Cidade: ").append(dados.getCidade()).append("\n");
        corpoEmail.append("Bairro: ").append(dados.getBairro()).append("\n");
        corpoEmail.append("CEP: ").append(dados.getCep()).append("\n");
        corpoEmail.append("Estado: ").append(dados.getEstado()).append("\n\n");

        corpoEmail.append("================== PARTIDO ===================\n");
        corpoEmail.append("Partido: ").append(dados.getPartido()).append(" (").append(dados.getSigla()).append(")\n");
        corpoEmail.append("CNPJ: ").append(dados.getCnpj()).append("\n\n");

        corpoEmail.append("================ CANDIDATURA ================\n");
        corpoEmail.append("Escopo: ").append(dados.getEscopo()).append("\n");
        corpoEmail.append("Cargo: ").append(dados.getCargo()).append("\n");
        if (dados.getEstadoCandidato() != null) {
            corpoEmail.append("Estado do Candidato: ").append(dados.getEstadoCandidato()).append("\n");
        }
        if (dados.getMunicipioCandidato() != null) {
            corpoEmail.append("Município do Candidato: ").append(dados.getMunicipioCandidato()).append("\n");
        }
        corpoEmail.append("\n");

        corpoEmail.append("================== MENSAGEM ==================\n");
        corpoEmail.append(dados.getMensagem()).append("\n");

        return corpoEmail.toString();
        
    }
}
