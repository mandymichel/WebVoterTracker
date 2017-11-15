package com.launchcode.springdemo.service;

import java.util.List;

import com.launchcode.springdemo.entity.Voter;

public interface VoterService {
	
	public List<Voter> getVoters();

	public void saveVoter(Voter theVoter);

}
