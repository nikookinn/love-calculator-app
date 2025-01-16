package com.home.appController;

import com.home.Dto.UserDataDto;


import com.home.service.LCService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;



@Controller
@SessionAttributes("userInfo")
public class MainController {

    LCService lcService;

    @Autowired
    public void setLcService(LCService lcService) {
        this.lcService = lcService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model){
        model.addAttribute("userInfo",new UserDataDto());
        return "home-page";
    }
    @RequestMapping(value = "/processCalculation", method = RequestMethod.POST)
    public String getProcessPage(Model model,@Valid UserDataDto userDataDto,
                                 BindingResult result){
        model.addAttribute("userInfo", userDataDto);
        model.addAttribute(BindingResult.MODEL_KEY_PREFIX+"userInfo", result);
        if (result.hasErrors()){
            result.getAllErrors().forEach(System.out::println);
            return "home-page";
        }
        String rst = lcService.calculateRelationShipBetween(userDataDto.getUserName(),userDataDto.getCrushName());
        userDataDto.setResult(rst);

        return "process-page";
    }

    @RequestMapping("/welcomePage")
    public String getHomePage(){
        return "welcome-page";
    }
}
