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
</body>
</html>
