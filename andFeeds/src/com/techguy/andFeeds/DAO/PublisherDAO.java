package com.techguy.andFeeds.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.techguy.andFeeds.entities.Publisher;

public class PublisherDAO
	{

		private  Connection con;

		public PublisherDAO(Connection con)
			{
				this.con = con;
			}

		public List<Publisher> getAllPublisher()
		{
			
			List<Publisher> list=new ArrayList<>();
			try
				{
					Publisher publish=null;
					String query="SELECT * FROM publisher_db";
					Statement stmt=con.createStatement();
					ResultSet rs=stmt.executeQuery(query);
					String tweet="nan";
					String fb="nan";
					while(rs.next())
						{
						int id=rs.getInt("publisher_id");
						String name=rs.getString("publisher_name");
						String desc=rs.getString("publisher_desc");
						String dp=rs.getString("displaypicture");
							if(rs.getString("fb")!=null)
								{
									fb=rs.getString("fb");
								}
							if(rs.getString("tweet")!=null)
								{
									tweet=rs.getString("tweet");
								}
								publish=new Publisher(id, name, desc, dp, fb, tweet);
							list.add(publish);
						}
					con.close();
				}
			

			catch(Exception e)
				{
					e.printStackTrace();
				}
			return list;
		}
		
		
		
		public boolean createPublisher(Publisher publisher)
		{
			try
				{
					String query="insert into publisher_db(publisher_name,publisher_desc,displaypicture,fb,tweet)"
							+ " values('"+publisher.getPublisherName()+"','"+publisher.getPublisherdesc()+"','"+publisher.getDisplayPicture()+"','"+publisher.getFb()+"','"+publisher.getTweet()+"')";
					PreparedStatement stm=con.prepareStatement(query);
					if(stm.execute())
						{
							return true;
						}
					con.close();
				}
			catch(Exception e)
				{
					e.printStackTrace();
					
				}
			return false;
		}
		
		
		
		public boolean updatePublisher(Publisher publish)
		{
			try 
				{
					String query="update publisher_db set publisher_name='"+publish.getPublisherName()+"',"
							+ "publisher_desc='"+publish.getPublisherdesc()+"',displaypicture='"+publish.getDisplayPicture()+"',fb='"+publish.getFb()+"',tweet='"+publish.getTweet()+"' where publisher_id=? ";
					PreparedStatement stm=con.prepareStatement(query);
					stm.setInt(1, publish.getPublisherId());
					if(stm.execute())
						{
							return true;
						}
					con.close();
				}
			catch(Exception e)
				{
					e.printStackTrace();
				}
			return false;
		}
		
		
		
		public boolean deletePublisher(int id)
		{
			try {
				String query = "DELETE FROM publisher_db WHERE publisher_id=?";
				PreparedStatement stmt=con.prepareStatement(query);
				stmt.setInt(1, id);
				if(stmt.execute())
					{
						return true;
					}
				con.close();
			}
			catch(Exception e)
				{
					e.printStackTrace();
				}
			return false;
		}
		

	}
