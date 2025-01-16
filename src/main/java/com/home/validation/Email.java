package com.home.validation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
@Constraint(validatedBy = EmailValidator.class)
public @interface Email {
    String message() default "{email.format}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
