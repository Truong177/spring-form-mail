package com.example.formmail.services.impl;

import com.example.formmail.models.Mail;
import com.example.formmail.repositories.IMailRepository;
import com.example.formmail.services.IMailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MailService implements IMailService {
    @Autowired
    private IMailRepository mailRepository;

    @Override
    public void update(Mail mail) {
        mailRepository.update(mail);
    }

    @Override
    public Mail getMailConfig() {
        return mailRepository.getMailConfig();
    }
}
