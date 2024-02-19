package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.service.EmailService;

@Controller
public class EmailController {

    @Autowired
    private EmailService emailService;

    @PostMapping("/sendEmail")
    public String sendEmail(
        @RequestParam String fromName,
        @RequestParam String fromEmail,
        @RequestParam String to,
        @RequestParam String subject,
        @RequestParam String content
    ) {
        emailService.sendEmail(to, subject, content, fromName, fromEmail);
        return "contactjsp"; // Assuming you have a success.jsp page to display after sending the email
    }
}
