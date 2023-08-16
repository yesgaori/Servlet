<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악이 필요할땐 Melong - 곡정보</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	
	<%@ include file="music-data.jsp" %>
	
	<%

	    
	    String selectMusic = request.getParameter("selectMusic");
	    String searchMusic = request.getParameter("searchMusic");
	    
	    Map<String, Object> target = null;
	   	for(Map<String, Object> music:musicList) {
	   		//대상이 되는 노래정보 객체를 얻어낸다.
	   		if(selectMusic != null) { // id가 전달이 되면, id 일치하는 정보
	   			int id = Integer.parseInt(selectMusic);
	   			int musicId = (Integer)music.get("id");
	   			
	   			if(id == musicId) {
	   				target = music;
	   			}
	   			
	   		}else if(searchMusic != null) {
	   			if(searchMusic.equals(music.get("title"))) {
	   				target = music;
	   			}
	   		}
	   	}
	    
	    
	%>


	<div id="wrap">
		<jsp:include page="header.jsp"/>
		<jsp:include page="nav.jsp"/>
		<section class="main-contents">
			<%
					int minit =(int)target.get("time") / 60;
					int sec = (int)target.get("time") % 60;
			%>
			<div class="musicInfo mb-3">
				<h3>곡 정보</h3>
			</div>
			<div class="singer-info border border-success">
				<div class="d-flex mt-2 p-3">
					<div>
						<img width="150px;" src="<%= target.get("thumbnail") %>">
					</div>
					<div class="ml-5 container">
						<h2><%= target.get("title") %></h2>
						<div class="text-success font-weight-bold"><%= target.get("singer") %></div>
						<div class="small text-secondary">
							<div class="mt-2 d-flex">
								<div>앨범</div>
								<div class="ml-5"> <%= target.get("album") %> </div>
							</div>
							<div class="d-flex">
								<div>재생시간</div>
								<div class="ml-5"><%= minit %> : <%= sec %></div>
							</div>
							<div class="d-flex">
								<div>작곡가</div>
								<div class="ml-5"> <%= target.get("composer") %> </div>
							</div>
							<div class="d-flex">
								<div>작사가</div>
								<div class="ml-5"> <%= target.get("lyricist") %> </div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="content2 pt-3">
			<h2>곡 목록</h2>
			<hr>
			<div>가사정보없음.</div>
			</div>
		</section>
		<jsp:include page="footer.jsp"/>
		
	
	
	
	
	</div>
	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>