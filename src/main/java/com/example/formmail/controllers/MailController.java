package com.example.formmail.controllers;

import com.example.formmail.models.Mail;
import com.example.formmail.services.IMailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/mailbox")
public class MailController {
    @Autowired
    private IMailService mailService;
    @GetMapping("")
    public String viewMail(Model model) {
        Mail config = mailService.getMailConfig();
        model.addAttribute("config", config);
        return "index";
    }

    @PostMapping("/update")
    public String updateMail(@ModelAttribute("config") Mail mail, Model model) {
        mailService.update(mail);
        model.addAttribute("config", mail);
        return "config-details";
    }
}
