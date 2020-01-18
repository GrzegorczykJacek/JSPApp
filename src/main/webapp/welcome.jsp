<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: joker
  Date: 12.01.2020
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%! private long visitCounter = 0; %>

<html>
<head>
    <title>JSPApp</title>
</head>
<body>
    <h1>
        Dzisiaj jest:
        <%
            String now = LocalDateTime.now().toString();
            out.print(now);
        %>
    </h1>

<p>
    Licznik odwiedzin: <%= ++visitCounter %>
</p>

<p>
    Server name: ${pageContext.request.serverName}
</p>

    <p>
        Server name: ${pageContext.request.serverPort}
    </p>

<p>
    Server name: ${pageContext.request.requestURI}
</p>

<%--    <jsp:forward page="redirected.jsp" >--%>
<%--        <jsp:param name="myParam" value="my value - moja wartość"/>--%>
<%--    </jsp:forward>--%>

    <h2>Parametry wyszukiwania</h2>
    <form action="search.jsp" method="get">
        <label>Szukane słowo: <input type="text" name="query"></label>
        <label>Strona numer: <input name="page" type="number"></label>
        <label>Sortowanie:
            <select name="sort">
                <option value="asc">rosnąco</option>
                <option value="desc">malejąco</option>
            </select>
        </label>
        <input type="submit" value="wyślij"/>
    </form>

<a href="search.jsp?query=JAVA&page=3&sort=desc">Wyszukaj JAVA</a>


</body>
</html>
