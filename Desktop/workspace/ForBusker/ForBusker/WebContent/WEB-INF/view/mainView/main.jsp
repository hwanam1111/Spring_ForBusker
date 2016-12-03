<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<% String projectName = "/ForBusker"; %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FOR-Busker</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- ################################################################ -->
<!-- ################################################################ -->
<!-- Main css -->
<link href="<%=projectName %>/resources/css/index_css/layout.css" rel="stylesheet" type="text/css" media="all">

<!-- ################################################################ -->
<!-- ################################################################ -->
<!-- jQuery lib CDN URL -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- 로그아웃 부분 -->
<script type="text/javascript">
function logout(){
	 var con = confirm("로그아웃을 하시겠습니까?");
	 if(con == true){
		 location.href="logout.do";
	  //logout을 위해 세션을 제거하는 페이지 호출
	 }else{}
	}
</script>	
<!-- ################################################# -->
<style type="text/css" rel="stylesheet">
@import url(https://fonts.googleapis.com/css?family=Bungee);
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
	body, input, textarea, select{font-family: 'Hanna', serif;}
	h1, h2, h3, h4, h5, h6, .heading{font-family: 'Hanna', serif;}

/* 네비게이션 메뉴 */
#mainav #liMyPage:hover{color:#000; background-color:inherit; text-decoration: none; cursor: pointer;}
#mainav .ul_li_List{color:#ff0000; line-height: 30px;}
#mainav .ul_li_List:first-child{margin-top:30px;}
</style>

 
</head>
<body id="top">
	<!-- Top Background Image Wrapper -->
	<div class="bgded overlay" style="background-image: url('<%=projectName %>/resources/images/index_img/headerBg.jpg');">
		<div class="wrapper row1">
<%if(session.getAttribute("login") == null) { %>
			<header id="header" class="hoc clear">
			<div id="logo" class="fl_left">
				<h1>
					<a href="main.do">For Busker-♬</a>
				</h1>
			</div>
			<nav id="mainav" class="fl_right">
			<ul class="clear">
				<li><a href="login.do">로그인</a></li>
				<li><a href="join.do">회원가입</a></li>
				<li><a href="noticeList.do">Notice</a></li>
			</ul>
			</nav> <!-- ################################################################################################ -->
			</header>
<% } else { %>
			<header id="header" class="hoc clear">
		<!-- ################################################# -->
		<!-- ################################################# -->
		<!-- logo부분 -->
			<div id="logo" class="fl_left">
				<h1>
					<a href="main.do">For Busker-♬</a>
				</h1>
			</div>
			<!-- ################################################# -->
			<!-- ################################################# -->
			<!-- 오른쪽 nav메뉴 -->
			<nav id="mainav" class="fl_right">
				<ul class="clear">
					<li onclick="logout()" id="liLogout" style="cursor: pointer">로그아웃</li>
					<li id="liMyPage"> 카테고리메뉴
						<ul> 
							<li class="ul_li_List"><a href="showList.do">공연찾기</a></li>
							<li class="ul_li_List"><a href="sponAndBacked.do">후원하기</a></li>
							<li class="ul_li_List"><a href="videoMain.do">영상모음</a></li>
							<li class="ul_li_List"><a href="togetherList.do">함께해요</a></li>
						</ul>
					</li>
					<li><a href="message.do">쪽지함</a></li>
					<li><a href="noticeList.do">Notice</a></li>
					<li id="liMyPage"> ${sessionScope.login.memEmail}
						<ul> 
							<li class="ul_li_List"><a href="mypageUpdate.do">내 정보 수정</a></li>
							<li class="ul_li_List"><a href="showRegist.do">공연 등록하기</a></li>
							<li class="ul_li_List"><a href="mypageLeave.do">회원 탈퇴하기</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			<!-- ################################################# -->
			<!-- ################################################# -->
		</header>
<% } %>
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<div id="pageintro" class="hoc clear">
			<article> <!-- ################################################################################################ -->
			<h3 class="heading">Street Performance</h3>
			<p>
				무엇 하나 쉽지 않은 거리공연, 여기저기 흩어져 있는 공연정보,<br> 이제 OOOO을 통해 1년 365일 생생한
				거리공연의 즐거움을 만나보세요.
			</p>
			<p class="font-x1 uppercase bold">For Busker</p>
			<!-- ################################################################################################ -->
			</article>
		</div>
		<!-- ################################################################################################ -->
	</div>
	<!-- End Top Background Image Wrapper -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="wrapper row3">
		<main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
		<div class="sectiontitle">
			<h6 class="heading">CATEGORI</h6>
		</div>
		<ul class="nospace group center">
			<li class="one_quarter first"><article>
				<a href="showList.do"><img src="<%=projectName %>/resources/images/index_img/categori_1.jpg" class="cate_img"></a>
				<h6 class="heading font-x1">Find a show</h6>
				</article></li>
			<li class="one_quarter"><article>
				<a href="sponAndBacked.do"><img src="<%=projectName %>/resources/images/index_img/categori_2.jpg" class="cate_img"></a>
				<h6 class="heading font-x1">Sponsor</h6>
				</article></li>
			<li class="one_quarter"><article>
				<a href="videoMain.do"><img src="<%=projectName %>/resources/images/index_img/categori_3.jpg" class="cate_img"></a>
				<h6 class="heading font-x1">Video Collection</h6>
				</article></li>
			<li class="one_quarter"><article>
				<a href="togetherList.do"><img src="<%=projectName %>/resources/images/index_img/categori_4.jpg" class="cate_img"></a>
				<h6 class="heading font-x1">Join Us</h6>
				</article></li>
		</ul>
		<!-- ################################################################################################ -->
		<!-- / main body -->
		<div class="clear"></div>
		</main>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="wrapper bgded"
		style="background-color: rgba(49, 255, 255, .49); border-top: 1px solid rgba(49, 101, 115, .75); border-bottom: 1px solid rgba(49, 101, 115, .75); width: 100%">
		<div class="split clear">
			<img src="<%=projectName %>/resources/images/index_img/map.jpg" style="float: left; width: 60%; height: 600px;">
			<section id="split-right"> <!-- ################################################################################################ -->
			<h6 class="heading">리스트 ㅇㅇ</h6>
			<p class="btmspace-30">리스트 ㅇㅇ</p>
			<ul class="fa-ul">
				<li><i class="fa-li fa fa-check-circle"></i> 리스트 1임</li>
				<li><i class="fa-li fa fa-check-circle"></i> 리스트 2임</li>
				<li><i class="fa-li fa fa-check-circle"></i> 리스트 3임</li>
			</ul>
			<!-- ################################################################################################ -->
			</section>
		</div>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="wrapper row3">
		<section class="hoc container clear"> <!-- ################################################################################################ -->
		<div class="sectiontitle">
			<h6 class="heading">Busker Top3 Ranking</h6>
			<p>이번달 Top3에 Rank된 분들입니다.</p>
		</div>
		<div class="group latest">
			<article class="one_third first"> <figure>
			<a href="#"><img src="images/demo/320x220.png" alt=""></a></figure>
			<div class="txtwrap">
				<h4 class="heading">Ex etiam auctor blandit</h4>
				<ul class="nospace meta">
					<li><i class="fa fa-user"></i> <a href="#">Admin</a></li>
					<li><i class="fa fa-tag"></i> <a href="#">Category Name</a></li>
				</ul>
				<p>Tellus accumsan et egestas eu semper ac odio aenean quis
					dapibus massa sit amet tincidunt dui nulla facilisi&hellip;</p>
				<footer>
				<a href="#">Read More &raquo;</a></footer>
			</div>
			</article>
			<article class="one_third"> <figure>
			<a href="#"><img src="images/demo/320x220.png" alt=""></a></figure>
			<div class="txtwrap">
				<h4 class="heading">Risus in commodo arcu</h4>
				<ul class="nospace meta">
					<li><i class="fa fa-user"></i> <a href="#">Admin</a></li>
					<li><i class="fa fa-tag"></i> <a href="#">Category Name</a></li>
				</ul>
				<p>Aliquam erat volutpat convallis nunc at risus tempor nec
					suscipit erat efficitur et elit lectus vestibulum ante&hellip;</p>
				<footer>
				<a href="#">Read More &raquo;</a></footer>
			</div>
			</article>
			<article class="one_third"> <figure>
			<a href="#"><img src="images/demo/320x220.png" alt=""></a></figure>
			<div class="txtwrap">
				<h4 class="heading">Gravida eu sed elit</h4>
				<ul class="nospace meta">
					<li><i class="fa fa-user"></i> <a href="#">Admin</a></li>
					<li><i class="fa fa-tag"></i> <a href="#">Category Name</a></li>
				</ul>
				<p>Cubilia curae aliquam feugiat laoreet malesuada elementum
					habitant morbi tristique et netus et fames ac&hellip;</p>
				<footer>
				<a href="#">Read More &raquo;</a>
				</footer>
			</div>
			</article>
		</div>
		<!-- ################################################################################################ -->
		</section>
	</div>

	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="wrapper row5">
		<div id="copyright" class="hoc clear">
			<!-- ################################################################################################ -->
			<p class="fl_right">
				Copyright &copy; 2016 - All Rights Reserved - <a href="#">FOR Busker</a>
			</p>
			<!-- ################################################################################################ -->
		</div>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
	<!-- JAVASCRIPTS -->
	<script src="<%=projectName %>/resources/js/index_js/jquery.backtotop.js"></script>
	<script src="<%=projectName %>/resources/js/index_js/jquery.mobilemenu.js"></script>
</body>
</html>