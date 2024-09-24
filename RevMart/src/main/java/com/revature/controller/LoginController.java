package com.revature.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }

    @PostMapping("/login")
    public ModelAndView handleLogin(
            @RequestParam("userType") String userType,
            @RequestParam("username") String username,
            @RequestParam("password") String password) {
        
        // Replace this with actual authentication logic
        boolean isValidUser = validateUser(userType, username, password);
        
        if (isValidUser) {
            return new ModelAndView("redirect:/userIndex");
        } else {
            ModelAndView mav = new ModelAndView("login");
            mav.addObject("loginError", "Invalid username or password.");
            return mav;
        }
    }

    private boolean validateUser(String userType, String username, String password) {
        // Implement your user validation logic here
        return "user@example.com".equals(username) && "password".equals(password);
    }
}
