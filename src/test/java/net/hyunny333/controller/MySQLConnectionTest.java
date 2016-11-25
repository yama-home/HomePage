package net.hyunny333.controller;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MySQLConnectionTest {
	private static final String DRIVER = "net.sf.log4jdbc.sql.jdbcapi.DriverSpy";
	private static final String URL = "jdbc:log4jdbc:mysql://127.0.0.1:3306/homepage";
	private static final String USER = "yama";
	private static final String PW = "1234";

	@Test
	public void testConnection() throws Exception {
		Class.forName(DRIVER);

		try(Connection con = DriverManager.getConnection(URL, USER, PW)) {
			System.out.println(con);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
