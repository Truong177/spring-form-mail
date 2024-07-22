package com.example.formmail.repositories.impl;

import com.example.formmail.models.Mail;
import com.example.formmail.repositories.IMailRepository;
import org.springframework.stereotype.Repository;

@Repository
public class MailRepository implements IMailRepository {
    private Mail mailConfig = new Mail("English", 25, false, "Thor\nKing, Asgard");

    @Override
    public void update(Mail mail) {
        this.mailConfig.setLanguage(mail.getLanguage());
        this.mailConfig.setPageSize(mail.getPageSize());
        this.mailConfig.setSpamFilter(mail.isSpamFilter());
        this.mailConfig.setSignature(mail.getSignature());
    }

    @Override
    public Mail getMailConfig() {
        return mailConfig;
    }
}
