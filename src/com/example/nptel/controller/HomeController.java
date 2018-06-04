package com.example.nptel.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("contextPath")
@PropertySource("classpath:/com/example/nptel/resources/configuration.properties")
public class HomeController {
	@GetMapping(value = "/")
	public ModelAndView getHomeDetails(HttpSession session, HttpServletRequest request) {
		session.setAttribute("contextPath", request.getContextPath());
		return new ModelAndView("NptelHome", "", "");
	}

}
