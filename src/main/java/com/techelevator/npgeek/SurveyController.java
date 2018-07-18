package com.techelevator.npgeek;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.npgeek.model.ParkDao;

@Controller
public class SurveyController {
	
	@Autowired
	private ParkDao parkDao;

	@RequestMapping(path="/", method=RequestMethod.GET)
	public String displayHomePage(ModelMap modelHolder) {
		
		modelHolder.put("parks", parkDao.getAllParks());
		
		return "homePage";
	}
}
