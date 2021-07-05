package com.techguy.andFeeds.entities;

public class User
	{
		private String userid;
		private String name;
		private String password;
		private String designation;
		private String mobile;
		private String profilePic;
		private String email;
		
		public User()
			{
				
			}

		//for getting value from db

		public User(String userid, String name, String password, String designation, String mobile, String profilePic,String email)
			{
				super();
				this.userid = userid;
				this.name = name;
				this.password = password;
				this.designation = designation;
				this.mobile = mobile;
				this.profilePic = profilePic;
				this.email=email;
			}

//for setting value to db
		public User(String name, String password, String designation, String mobile, String profilePic,String email)
			{
				super();
				this.name = name;
				this.password = password;
				this.designation = designation;
				this.mobile = mobile;
				this.profilePic = profilePic;
				this.email=email;
			}

		public String getUserid()
			{
				return userid;
			}

		public void setUserid(String userid)
			{
				this.userid = userid;
			}

		public String getName()
			{
				return name;
			}

		public void setName(String name)
			{
				this.name = name;
			}

		public String getPassword()
			{
				return password;
			}

		public void setPassword(String password)
			{
				this.password = password;
			}

		public String getDesignation()
			{
				return designation;
			}

		public void setDesignation(String designation)
			{
				this.designation = designation;
			}

		public String getMobile()
			{
				return mobile;
			}

		public void setMobile(String mobile)
			{
				this.mobile = mobile;
			}

		public String getProfilePic()
			{
				return profilePic;
			}

		public void setProfilePic(String profilePic)
			{
				this.profilePic = profilePic;
			}
		public String getEmail()
			{
				return email;
			}

		public void setEmail(String email)
			{
				this.email = email;
			}

		
		
	}
