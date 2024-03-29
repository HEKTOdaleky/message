package com.example.sweat.controller;

import com.example.sweat.domain.Role;
import com.example.sweat.domain.User;
import com.example.sweat.repos.UserRepo;
import com.example.sweat.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {
    @Autowired
    private UserService userService;

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model) {

        if (!userService.addUser(user)) {
            model.put("message", "User exist!");
            return "registration";
        }

        return "redirect:/login";
    }

    @GetMapping("/activate/{code}")
    public String activate(Model model, @PathVariable String code) {
        boolean isActivate = userService.activateCode(code);

        if (isActivate) {
            model.addAttribute("message", "User success activation");
        } else {
            model.addAttribute("message", "Activation code is not found");
        }
        return "login";
    }
}
