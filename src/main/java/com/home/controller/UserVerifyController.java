package com.home.controller;

import com.home.dto.UserVerificationDto;
import com.home.service.PhoneNumberVerificationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserVerifyController {

    Logger logger = LoggerFactory.getLogger(UserVerifyController.class);

    PhoneNumberVerificationService service;

    @Autowired
    public void setService(PhoneNumberVerificationService service) {
        this.service = service;
    }

    @RequestMapping("/verifyUser")
    public String getVerifyPage(@ModelAttribute("userVerificationDto") UserVerificationDto userVerificationDto){
        return "user-verify-page";
    }

    @RequestMapping("/verifyProcess")
    public String getVerifyProcessPage(@ModelAttribute("userVerificationDto")UserVerificationDto userVerificationDto){
        try{
            service.sendSmsVerification(userVerificationDto.getPhoneNumber());
        }catch (Exception e){
            logger.error(e.getMessage());
        }
        logger.info("verification code sent to user successfully");
        return "verify-process-page";
    }
    @RequestMapping("/verifyOTP")
    public String getVerificationCheckPage(@ModelAttribute("userVerificationDto")UserVerificationDto userVerificationDto){
        try {
            service.checkVerificationCode(userVerificationDto.getPhoneNumber(),userVerificationDto.getVerificationCode());
        }catch (Exception e){
            logger.error(e.getMessage());
        }

        logger.info("verification Success");
        return "verify-complete-page";
    }


}
