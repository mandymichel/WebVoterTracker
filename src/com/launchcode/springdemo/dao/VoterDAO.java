package com.launchcode.springdemo.dao;

import java.util.List;

import com.launchcode.springdemo.entity.Voter;

public interface VoterDAO {
	
	public List<Voter> getVoters();

	public void saveVoter(Voter theVoter);
	
}
