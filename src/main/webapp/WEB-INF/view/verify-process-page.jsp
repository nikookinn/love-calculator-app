<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/8/2024
  Time: 03:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Process Page</title>
</head>
<body>
<div align="center">
    <label>User verification</label>
    <%--@elvariable id="userVerificationDto" type="com.home"--%>
    <form:form action="/verifyOTP" modelAttribute="userVerificationDto">
        <label for="vn">Enter Verification Code :</label>
        <form:input path="verificationCode" id="vn"/>
        <label for="pn">Enter PhoneNumber Code :</label>
        <form:input path="phoneNumber" id="pn"/>
        <input type="submit" value="Send">
    </form:form>
</div>
</body>
</html>
