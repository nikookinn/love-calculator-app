package com.home.service;

import org.springframework.stereotype.Service;

@Service
public class LCServiceImpl implements LCService{

    private static final String LC_APP_FORMULA = "FLAME";

    @Override
    public String calculateRelationShipBetween(String userName, String crushName) {

        int userAndCrushLength = (userName+crushName).toCharArray().length;
        int formulaLength = LC_APP_FORMULA.length();
        int rem = userAndCrushLength % formulaLength;
        char resultChar = LC_APP_FORMULA.charAt(rem);
        return matchRelationShip(resultChar);
    }

    @Override
    public String matchRelationShip(char c) {
        return switch (c) {
            case 'F' -> RelationShip.FRIEND.value;
            case 'L' -> RelationShip.LOVE.value;
            case 'A' -> RelationShip.AFFECTION.value;
            case 'M' -> RelationShip.MARRIAGE.value;
            case 'E' -> RelationShip.ENEMY.value;
            default -> null;
        };
    }
}
