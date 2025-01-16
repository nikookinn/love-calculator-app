package com.home.controller;

import com.home.dto.ReceiverEmailDto;
import com.home.dto.UserDataDto;
import com.home.service.EmailServiceImpl;
import jakarta.mail.MessagingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class EmailController {
    EmailServiceImpl emailService;

    @Autowired
    public void setEmailService(EmailServiceImpl emailService) {
        this.emailService = emailService;
    }

    @RequestMapping("/sendEmail")
    public String getSendByEmailPage(@ModelAttribute("receiverEmailDto")ReceiverEmailDto emailDto){
        return "send-email-page";
    }
    @RequestMapping("/processEmail")
    public String getProcessEmailPage(@SessionAttribute("userInfo") UserDataDto userDataDto, @ModelAttribute("receiverEmailDto") ReceiverEmailDto emailDto) throws MessagingException {
        emailService.sendEmail(emailDto.getEmail(), userDataDto.getUserName(), userDataDto.getCrushName(),userDataDto.getResult());
        return "process-email-page";
    }

}
