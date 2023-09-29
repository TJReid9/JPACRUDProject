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
	public MusicVenue create(MusicVenue addVenue) {
		String jpql = "INSERT INTO musicvenuedb (music_venue) VALUE (?,?)";

		em.persist(addVenue);
		em.flush();
		

		return addVenue;

	}

	@Override
	public MusicVenue update(MusicVenue updateVenue) {
		MusicVenue dbMV = em.find(MusicVenue.class, updateVenue.getId());
		dbMV.setName(updateVenue.getName());
		dbMV.setLocation(updateVenue.getLocation());
		dbMV.setDescription(updateVenue.getDescription());
		
		em.flush();
		
		return updateVenue;
	}

	@Override
	public boolean deleteById(int deleteVenue) {
		MusicVenue mvToDelete = em.find(MusicVenue.class, deleteVenue);
		em.remove(mvToDelete);
		
		return false;
	}

}
