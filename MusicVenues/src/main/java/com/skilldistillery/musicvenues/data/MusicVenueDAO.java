package com.skilldistillery.musicvenues.data;

import java.util.List;

import com.skilldistillery.musicvenues.entities.MusicVenue;

public interface MusicVenueDAO {
	
	MusicVenue findById(int venueId);
	List<MusicVenue> findAll();
	MusicVenue create(MusicVenue newVenue);
	MusicVenue update(MusicVenue newVenue);
	boolean deleteById(int venueId);

}
