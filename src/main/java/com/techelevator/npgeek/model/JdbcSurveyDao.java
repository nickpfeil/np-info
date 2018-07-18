package com.techelevator.npgeek.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcSurveyDao implements SurveyDao{
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JdbcSurveyDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Park> topParks() {
		List<Park> topParks = new ArrayList<>();
		String sqlSelectTopParks = "SELECT *, COUNT(parkcode) AS topsurveys FROM survey_result ORDER BY topsurveys SORT BY DESC LIMIT 5";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectTopParks);
		while(results.next()) {
			Park newPark = new Park();
			newPark.setParkCode(results.getString("parkcode"));
			newPark.setParkName(results.getString("parkname"));
			newPark.setParkDescription(results.getString("parkdescription"));
			newPark.setInspirationalQuote(results.getString("inspirationalquote"));
			newPark.setInspirationalQuoteSource(results.getString("inspirationalquotesource"));
			
			topParks.add(newPark);
		}
		return topParks;
	}
	
	@Override
	public void save(Survey survey) {
		String sqlInsertSurvey = "INSERT INTO survey_result(parkcode, emailaddress, state, activitylevel) VALUES (?,?,?,?)";
		long id = jdbcTemplate.queryForObject(sqlInsertSurvey, Long.class, survey.getParkCode(), survey.getEmailAddress(), survey.getState(), survey.getActivityLevel());
	}

}
