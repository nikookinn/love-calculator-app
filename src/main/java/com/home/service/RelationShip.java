package com.home.service;

public enum RelationShip {
    FRIEND("Friend"),
    LOVE("Love"),
    AFFECTION("Affection"),
    MARRIAGE("Marriage"),
    ENEMY("Enemy");

    public final String value;

    RelationShip(String value) {
        this.value = value;
    }
}
