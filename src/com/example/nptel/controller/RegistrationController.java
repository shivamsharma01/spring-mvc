package com.example.nptel.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.nptel.exception.UserIdAlreadyPresentException;
import com.example.nptel.model.User;
import com.example.nptel.service.RegistrationService;

@Controller
public class RegistrationController {
	@Autowired
	private RegistrationService registrationService;
	@Autowired
	private Environment environment;

	@GetMapping(value = "/register")
	public ModelAndView register(Model model) {
		return new ModelAndView("register", "command", new User());
	}

	@PostMapping(value = "/registerUser")
	public ModelAndView registerUser(@Valid @ModelAttribute("command") User user, BindingResult result, ModelMap map) {
		ModelAndView modelAndView = new ModelAndView();
		if (result.hasErrors()) {
			modelAndView = new ModelAndView("register", "command", user);
		} else {
			try {
				registrationService.addUser(user);
				modelAndView = new ModelAndView("register", "command", user);
				modelAndView.addObject("successMessage",
						environment.getProperty("RegistrationController.SUCCESSFUL_REGISTRATION"));
			} catch (UserIdAlreadyPresentException userIdException) {
				// check this
				if(userIdException.getMessage().contains("")) {
					modelAndView = new ModelAndView("register", "command", user);
					modelAndView.addObject("message", environment.getProperty(userIdException.getMessage()));
				}
			}
		}
		return modelAndView;
	}

}
