package com.revature.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutUsController {

    @GetMapping("/about-us")
    public String aboutUs() {
        return "aboutus1"; // This should match the name of your JSP or HTML file without the extension
    }
}
