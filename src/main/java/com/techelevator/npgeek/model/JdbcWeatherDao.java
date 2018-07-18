package com.techelevator.npgeek.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

public class JdbcWeatherDao implements WeatherDao{

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcWeatherDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	@Override
	public List<Weather> getFirstDayForecast() {
		List<Weather> parkForecasts = new ArrayList<>();
		String sqlSelectParkForecasts = "SELECT * FROM weather WHERE parkcode ? AND fivedayforecastvalue = 1";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectParkForecasts);
		while(results.next()) {
			Weather newForecast = mapResultsToWeather(results);
			parkForecasts.add(newForecast);
		}
		return parkForecasts;
	}
	@Override
	public List<Weather> getRestOfForecast() {
		List<Weather> restOfForecast = new ArrayList<>();
		String sqlSelectRestOfForecasts = "SELECT * FROM weather WHERE parkcode ? AND fivedayforecastvalue BETWEEN 2 and 5";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectRestOfForecasts);
		while(results.next()) {
			Weather newForecast = mapResultsToWeather(results);
			restOfForecast.add(newForecast);
		}
		return restOfForecast;
	}
	public Weather mapResultsToWeather(SqlRowSet results) {
		Weather newForecast = new Weather();
		newForecast.setParkCode(results.getString("parkcode"));
		newForecast.setFiveDayForecastValue(results.getInt("fivedayforecastvalue"));
		newForecast.setLow(results.getInt("low"));
		newForecast.setHigh(results.getInt("high"));
		newForecast.setForecast(results.getString("forecast"));
		
		
		return newForecast;
	}
}
