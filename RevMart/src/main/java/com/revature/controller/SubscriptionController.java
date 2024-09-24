package com.revature.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

@Controller
public class SubscriptionController {

    @PostMapping("/subscribe")
    public String handleSubscription(@RequestParam("email") String email, Model model) {
        // Add logic here to handle the subscription (e.g., save email to a database)
        
        // Pass a success message to the view
        model.addAttribute("message", "Subscription successful for email: " + email);
        
        // Redirect to a success page (or return the name of the JSP page)
        return "subscriptionSuccess"; // this should be the name of your success JSP page
    }
}

