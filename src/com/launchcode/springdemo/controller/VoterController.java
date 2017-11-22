
package com.launchcode.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping("/showFormForUpdate")
	@Transactional
	public String showFormForUpdate(@RequestParam("voterId") int theId, Model theModel) {
		//get the voter from the voter service
		Voter theVoter = voterService.getVoter(theId);
		//set voter as model attribute to prepopulate form
		theModel.addAttribute("voter", theVoter);
		//send over to update form
		return "voter-form";
	}
	@GetMapping("/delete")
	public String deleteVoter(@RequestParam("voterId") int theId) {
		voterService.deleteVoter(theId);
		return "redirect:/voter/list";
	}
}
