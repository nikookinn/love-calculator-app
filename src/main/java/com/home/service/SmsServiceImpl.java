package com.home.service;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class SmsServiceImpl implements SmsService{

    @Value("${account.sid}")
    public String accountSid;

    @Value("${auth.token}")
    public String authToken;

    @Value("${twilio.phone}")
    public String phoneNumber;

    @Override
    public void sendSms(String targetPhoneNumber, String senderName, String receiverName, String result) {
        Twilio.init(accountSid,authToken);
        System.out.println("--------------------------------");
        Message message = Message.creator(
                new PhoneNumber(targetPhoneNumber),
                new PhoneNumber(phoneNumber),
                "RELATIONSHIP CALCULATOR APP \n"+
                "Hi "+receiverName+" , The Relationship is between you and "+senderName+" :"+ result +" ."
        ).create();
        System.out.println(message.getSid());


    }
}
