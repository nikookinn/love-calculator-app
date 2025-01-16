package com.home.formatter;

import com.home.Dto.Phone;
import org.springframework.format.Formatter;

import java.text.ParseException;
import java.util.Locale;

public class PhoneFormatter implements Formatter<Phone> {
    @Override
    public Phone parse(String text, Locale locale) throws ParseException {
        Phone phone = new Phone();
        String[] numOfArray = text.split("-");
        int index = text.indexOf("-");

        if (index == -1 || text.startsWith("-")) {
            phone.setCountryCode("994");
            if (text.startsWith("-")){
                phone.setPhoneNumber(numOfArray[1]);
            }else {
                phone.setPhoneNumber(numOfArray[0]);
            }
        }else {
            phone.setCountryCode(numOfArray[0]);
            phone.setPhoneNumber(numOfArray[1]);
        }

        return phone;
    }

    @Override
    public String print(Phone object, Locale locale) {
        return object.getCountryCode() + "-" + object.getPhoneNumber();
    }
}
