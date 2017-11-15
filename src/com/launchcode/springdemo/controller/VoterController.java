package com.launchcode.springdemo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.launchcode.springdemo.dao.VoterDAO;
import com.launchcode.springdemo.entity.Voter;
import com.launchcode.springdemo.service.VoterService;

@Controller
@RequestMapping("/voter")
public class VoterController {
	// inject customer service into controller
	@Autowired
	private VoterService voterService;
	
	@GetMapping("/list") //only handles get requests, not post (requestmapping does both)
	public String listVoters(Model theModel) {
		System.out.println("hihi3u");
		// get voters from the service
		List<Voter> theVoters = voterService.getVoters();
		// add voters to Spring MVC model
		theModel.addAttribute("voters", theVoters);
		return "list-voters";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		//create model attribute to bind form data
		Voter theVoter = new Voter();
		theModel.addAttribute("voter", theVoter);
		return "voter-form";
	}
	
	@GetMapping("/saveVoter")
	public String saveVoter(@ModelAttribute("voter") Voter theVoter) {
		//save the voter using our service
		voterService.saveVoter(theVoter);
		return "redirect:/voter/list";
	}

}

