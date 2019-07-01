<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>luv2code Company Home Page</title>
</head>
<body>
    <h2>luv2code Company Home Page</h2>
    <hr>
    <p>Welcome <sec:authentication property="principal.username"/>!</p>
    <p>Role(s): <sec:authentication property="principal.authorities"/></p>
    <p>
        <a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
        <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
    </p>
    <form:form action="${pageContext.request.contextPath}/logout" method="post">
        <input type="submit" value="Logout"/>
    </form:form>
</body>
</html>
