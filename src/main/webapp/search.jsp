<%--
  Created by IntelliJ IDEA.
  User: joker
  Date: 18.01.2020
  Time: 09:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>
        Szukane słowo: <%= request.getParameter("query") %>
    </p>
    <p>
        Strona: <%= request.getParameter("page") %>
    </p>
    <p>
<%--        Sortowanie: <%= ("desc".equals(request.getParameter("sort")) ? "malejąco" : "rosnąco") %>--%>
        <% switch (request.getParameter("sort")) {
            case "asc":
                out.print("rosnąco");
                break;
            case "desc":
                out.print("malejąco");
                break;
            default:
                out.print("niezdefiniowane sortowanie");
        }; %>
    </p>

<h2>Obsługa cookie</h2>
<%
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
        out.print("<h2>Found Cookies</h2>");
        for(Cookie cookie: cookies){
            out.print("Name" + cookie.getName() + ", ");
            out.print("Value" + cookie.getValue() + "<br/>");
        }
    } else {
        out.print("<h2>No cookies found</h2>");
    }
%>
</body>
</html>
