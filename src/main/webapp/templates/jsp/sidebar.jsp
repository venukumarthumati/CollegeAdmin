<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored="false" %>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/plugins/jquery/jquery-ui.min.js"></script>

<div class="left-sidenav">
            <!-- LOGO -->
            
            <%-- ${pageContext.request.contextPath} ===>  http://localhost:9091/college-admin/ --%>
            <div class="brand">
                <a href="${pageContext.request.contextPath}/dashboard" class="logo">
                    <!-- <span>
                        <img src="${pageContext.request.contextPath}/static/images/logo-sm.png" alt="logo-small" class="logo-sm">
                    </span> -->
                    <span>
                        <img src="${pageContext.request.contextPath}/static/images/vk1.png" alt="logo-large" class="logo-lg logo-light">
                        <img src="${pageContext.request.contextPath}/static/images/vk2.png" alt="logo-large" class="logo-lg logo-dark">
                    </span>
                </a>
            </div>
            <!--end logo-->
	<div class="menu-content h-100" data-simplebar>
		<ul class="metismenu left-sidenav-menu">
			<li class="menu-label mt-0">Main</li>
			<li><a href="javascript: void(0);"><i data-feather="archive"
					class="align-self-center menu-icon"></i><span>College</span><span
					class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
				<ul class="nav-second-level" aria-expanded="false">
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/addCollege"><i
							class="ti-control-record"></i>Add College</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/collegeList"><i
							class="ti-control-record"></i>College List</a></li>
				</ul></li>
		</ul>
	</div>
</div>