package com.skilldistillery.musicvenues.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
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
	public MusicVenue findById(int id) {
		System.out.println(id);
		return em.find(MusicVenue.class, id);
	}

	@Override
	public List<MusicVenue> findAll() {
		String jpql = "SELECT p FROM MusicVenue p";

		return em.createQuery(jpql, MusicVenue.class).getResultList();
	}

	@Override
	public MusicVenue create(MusicVenue newVenue) {
		
		em.persist(newVenue);
		em.flush();
		em.close();

		return newVenue;

	}

	@Override
	public MusicVenue update(MusicVenue updateVenue) {
		MusicVenue dbMV = em.find(MusicVenue.class, updateVenue.getId());
		dbMV.setName(updateVenue.getName());
		

		
	return null;}

	@Override
	public boolean deleteById(int deleteVenue) {
//		MusicVenue mvToDelete = em.find(MusicVenue.class, deleteVenue.getId())
		return false;
	}

}
