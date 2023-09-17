package com.skilldistillery.musicvenues.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.musicvenues.data.MusicVenueDAO;

@Controller
public class MusicVenueController {
	
	@Autowired
	private MusicVenueDAO venueDao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String goHome(Model model) {
		model.addAttribute("venueList", venueDao.findAll());
		
		return "home";
	}

}
