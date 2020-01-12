<%@ page import="com.jg.services.Calculator" %><%--
  Created by IntelliJ IDEA.
  User: joker
  Date: 12.01.2020
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="calculator" class="com.jg.services.Calculator"/>
<html>
<head>
    <title>Redirected Page</title>
</head>
<body>

<jsp:include page="include/included.jsp" />
<p>
    Mój przekazany parametr to: <%= request.getParameter("myParam") %>
</p>

<p>
    5<sup>2</sup> wynosi:
    <%
        int result = calculator.square(5);
        out.print(result);
    %>
</p>

<h1>
    Redirected page
</h1>

</body>
</html>
