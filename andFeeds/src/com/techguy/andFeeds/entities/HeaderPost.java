package com.techguy.andFeeds.entities;

public class HeaderPost
	{

		private int postId;
		private String content;
		private String createdBy;
		private String img;

		public String getImg()
			{
				return img;
			}

		public void setImg(String img)
			{
				this.img = img;
			}

		public HeaderPost(int postId, String content,String img)
			{
				super();
				this.postId = postId;
				this.content = content;
				this.img=img;
			}

		public HeaderPost(String content, String createdBy, String img)
			{
				super();
				this.content = content;
				this.createdBy = createdBy;
				this.img=img;
			}

		public int getPostId()
			{
				return postId;
			}

		public void setPostId(int postId)
			{
				this.postId = postId;
			}

		public String getContent()
			{
				return content;
			}

		public void setContent(String content)
			{
				this.content = content;
			}

	}
