<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored="false" %>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/encoder/he.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/CommonValidations.js?version=1.0.6"></script>

<script type="text/javascript">
	/* var isBrowserOpen = window.sessionStorage.getItem('isBrowserOpen');
	console.log("isBrowserOpen -> " + isBrowserOpen);
	if (isBrowserOpen == null || isBrowserOpen == "" || isBrowserOpen == undefined) {
		window.sessionStorage.clear();
		window.localStorage.clear();
		window.open("${pageContext.request.contextPath}/authenticate/logout", "_self");
	} */
</script>