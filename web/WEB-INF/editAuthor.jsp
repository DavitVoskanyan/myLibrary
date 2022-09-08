<%@ page import="java.util.List" %>

<%@ page import="model.Author" %>
<%@ page import="model.Book" %><%--
  Created by IntelliJ IDEA.
  User: Marusya
  Date: 9/1/2022
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Author</title>
</head>
<body>
please update author`s data


<%
    Author author = (Author) request.getAttribute("author");
    List<Book> books = (List<Book>) request.getAttribute("books");
%>

<form action="/authors/edit" method="post">
    <input type="hidden" name="authorId" value="<%=author.getId()%>">

    <input type="text" name="name" value="<%=author.getName()%>"/><br>
    <input type="text" name="surname" value="<%=author.getSurname()%>"/><br>
    <input type="email" name="email" value="<%=author.getEmail()%>"/><br>
    <input type="age" name="age" value="<%=author.getAge()%>"/><br>
    <select name="authorId">
        <%
            for (Book book : books) {
                if (author.equals(book.getAuthor())) {

        %>
        <option selected value="<%=book.getId()%>"><%=book.getTitle()%><%=book.getDescription()%>(<%=book.getPrice()%>)
        </option>
        <% } else {%>
        <option value="<%=book.getId()%>"><%=book.getTitle()%><%=book.getDescription()%>(<%=book.getPrice()%>)
        </option>
        <% }
        } %>
    </select>


    <br>
    <input type="submit" value="Update">


</form>
</body>
</html>
