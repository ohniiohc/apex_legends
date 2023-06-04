<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<div id="header_top">
			<a id="h_t_logo" href="<c:url value='/index'/>">FUSE.GG</a>
			<div id="h_t_loganduser">
				<c:if test="${session_u_id == null}">
					<a class="log" href="<c:url value='/login'/>">Login</a>
				</c:if>
				<c:if test="${session_u_id != null}">
					<img class="user_profile_img" src="<c:url value='/resources/images/icon/user.svg'/>">
					<span class="user_profile_id">${session_u_id}</span>			
					<a class="log" href="<c:url value='/logout'/>">Logout</a>
				</c:if>
			</div>
		</div>