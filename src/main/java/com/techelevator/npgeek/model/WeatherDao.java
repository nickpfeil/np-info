package com.techelevator.npgeek.model;

import java.util.List;

public interface WeatherDao {
	public Weather getParkFirstDayForecast(String parkCode);
	public List<Weather> getParkRestOfForecast(String parkCode);
}
