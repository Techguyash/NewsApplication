package com.techguy.andFeeds.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.techguy.andFeeds.entities.Category;
import com.techguy.andFeeds.entities.User;

public class CategoryDAO
	{
		private Connection con;
		
		public CategoryDAO(Connection con)
		{
			this.con=con;
		}

		public boolean createCategory(Category cat)
		{
			try {
			String query="insert into category(category) values('"+cat.getCategoryName()+"')";
			
			PreparedStatement stmt=con.prepareStatement(query);
			if(stmt.execute())
				{
					return true;
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}return false;
		}
		
		
//		public List<String> getCategory()
//		{
//			try
//				{}
//			catch()
//		}
//		
		
		public boolean deleteCategory(int id)
		{
			try
				{
					
					String query="DELETE FROM category WHERE categoryid=?";
					PreparedStatement stmt=con.prepareStatement(query);
					stmt.setInt(1, id);
					if(stmt.execute())
						{
							return true;
						}
				}
			catch(Exception e)
				{
					e.printStackTrace();
				}
			return false;
		}
		
		public List<Category> getAllCategory()
			{

			Category cat = null;
			List<Category> catList=new ArrayList<Category>();

				try
					{
						String query = "select * from category";
						PreparedStatement stmt = con.prepareStatement(query);

						ResultSet rs = stmt.executeQuery();
						while (rs.next())
							{
								int id=rs.getInt(1);
								String name=rs.getString("category");
							cat=new Category(id, name);	
							
							catList.add(cat);
						
							}
						con.close();

					} 
				catch (Exception e)
					{
						e.printStackTrace();
					}
				return catList;

			}

		
		
	}
