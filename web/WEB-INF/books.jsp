<%@ page import="model.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Marusya
  Date: 9/4/2022
  Time: 2:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book</title>
</head>
<body>
<%
    List<Book> books = (List<Book>) request.getAttribute("books");

%>
<table border="1">
    <tr>
        <th>id</th>
        <th>title</th>
        <th>description</th>
        <th>price</th>
        <th>author name and age</th>
        <th>action</th>

    </tr>
    <% for (Book book : books) {%>
    <tr>
        <td><%= book.getId()%>
        </td>
        <td><%=book.getTitle()%>
        </td>
        <td><%=book.getDescription()%>
        </td>
        <td><%=book.getPrice()%>
        </td>
        <td><%=book.getAuthor()%>
        </td>
        <td>
            <a href="/books/remove?bookId=<%=book.getId()%>">Remove</a>|
        </td>


            <% }
    %>
</table>

</body>
</html>
