package com.home.dto;


import jakarta.validation.constraints.AssertTrue;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public class UserDataDto {
    @NotNull(message = "username cannot be blank")
    @Size(min = 2, max = 20, message = "must fill car between 2-20")
    private String userName;
    @NotBlank(message = "crushName cannot be blank")
    @Size(min = 2, max = 20, message = "must fill car between 2-20")
    private String crushName;
    @AssertTrue(message = "agree to use app")
    private boolean termAndCondition;

    String result;

    public boolean isTermAndCondition() {
        return termAndCondition;
    }

    public void setTermAndCondition(boolean termAndCondition) {
        this.termAndCondition = termAndCondition;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCrushName() {
        return crushName;
    }

    public void setCrushName(String crushName) {
        this.crushName = crushName;
    }
    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
