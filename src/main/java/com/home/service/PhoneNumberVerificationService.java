package com.home.service;

import com.twilio.Twilio;
import com.twilio.rest.verify.v2.service.Verification;
import com.twilio.rest.verify.v2.service.VerificationCheck;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class PhoneNumberVerificationService {

    @Value("${twilio.sid}")
    private String twilioSid;

    @Value("${twilio.authToken}")
    private String twilioAuthToken;

    @Value("${twilio.verifyServiceSid}")
    private String verifyServiceSid;

    public void sendSmsVerification(String userPhoneNumber) {
        Twilio.init(twilioSid, twilioAuthToken);

        Verification verification = Verification.creator(
                        verifyServiceSid, userPhoneNumber, "sms")
                .create();

        System.out.println("Sent verification to: " + verification.getStatus());
    }

    public boolean checkVerificationCode(String userPhoneNumber, String verificationCode) {
        Twilio.init(twilioSid, twilioAuthToken);

        VerificationCheck verificationCheck = VerificationCheck.creator(
                        verifyServiceSid)
                .setTo(userPhoneNumber)
                .setCode(verificationCode)
                .create();

        return verificationCheck.getStatus().equals("approved");
    }
}
