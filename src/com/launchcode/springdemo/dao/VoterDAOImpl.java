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

	@Transactional
	@Override
	public List<Voter> getVoters() {
		//get the current hibernate session
		Session currentSession = sessionFactory.getSessionFactory().openSession();
		//create query
		Query<Voter> theQuery = currentSession.createQuery("from Voter order by lastName", Voter.class);
		//execute query and get result list
		
		List<Voter> voters = theQuery.getResultList();
		//return the results
		return voters;
	}

	@Override
	public void saveVoter(Voter theVoter) {
		//get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		//save the voter if there is no id already, if there is an id already, update the voter
		currentSession.saveOrUpdate(theVoter);
	}

	@Override
	public Voter getVoter(int theId) {
		System.out.println("Hi");
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		//now retrieve/read from database using the primary key
		Voter theVoter = currentSession.get(Voter.class, theId);
		return theVoter;
	}

	@Override
	public void deleteVoter(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from Voter where id=:voterId");
		theQuery.setParameter("voterId", theId);
		
		theQuery.executeUpdate();		
	}

}
