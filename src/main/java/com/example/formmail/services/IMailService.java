package com.example.formmail.services;

import com.example.formmail.models.Mail;

public interface IMailService {

    void update(Mail mail);

    Mail getMailConfig();
}
