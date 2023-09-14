package com.SkyReserve.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.SkyReserve.entity.User;
import com.SkyReserve.repository.UserRepository;

@Controller
public class UserController {
	
	@RequestMapping("/showReg")
	public String showReg() {
		return "login/showReg";
	}

	@RequestMapping("/showLoginPage")
	public String showLoginPage() {
		return "login/login";
	}

	@Autowired
	private UserRepository userRepo;

	@RequestMapping("/saveReg")
	public String saveReg(@ModelAttribute("user") User user) {
		userRepo.save(user);
		return "login/login";
	}

	@RequestMapping("/verifyLogin")
	public String verifyLogin(
			@RequestParam("emailId") String emailId, 
			@RequestParam("password") String password,
			ModelMap modelMap) {

		User user = userRepo.findByEmail(emailId);

		if (user != null) {
			if (user.getEmail().equals(emailId) && user.getPassword().equals(password)) {
				return "findFlights";
			} else {
				modelMap.addAttribute("error", "Invalid Email id or Password");
				return "login/login";
			}
		} else {
			modelMap.addAttribute("error", "Invalid Email id or Password");
			return "login/login";
		}
	}
}