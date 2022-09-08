<%@ page import="java.util.List" %>
<%@ page import="model.Author" %><%--
  Created by IntelliJ IDEA.
  User: Marusya
  Date: 9/4/2022
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>
</head>
<body>

<%
    List<Author> authors = (List<Author>) request.getAttribute("authors");
%>
<form action="/books/add" method="post">

    <input type="text" name="name" placeholder="please input name"/><br>
    <input type="text" name="title" placeholder="please input title"/><br>
    <input type="text" name="description" placeholder="please input description"/><br>
    <input type="text" name="price" placeholder="please input price"/><br>
    <select name="authorId">
            <%
            for (Author author : authors) {
            %>
        <option value="<%=author.getId()%>"><%=author.getName()%><%=author.getAge()%>(<%=author.getEmail()%>
        </option>
            <% }
        %>

        <br>
        <input type="number" name="age" placeholder="please input age">
        <br>
        <input type="submit" value="Add">


</form>

</body>
</html>
