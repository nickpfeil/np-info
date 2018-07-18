package com.techelevator.npgeek;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.npgeek.model.Park;
import com.techelevator.npgeek.model.ParkDao;

@Controller
public class ParkController {
	
	@Autowired
	private ParkDao parkDao;

	@RequestMapping(path="/", method=RequestMethod.GET)
	public String displayHomePage(ModelMap modelHolder) {
		
		modelHolder.put("parks", parkDao.getAllParks());
		
		return "homepage";
	}
	
	@RequestMapping(path="/indParksDeets", method=RequestMethod.GET)
	public String parkDetails(ModelMap modelHolder, @RequestParam String parkCode) {
		
		for(Park p : parkDao.getAllParks()) {
			if(p.getParkCode().equals(parkCode)) {
				modelHolder.put("park", p);
			}
		}
		
		return "indParksDeets";
	}
}
