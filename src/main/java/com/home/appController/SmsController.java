package com.home.appController;

import com.home.Dto.ReceiverPhoneNumberDto;
import com.home.Dto.UserDataDto;
import com.home.service.SmsServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class SmsController {
    Logger logger = LoggerFactory.getLogger(SmsController.class);
    SmsServiceImpl smsService;

    @Autowired
    public void setSmsService(SmsServiceImpl smsService) {
        this.smsService = smsService;
    }

    @RequestMapping("/sendSms")
    public String getSendSmsPage(@ModelAttribute("smsReceiver")ReceiverPhoneNumberDto phoneNumberDto){
        return "send-sms-page";
    }
    @RequestMapping("/processSms")
    public String getProcessSmsPage(@SessionAttribute("userInfo")UserDataDto userDataDto, @ModelAttribute("smsReceiver")ReceiverPhoneNumberDto phoneNumberDto){
        try {
            smsService.sendSms(phoneNumberDto.getPhoneNumber(), userDataDto.getUserName(),userDataDto.getCrushName(),userDataDto.getResult());
        }catch (Exception e){
            logger.error(e.getMessage());
        }

        logger.info("sms sent successfully");
        return "process-sms-page";
    }
}
