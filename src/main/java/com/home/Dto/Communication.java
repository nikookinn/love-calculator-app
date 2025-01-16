package com.home.Dto;

import com.home.validation.Email;

public class Communication {
    @Email(message = "invalid email")
    private String email;
    private Phone phone;

    public Phone getPhone() {
        return phone;
    }

    public void setPhone(Phone phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return getEmail();
    }
}
