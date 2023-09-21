package com.skilldistillery.musicvenues.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.musicvenues.data.MusicVenueDAO;
import com.skilldistillery.musicvenues.entities.MusicVenue;

@Controller
public class MusicVenueController {
	
	@Autowired
	private MusicVenueDAO venueDao;
	
	@RequestMapping(path = {"/", "index.do"})
	public String index(Model model) {
		List<MusicVenue> venues = venueDao.findAll();
		model.addAttribute("musicvenues", venues);
		return "index";
	}
	
	@RequestMapping(path = "getVenue.do")
	public String getVenue(@RequestParam Integer id, Model model) {
		MusicVenue venue = venueDao.findById(id);
		model.addAttribute("musicvenue", venue);
		return "venueDetails";
	}
	
	@RequestMapping(path = "addVenue.do")
	public ModelAndView addVenue(MusicVenue venue) {
		MusicVenue added = venueDao.create(venue);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addVenue");

		return mv;
	}
	
	@RequestMapping(path = "updateVenue.do")
	public ModelAndView updateVenue(MusicVenue venue) {
		MusicVenue update = venueDao.update(venue);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		
		return mv;
	}
	
	@RequestMapping(path = "deleteVenue.do")
	public String deleteVenue(@RequestParam Integer id, Model model) {
		model.addAttribute("musicvenue", venueDao.deleteById(id));
		return "deleteVenue";
	}
	
	
}

	
	
