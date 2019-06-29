<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
    <style>
        #errorMessage {
            color: red;
        }
    </style>
</head>
<body>
    <h3>Login</h3>
    <form:form action="${pageContext.request.contextPath}/authenticate-user">
        <c:if test="${param.error != null}">
            <i id="errorMessage">Invalid username/password</i>
        </c:if>
        <p>
            Name: <input type="text" name="username"/>
        </p>
        <p>
            Password: <input type="password" name="password">
        </p>
        <input type="submit" value="Login">
    </form:form>
</body>
</html>
