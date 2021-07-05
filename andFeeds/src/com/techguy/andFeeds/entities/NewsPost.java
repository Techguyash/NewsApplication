package com.techguy.andFeeds.entities;

import java.util.Date;

public class NewsPost
	{
		private int postId;
		private String categoryName;
		private String title,content,img;
		private Date postDate;
		
		
		public int getPostId()
			{
				return postId;
			}


		public void setPostId(int postId)
			{
				this.postId = postId;
			}


		public String getCategoryName()
			{
				return categoryName;
			}


		public void setCategoryName(String categoryName)
			{
				this.categoryName = categoryName;
			}


		public String getTitle()
			{
				return title;
			}


		public void setTitle(String title)
			{
				this.title = title;
			}


		public String getContent()
			{
				return content;
			}


		public void setContent(String content)
			{
				this.content = content;
			}


		public Date getCreatedon()
			{
				return postDate;
			}


		public void setCreatedon(Date postDate)
			{
				this.postDate = postDate;
			}


		public String getImg()
			{
				return img;
			}


		public void setImg(String img)
			{
				this.img = img;
			}


		


		public NewsPost(int postId, String categoryName, String title, String content, Date postDate, String img)
			{
				super();
				this.postId = postId;
				this.categoryName = categoryName;
				this.title = title;
				this.content = content;
				this.postDate = postDate;
				this.img = img;
				
			}


		public NewsPost(String categoryName, String title, String content, String img,Date postDate)
			{
				super();
				this.categoryName = categoryName;
				this.title = title;
				this.content = content;
				this.img = img;
				this.postDate=postDate;
				
			}


		public NewsPost() {
			
		}


		@Override
		public String toString()
			{
				return "NewsPost [postId=" + postId + ", categoryName=" + categoryName + ", title=" + title
						+ ", content=" + content + ", img=" + img + ", postDate=" + postDate + "]";
			}
		
		
	}
