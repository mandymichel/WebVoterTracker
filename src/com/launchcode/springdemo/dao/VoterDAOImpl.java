package com.launchcode.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.launchcode.springdemo.entity.Voter;

@Repository //always applied to dao implementations
public class VoterDAOImpl implements VoterDAO {
	//need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Voter> getVoters() {
		//get the current hibernate session
		Session currentSession = sessionFactory.getSessionFactory().openSession();
		//create query
		Query<Voter> theQuery = currentSession.createQuery("from Voter", Voter.class);
		//execute query and get result list
		theQuery.list();
		List<Voter> voters = theQuery.getResultList();
		//return the results
		return voters;
	}

	@Override
	public void saveVoter(Voter theVoter) {
		//get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		//save the voter
		currentSession.save(theVoter);
	}

}
