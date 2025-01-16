package com.home.service;

public interface SmsService {
    void sendSms(String targetPhoneNumber,String senderName, String receiverName, String message);
}
