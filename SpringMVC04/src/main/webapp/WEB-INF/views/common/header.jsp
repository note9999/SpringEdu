<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${contextPath}/"><strong>뚱이네</strong></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="${contextPath}/">공지사항</a></li>
				<li><a href="boardMain.do">게시판</a></li>
				<li><a href="#">Page 2</a></li>
			</ul>
			<c:if test="${empty mvo}">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">로그인<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/memLoginForm.do"><span
									class="glyphicon glyphicon-user"></span> 로그인</a></li>
							<li><a href="${contextPath}/memJoin.do"><span
									class="glyphicon glyphicon-log-in"></span> 회원가입</a></li>
						</ul></li>
				</ul>
			</c:if>
			<c:if test="${!empty mvo}">
				<ul class="nav navbar-nav navbar-right">
					<li>
						<!-- class="dropdown" --> <!--           <a class="dropdown-toggle" data-toggle="dropdown" href="#">회원관리<span class="caret"></span></a>
          <ul class="dropdown-menu"> -->
					<li><a href="${contextPath}/memUpdateForm.do">회원정보수정</a></li>
					<li><a href="${contextPath}/memImageForm.do">프로필수정</a></li>
					<li style="border-right: 1px solid lightgray;""><a
						href="${contextPath}/memLogout.do">로그아웃</a></li>
					<c:if test="${!empty mvo}">
						<c:if test="${empty mvo.memProfile}">
							<li style="margin-left: 5px;"><img
								src="${contextPath}/resources/images/person.jpg"
								style="width: 50px; height: 50px; padding: 5px; border-radius: 70%" />
								<strong>${mvo.memName}</strong>님 환영합니다.</li>
						</c:if>
						<c:if test="${!empty mvo.memProfile}">
							<li style="margin-left: 5px;"><img
								src="${contextPath}/resources/upload/${mvo.memProfile}"
								style="width: 50px; height: 50px; padding: 5px; border-radius: 70%" />
								<strong>${mvo.memName}</strong>님 환영합니다.</li>
						</c:if>
						<%-- <label><strong>${mvo.memName}님 방문을 환영합니다.</strong></label> --%>
					</c:if>
					<!--           </ul> -->
					</li>
				</ul>
			</c:if>
		</div>
	</div>
=======
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="${contextPath}/"><strong>뚱이네</strong></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${contextPath}/">공지사항</a></li>
        <li><a href="boardMain.do">게시판</a></li>
        <li><a href="#">Page 2</a></li>
      </ul>
      <c:if test="${empty mvo}">
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">로그인<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${contextPath}/memLoginForm.do"><span class="glyphicon glyphicon-user"></span> 로그인</a></li>
            <li><a href="${contextPath}/memJoin.do"><span class="glyphicon glyphicon-log-in"></span> 회원가입</a></li>
          </ul>
        </li>
      </ul>
      </c:if>
      <c:if test="${!empty mvo}">
      <ul class="nav navbar-nav navbar-right">
        <li > <!-- class="dropdown" -->
<!--           <a class="dropdown-toggle" data-toggle="dropdown" href="#">회원관리<span class="caret"></span></a>
          <ul class="dropdown-menu"> -->
            <li><a href="${contextPath}/memUpdateForm.do">회원정보수정</a></li>
            <li><a href="${contextPath}/memImageForm.do">프로필수정</a></li>
            <li style="border-right:1px solid lightgray;""><a href="${contextPath}/memLogout.do">로그아웃</a></li>
            <c:if test="${!empty mvo}">
            
 <c:if test="${mvo.memProfile eq null }">
    <li style="margin-left:5px;"><img src="${contextPath}/resources/images/person.jpg"style="width: 50px; height:50px; padding:5px; border-radius:70%"/>
    <strong>${mvo.memName}</strong>님 환영합니다.</li>
 </c:if>
 <c:if test="${mvo.memProfile ne null }">
    <li style="margin-left:5px;"><img src="${contextPath}/resources/upload/${mvo.memProfile}" style="width: 50px; height:50px; padding:5px; border-radius:70%"/>
    <strong>${mvo.memName}</strong>님 환영합니다.</li>
</c:if>
         <%-- <label><strong>${mvo.memName}님 방문을 환영합니다.</strong></label> --%>
         </c:if>
<!--           </ul> -->
        </li>
      </ul>
      </c:if>
    </div>
  </div>
>>>>>>> refs/remotes/origin/main
</nav>