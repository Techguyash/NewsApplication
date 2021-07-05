package com.techguy.andFeeds.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.techguy.andFeeds.entities.User;

public class UserDAO
	{

		private static Connection connection;

		public UserDAO(Connection con)
			{
				connection = con;
			}

		public User getUser(String email, String Password)
			{

				User usr = null;

				try
					{
						String query = "select * from users where email='" + email + "' and password='" + Password
								+ "'";
						PreparedStatement stmt = connection.prepareStatement(query);

						ResultSet rs = stmt.executeQuery();
						while (rs.next())
							{
								usr = new User();
								usr.setUserid(rs.getString("userid"));
								usr.setName(rs.getString("name"));
								usr.setPassword(rs.getString("designation"));
								usr.setMobile(Integer.toString(rs.getInt("mobile")));
								usr.setProfilePic(rs.getString("profilepic"));
							}
						connection.close();

					} 
				catch (Exception e)
					{
						e.printStackTrace();
					}
				return usr;

			}
	}
