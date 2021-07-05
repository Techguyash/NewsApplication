package com.techguy.andFeeds.util;


import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;


public class DbConnector
	{
		private static Connection con;

		public static Connection getConnection()
			{

				try
					{
						if (con == null || con.isClosed())
							{
//								// configuring the prop file
//								ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
//								InputStream input = classLoader.getResourceAsStream("config.properties");
//								Properties prop = new Properties();
//								prop.load(input);
//								
//								String url = prop.getProperty("url");
//								String password = prop.getProperty("password");
//								String user = prop.getProperty("username");
								
								String url="jdbc:mysql://localhost:3306/andfeeds?serverTimezone=UTC";
								String user="root";
								String password="";
							//	 loding the db prop
								Class.forName("com.mysql.cj.jdbc.Driver");
								con = DriverManager.getConnection(url, user, password);
								System.out.println("New connection established Successfully : " + con);
							} else
							{
								System.out.println("using connection from existing pool : " + con);
							}

					} catch (Exception e)
					{
						e.printStackTrace();
					}
				return con;

			}

	}
