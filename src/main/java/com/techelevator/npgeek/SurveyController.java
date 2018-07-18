package com.techelevator.npgeek;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.npgeek.model.Survey;
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
	
	@RequestMapping(path="/survey", method=RequestMethod.GET)
	public String survey() {
		return "/survey";
	}
	
	@RequestMapping(path="/survey", method=RequestMethod.POST)
	public String survey(
				@RequestParam String parkCode,
				@RequestParam Long surveyId,
				@RequestParam String emailAddress,
				@RequestParam String state,
				@RequestParam String activityLevel,
				RedirectAttributes flashScope  //pass a flash scope variable into saveNewProject method
			) {
			Survey newSurvey = new Survey();
			newSurvey.setParkCode(parkCode);
			newSurvey.setSurveyId(surveyId);
			newSurvey.setEmailAddress(emailAddress);
			newSurvey.setState(state);
			newSurvey.setActivityLevel(activityLevel);
			
			surveyDao.save(newSurvey);
			
			flashScope.addFlashAttribute("message", "New survey saved!");
			
			return "redirect:/surveyResults";
	}
}
