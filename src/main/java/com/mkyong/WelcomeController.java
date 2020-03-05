package com.mkyong;

import java.util.Map;

import com.mkyong.User;
import com.mkyong.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class WelcomeController {

	// inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";

	@Autowired
	private UserRepository userRepository;

	@RequestMapping("/a")
	public String welcome(Map<String, Object> model) {
		System.out.println("/a mapped");
		model.put("message", this.message);
		return "register";
	}

	@RequestMapping("/")
	public String index(Map<String, Object> model) {
		System.out.println("/a mapped");
		model.put("message", this.message);
		return "welcome";
	}

	@PostMapping(path="/add") // Map ONLY POST Requests
	public @ResponseBody String addNewUser (@RequestParam String name, @RequestParam String email) {
		// @ResponseBody means the returned String is the response, not a view name
		// @RequestParam means it is a parameter from the GET or POST request
		User n = new User();
		System.out.println(name+" "+email);
		n.setName(name);
		n.setEmail(email);
		System.out.println(n.getName()+" "+n.getEmail());
		userRepository.save(n);
		return "Saved";
	}


}