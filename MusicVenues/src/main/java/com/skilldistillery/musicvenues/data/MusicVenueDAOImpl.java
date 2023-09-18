package com.skilldistillery.musicvenues.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.musicvenues.entities.MusicVenue;

@Service
@Transactional
public class MusicVenueDAOImpl implements MusicVenueDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public MusicVenue findById(int venueId) {
		System.out.println(venueId);
		return em.find(MusicVenue.class, venueId);
	}

	@Override
	public List<MusicVenue> findAll() {
		String jpql = "SELECT p FROM MusicVenue p";
		
		return em.createQuery(jpql, MusicVenue.class).getResultList();
	}

	@Override
	public MusicVenue create(MusicVenue newVenue) {
		return null;
	}

	@Override
	public MusicVenue update(MusicVenue newVenue) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int venueId) {
		// TODO Auto-generated method stub
		return false;
	}

}
