package com.techelevator.npgeek;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.npgeek.model.Park;
import com.techelevator.npgeek.model.ParkDao;
import com.techelevator.npgeek.model.Weather;
import com.techelevator.npgeek.model.WeatherDao;

@Controller
public class ParkController {
	
	@Autowired
	private ParkDao parkDao;
	@Autowired
	private WeatherDao weatherDao;

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
				break;
			}
		} 
		
		modelHolder.put("firstDay", weatherDao.getParkFirstDayForecast(parkCode));
		modelHolder.put("fourDay", weatherDao.getParkRestOfForecast(parkCode));
		
		return "indParksDeets";
	}
	
	@RequestMapping(path="/indParksDeets", method=RequestMethod.POST)
	public String switchTempSystem(@RequestParam String tempSystem, @RequestParam String parkCode, HttpSession userSession) {
		
		if(tempSystem.equals("Fahrenheit") || tempSystem.equals(null)) {
		userSession.setAttribute("tempSystem", tempSystem);
		} else {
			userSession.setAttribute("tempSystem", tempSystem);
		}
		
		return "redirect:/indParksDeets?parkCode=" + parkCode + "#temperature";
	}
	
	
}
