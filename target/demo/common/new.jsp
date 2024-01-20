
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.bean.*" %>
<%
    List<news> news = (List<news>) request.getAttribute("news");

%>
<section id="blog" class="blog">
    <div class="container">
        <div class="blog-details">
            <div class="gallary-header text-center">
                <h2>
                    Tin tức gần đây
                </h2>
                <p>
                    Các dữ liệu mới nhất được thu thập về tình hình du lịch.
                </p>
            </div>
            <!--/.gallery-header-->
            <div class="blog-content">
                <div class="row">
                    <% for (news n : news) { %>
                    <div class="col-sm-4 col-md-4">
                        <div class="thumbnail">
                            <h2>tin mới <span><%= n.getDate() %></span></h2>
                            <div class="thumbnail-img">
                                <a href="<%= n.getNewsLink() %>" style="cursor: pointer">
                                    <img src="assets/images/blog/<%= n.getImage() %>" alt="blog-img" style="height:220px">
                                </a>
                                <div class="thumbnail-img-overlay"></div><!--/.thumbnail-img-overlay-->
                            </div><!--/.thumbnail-img-->
                            <div class="caption">
                                <div class="blog-txt">
                                    <h3>
                                        <a style="color: #00d8fe!important;">
                                            <%= n.getTitle() %>
                                        </a>
                                    </h3>
                                    <p style="height: 350px;text-align: justify"><%= n.getContent() %>
                                    </p>
                                    <a href="<%= n.getNewsLink() %>" style="color: #b20909!important;">Read More</a>
                                </div><!--/.blog-txt-->
                            </div><!--/.caption-->
                        </div><!--/.thumbnail-->
                    </div><!--/.col-->
                    <% } %>

                </div><!--/.row-->
            </div><!--/.blog-content-->
        </div><!--/.blog-details-->
    </div><!--/.container-->

</section><!--/.blog-->

