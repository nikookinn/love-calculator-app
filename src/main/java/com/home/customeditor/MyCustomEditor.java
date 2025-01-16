package com.home.customeditor;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;

import java.beans.PropertyEditorSupport;
import java.util.Hashtable;
import java.util.Map;

public class MyCustomEditor extends PropertyEditorSupport {
    @Override
    public void setAsText(String text) throws IllegalArgumentException {
        String upperCase = text.toUpperCase();
        setValue(upperCase);
    }
}
