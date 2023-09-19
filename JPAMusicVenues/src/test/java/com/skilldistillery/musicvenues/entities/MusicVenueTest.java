package com.skilldistillery.musicvenues.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class MusicVenueTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private MusicVenue venue;

	public MusicVenue getVenue() {
		return venue;
	}

	public void setVenue(MusicVenue venue) {
		this.venue = venue;
	}

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("MusicVenues");
		
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		venue = em.find(MusicVenue.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		venue = null;
	}

	@Test
	void test_MusicVenue_entity_mapping() {
		assertNotNull(venue);
		assertEquals("Mishawaka Amphitheater", venue.getName());
		assertEquals("Fox Theater", venue.getName());
		assertEquals("The Fillmore Auditorium", venue.getName());
	}

}
