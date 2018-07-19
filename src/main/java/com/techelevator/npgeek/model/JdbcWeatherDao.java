package com.techelevator.npgeek.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcWeatherDao implements WeatherDao{

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcWeatherDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	@Override
	public Weather getParkFirstDayForecast(String parkCode) {
		String sqlSelectFirstForecast = "SELECT * FROM weather WHERE parkcode = ? AND fivedayforecastvalue = 1;";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectFirstForecast, parkCode.toUpperCase());
		if(results.next()) {
			Weather newForecast = mapResultsToWeather(results);
			return newForecast;
		}
		return null;
	}
	@Override
	public List<Weather> getParkRestOfForecast(String parkCode) {
		List<Weather> fourDayForecast = new ArrayList<>();
		String sqlSelectRestOfForecasts = "SELECT * FROM weather WHERE parkcode = ? AND fivedayforecastvalue BETWEEN 2 AND 5 ORDER BY fivedayforecastvalue ;";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectRestOfForecasts, parkCode.toUpperCase());
		while(results.next()) {
			Weather newForecast = mapResultsToWeather(results);
			fourDayForecast.add(newForecast);
		}
		return fourDayForecast;
	}
	public Weather mapResultsToWeather(SqlRowSet results) {
		Weather newForecast = new Weather();
		newForecast.setParkCode(results.getString("parkcode").toLowerCase());
		newForecast.setFiveDayForecastValue(results.getInt("fivedayforecastvalue"));
		newForecast.setLow(results.getInt("low"));
		newForecast.setHigh(results.getInt("high"));
		newForecast.setForecast(results.getString("forecast"));
		
		
		return newForecast;
	}
}
