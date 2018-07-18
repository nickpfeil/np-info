package com.techelevator.npgeek;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.npgeek.model.ParkDao;
import com.techelevator.npgeek.model.SurveyDao;

@Controller
public class SurveyController {
	
	@Autowired
	private SurveyDao surveyDao;

	/*@RequestMapping(path="/", method=RequestMethod.GET)
	public String displayHomePage(ModelMap modelHolder) {
		
		modelHolder.put("parks", surveyDao.getAllParks());
		
		return "homePage";
	}*/
	
	@RequestMapping(path="/surveyResults", method=RequestMethod.GET)
	public String surveyResults(ModelMap modelHolder) {
		
		modelHolder.put("parks", surveyDao.topParks());
		
		return "/surveyResults";
	}
}
