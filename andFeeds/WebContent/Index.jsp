<%@page import="com.techguy.andFeeds.DAO.CategoryDAO"%>
<%@page import="com.techguy.andFeeds.util.DbConnector"%>
<%@ page import="com.techguy.andFeeds.entities.Publisher"%>
<%@ page import="com.techguy.andFeeds.entities.Category"%>
<%@ page import="com.techguy.andFeeds.entities.NewsPost"%>
<%@ page import="com.techguy.andFeeds.entities.HeaderPost"%>
<%@ page import="com.techguy.andFeeds.DAO.PublisherDAO"%>
<%@ page import="com.techguy.andFeeds.DAO.NewspostDAO"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
<!-- author : techguy -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    
    <title>&amp;Feeds</title>
    <!--local css -->
    <link rel="stylesheet" href="css/mystyle.css">
    <!--Google fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <!--font awesome-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--aop cdn-->
     <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
</head>

<body>

    <!--b=navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">&amp;Feeds</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About us</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Category
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <%
                        CategoryDAO catDAO=new CategoryDAO(DbConnector.getConnection());
                        List<Category> catList=catDAO.getAllCategory();
                        for(int j=0;j<=4;j++)
                        	{
                        
                        %>
                        
                        <a class="dropdown-item" href="#"><%=catList.get(j).getCategoryName()%></a>
                                     
                     <%
                     }
                     %>
                    </div>
                </li>

            </ul>
          
        </div>
    </nav>
    <!--navbar-->


    <!--content header-->
    <section class="header-content py-3">
        <div class="container-fluid ml-0">
            <div class="row">
                <div class="col-md-8">
					<%
					NewspostDAO newsdao=new NewspostDAO(DbConnector.getConnection());
					List<HeaderPost> headerpost=newsdao.getHeaderContent();
					%>
			
                    <!--main header post-->
                    <div class="header-content-post shadow">

                        <img src="<%=headerpost.get(0).getImg() %>"
                        class="img-fluid" alt="breaking news">

                    <div class="header-content-post-content m-4">

                        <h5 class="post-text">#<%=headerpost.get(0).getContent() %>
                        </h5>
                    </div>


                </div>
                <!--main header post ends here-->
            </div>
            <!-- header sub post -->
            <div class="col-md-4">

                <div class="header-content-post shadow mt-4">
                    <img src="<%=headerpost.get(1).getImg() %>"
                    class="img-fluid" alt="breaking news">

                <div class="header-content-post-content">
                    <div class="row m-1">

                        <div class="col-md-12">


                            <h3 class="post-text">#<%=headerpost.get(1).getContent() %></h3>
                            
                        </div>

                    </div>
                </div>

                </div>
                <!--second sub post content starts here-->
                <div class="header-content-post shadow mt-4">

                    <img src="<%=headerpost.get(2).getImg()%>"
                        class="img-fluid" alt="breaking news">

                    <div class="header-content-post-content">
                        <div class="row m-1">

                            <div class="col-md-12">


                                <h3 class="post-text">#<%=headerpost.get(2).getContent() %></h3>
                            </div>

                        </div>
                    </div>


                </div>




            </div>
        </div>


        </div>
    </section>


    <!--main content-->
    <section class="main-content py-3">
        <h3 class="title mb-5">Latest News</h3>

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 ">

                    <!--articles will start here-->
                    
                    
<%
	
List<NewsPost> posts= (List<NewsPost>)request.getAttribute("postList");
if(posts!=null)
	{
for(NewsPost post:posts)
	{

%>
                 <article class="news-post shadow mb-4" data-aos="zoom-in-right" data-aos-offset="200">
                        <div class="row">
                            <div class="col-sm-3">
                                <img class="img-fluid" alt="post-pic"
                                    src="<%=post.getImg()%>">

                            </div>
                            <div class="col-sm-9">
                                <h3><%=post.getTitle() %></h3>
                                <p><%=post.getContent() %></p>
                                <div class="post-badge">
                                    <!--date posted-->
                                    <a href="#">
                                        <i class="fa fa-calendar-o" aria-hidden="true"></i>
                                        <%=post.getCreatedon()%></a>
                                    <!--category batch-->
                                    <a href="#"><%=post.getCategoryName()%></a>
                                </div>
                            </div>


                        </div>

                 </article>
                 <%
	
	}
	}
%>
                    
                    
                    
                    
                    
                    
                    
  <!--pagenation effects-->
                       <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                        
                        <!-- button logic -->
                        <%int current=(int)request.getAttribute("currentpage");
                        if(current!=1)
                        	{
                        
                        %>
                          
                            <li class="page-item"><a class="page-link page-number"
                             href="/andFeeds/LoadPostPage?page=<%=current-1%>">Previous</a></li>
                            <%
                        	}
                        %>
                             <%
                           
                           int total=(int)request.getAttribute("totalPages");
                             for(int i=1;i<=total && total!=1 ;i++)
                        	   {
                        		   if(current==i)
                        			   {
                        				   %>
                        				    <li class="page-item disabled"><a class="page-link page-number"><%=i%></a></li>
                        				   <% 
                        				   
                        			   }
                        		   else{
                        			   %>
                        			    <li class="page-item"><a class="page-link page-number"
                             href="/andFeeds/LoadPostPage?page=<%=i%>"><%=i %></a></li>
                        			   <%
                        		   }
                        	   }
                        	  
                             if(current<total)
                            	 {

                         
                         %>
                       <li class="page-item">
                            <a class="page-link page-number"
                             href="/andFeeds/LoadPostPage?page=<%=current+1%>">Next</a>
                          </li>
                          <%
                          }
                          %>
                        </ul>
                      </nav>
                    <!--pagenation-->


                </div>
                <aside class="col-lg-4" >
                    <!--social links-->
                    <div class="row text-center shadow-lg social">
                        <div class="col-sm-4 py-3 social-hover">
                            <a class="social-link w-100">
                                <i class="fa fa-facebook-official" aria-hidden="true"></i>
                            </a>
                        </div>
                        <div class="col-sm-4 py-3 secondary-color">
                            <a class="social-link w-100 ">
                                <i class="fa fa-twitter" aria-hidden="true"></i>
                            </a>
                        </div>
                        <div class="col-sm-4 py-3 social-hover">
                            <a class="social-link w-100 ">
                                <i class="fa fa-youtube-play" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                    <h5 class="aside-heading mt-4 pl-2">Popular publishers</h5>
                    <!--popular author data populate-->
                    
                    <%
    PublisherDAO dao=new PublisherDAO(DbConnector.getConnection());
     List<Publisher> list=dao.getAllPublisher();
     if(list!=null)
    	 {
    for(Publisher pub:list)
    {
  %>
  
  <article class="row publisher mb-3 shadow-lg">

                        <div class="col-sm-4">
                            <img src="<%=pub.getDisplayPicture()%>"
                                class="img-fluid rounded-circle rounded-sm" alt="">


                        </div>


                        <div class="col-sm-8 mt-4">
                            <h6><%=pub.getPublisherName()%></h6>
                            <p><%=pub.getPublisherdesc()%></p>
                            <div class="social-links">
                                <a href="<%=pub.getFb()%>">
                                    <i class="fa fa-facebook-official" aria-hidden="true"></i>
                                </a>
                                <a href="<%=pub.getTweet()%>">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                               
                            </div>


                        </div>

        </article>
        <%
        }
    }
    %>

                  
                    <h4 class="aside-heading mt-4 pl-2">Popular Category</h4>
                    <div class="badge w-100 shadow-lg">
                     
                     <%
                       
                     int counter=2;
                 for(int i=0;i<catList.size();i++)
                    	 
                    	 {
                    		counter++;
                     %>
                     
                        <a href="#"><%=catList.get(i).getCategoryName()%></a>                        
                      <%
                      if(counter==3)
                    	  {
                    		  %>
                    		  <br>
                    		  <% 
                    		  counter=0;
                    	  }
                      }
                      %>
                      
                    </div>
                </aside>
            </div>
        </div>
    </section>


    <!--footer section-->
    <footer class="footer py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <a class="footer-logo" href="#">&amp;Feeds</a>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                        the
                        industry's standard dummy text
                        ever since the 1500s
                    </p>
                </div>
                <div class="col-md-6">
                    <h4>Useful links</h4>
                    <ul>
                        <li><a href="#">home</a></li>
                        <li><a href="#">Terms of service</a></li>
                        <li><a href="#">Privacy policy</a></li>
                        <li><a href="#">Contact us</a></li>
                    </ul>
                </div>
              

            </div>

            <div class="w-100 text-center">
                <p>Powered by Ocean&amp; &copy; 2020</p>
            </div>
        </div>

    </footer>



    <!--jquery cdn-->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
      AOS.init();
    </script>
</body>





</html>