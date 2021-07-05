package com.techguy.andFeeds.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.techguy.andFeeds.entities.HeaderPost;
import com.techguy.andFeeds.entities.NewsPost;

public class NewspostDAO
	{
		private Connection con;
		private int noOfRecords;

		public NewspostDAO(Connection con)
			{
				this.con = con;
			}

		public List<NewsPost> getAllPost(int offset, int noOfRecords)
			{
				List<NewsPost> newslist = new ArrayList<NewsPost>();
				try
					{
						

						NewsPost news = null;
						PreparedStatement stmt = con.prepareStatement(
								"SELECT SQL_CALC_FOUND_ROWS * FROM newspost WHERE"
								+ " createdon >= CURDATE()-1 LIMIT "+offset+","+noOfRecords);
//						System.out.println("SELECT SQL_CALC_FOUND_ROWS * FROM newspost WHERE"
//								+ " createdon >= CURDATE()-1 LIMIT "+offset+","+noOfRecords);
						ResultSet rs = stmt.executeQuery();

						while (rs.next())
							{
								int id = rs.getInt("postid");
								String cat = rs.getString("categoryName");
								String title = rs.getString("title");
								String content = rs.getString("content");
								String imgurl = rs.getString("img");
								Date postedon = rs.getDate("postDate");
								news = new NewsPost(id, cat, title, content, postedon, imgurl);
//								System.out.println(news.toString());
								newslist.add(news);
							}
						rs.close();
						rs=stmt.executeQuery("SELECT FOUND_ROWS()");
						if(rs.next())
							this.noOfRecords=rs.getInt(1);
							
						con.close();
					}
				catch (Exception e)
					{
						e.printStackTrace();
					}

				return newslist;
			}
		
		
		public int getNoOfRecords()
		{
			return noOfRecords;
		}
		
		
		public List<HeaderPost> getHeaderContent()
		{
			
			List<HeaderPost> headerList = new ArrayList<HeaderPost>();
			try
				{
					

					HeaderPost news = null;
					PreparedStatement stmt = con.prepareStatement(
							"SELECT * FROM headerpost WHERE"
							+ " createdon >= CURDATE()-1 LIMIT 0,3");

					ResultSet rs = stmt.executeQuery();

					while (rs.next())
						{
							int id = rs.getInt("postid");
							String content = rs.getString("content");
							String imgurl = rs.getString("img");
							news=new HeaderPost(id, content, imgurl);
							headerList.add(news);
						}
					
					con.close();
				}
			catch (Exception e)
				{
					e.printStackTrace();
				}

			return headerList;

			
		}
		
		
		
		

	}
