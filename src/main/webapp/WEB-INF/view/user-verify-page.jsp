<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/8/2024
  Time: 03:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Verify</title>
</head>
<body>
<div align="center">
  <h1>User Verification Page</h1>
  <br/>
  <label>Please enter userName Phone Number</label>
  <%--@elvariable id="userVerificationDto" type="com.home"--%>
  <form:form action="/verifyProcess" modelAttribute="userVerificationDto">
    <label for="pn">Phone Number :</label>
    <form:input path="phoneNumber" id="pn"/>
    <input type="submit" value="Send">
  </form:form>
</div>
</body>
</html>
