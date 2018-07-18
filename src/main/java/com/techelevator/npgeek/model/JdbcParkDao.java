package com.techelevator.npgeek.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcParkDao implements ParkDao{

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JdbcParkDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Park> getAllParks() {
		List<Park> allParks = new ArrayList<>();
		String sqlSelectAllParks = "SELECT * FROM park";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllParks);
		while(results.next()) {
			Park newPark = mapResultsToPark(results);
			allParks.add(newPark);
		}
		return allParks;
	}
	
	public Park mapResultsToPark(SqlRowSet results) {
		Park newPark = new Park();
		newPark.setParkCode(results.getString("parkcode").toLowerCase());
		newPark.setParkName(results.getString("parkname"));
		newPark.setState(results.getString("state"));
		newPark.setAcreage(results.getInt("acreage"));
		newPark.setElevation(results.getInt("elevationinfeet"));
		newPark.setMilesOfTrail(results.getDouble("milesoftrail"));
		newPark.setNumberOfCampsites(results.getInt("numberofcampsites"));
		newPark.setClimate(results.getString("climate"));
		newPark.setYearFounded(results.getInt("yearfounded"));
		newPark.setAnnualVisitorCount(results.getInt("annualvisitorcount"));
		newPark.setInspirationalQuote(results.getString("inspirationalquote"));
		newPark.setInspirationalQuoteSource(results.getString("inspirationalquotesource"));
		newPark.setParkDescription(results.getString("parkdescription"));
		newPark.setEntryFee(results.getInt("entryfee"));
		newPark.setNumberOfAnimalSpecies(results.getInt("numberofanimalspecies"));
		
		return newPark;
	}
}
