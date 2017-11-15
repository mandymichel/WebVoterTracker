package com.launchcode.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.launchcode.springdemo.dao.VoterDAO;
import com.launchcode.springdemo.entity.Voter;

@Service
public class VoterServiceImpl implements VoterService {
	
	//need to inject voter dao
	@Autowired
	private VoterDAO voterDAO;
	
	@Override
	@Transactional
	public List<Voter> getVoters() {
		return voterDAO.getVoters();
	}

	@Override
	@Transactional
	public void saveVoter(Voter theVoter) {
		voterDAO.saveVoter(theVoter);
	}

}
