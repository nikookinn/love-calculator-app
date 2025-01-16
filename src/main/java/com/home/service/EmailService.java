package com.home.service;


import jakarta.mail.MessagingException;

public interface EmailService {
    void sendEmail(String email,String senderName, String receiverName, String message) throws MessagingException;
}
