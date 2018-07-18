package com.techelevator.npgeek.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;


public class JdbcSurveyDao implements SurveyDao{
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JdbcSurveyDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Park> topParks() {
		List<Park> topParks = new ArrayList<>();
		String sqlSelectTopParks = "SELECT parkcode, COUNT(parkcode) AS topsurveys FROM survey_result ORDER BY topsurveys SORT BY DESC LIMIT 5";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectTopParks);
		while(results.next()) {
			Park newPark = mapResultsToPark(results);
			topParks.add(newPark);
		}
		return topParks;
	}
	
	@Override
	public void save(Survey survey) {
		String sqlInsertSurvey = "INSERT INTO survey_result(username, rating, review_title, review_text, review_date) VALUES (?,?,?,?,?) RETURNING review_id";
		long id = jdbcTemplate.queryForObject(sqlInsertReview, Long.class, review.getUsername(), review.getRating(), review.getTitle(), review.getText(), review.getDateSubmitted());
		review.setId(id);
	}

}
