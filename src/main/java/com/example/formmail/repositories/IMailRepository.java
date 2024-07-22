package com.example.formmail.repositories;

import com.example.formmail.models.Mail;

public interface IMailRepository {

    void update(Mail mail);

    Mail getMailConfig();
}
