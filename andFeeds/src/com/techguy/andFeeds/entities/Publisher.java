package com.techguy.andFeeds.entities;

public class Publisher
	{
		private int publisherId;
		private String publisherName,publisherdesc,displayPicture,fb,tweet;
		
		public Publisher()
		{
			
		}

		public Publisher(String publisherName, String publisherdesc, String displayPicture, String fb, String tweet)
			{
				super();
				this.publisherName = publisherName;
				this.publisherdesc = publisherdesc;
				this.displayPicture = displayPicture;
				this.fb = fb;
				this.tweet = tweet;
			}

		public Publisher(int publisherId, String publisherName, String publisherdesc, String displayPicture, String fb,
				String tweet)
			{
				super();
				this.publisherId = publisherId;
				this.publisherName = publisherName;
				this.publisherdesc = publisherdesc;
				this.displayPicture = displayPicture;
				this.fb = fb;
				this.tweet = tweet;
			}

		public int getPublisherId()
			{
				return publisherId;
			}

		public void setPublisherId(int publisherId)
			{
				this.publisherId = publisherId;
			}

		public String getPublisherName()
			{
				return publisherName;
			}

		public void setPublisherName(String publisherName)
			{
				this.publisherName = publisherName;
			}

		public String getPublisherdesc()
			{
				return publisherdesc;
			}

		public void setPublisherdesc(String publisherdesc)
			{
				this.publisherdesc = publisherdesc;
			}

		public String getDisplayPicture()
			{
				return displayPicture;
			}

		public void setDisplayPicture(String displayPicture)
			{
				this.displayPicture = displayPicture;
			}

		public String getFb()
			{
				return fb;
			}

		public void setFb(String fb)
			{
				this.fb = fb;
			}

		public String getTweet()
			{
				return tweet;
			}

		public void setTweet(String tweet)
			{
				this.tweet = tweet;
			}
	
	
	}

