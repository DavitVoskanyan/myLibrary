<%--
  Created by IntelliJ IDEA.
  User: Marusya
  Date: 9/6/2022
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Author</title>
</head>
<body>


<form action="/authors/add" method="post">

    <input type="text" name="name" placeholder="please input name"/><br>
    <input type="text" name="surname" placeholder="please input surname"/><br>
    <input type="email" name="email" placeholder="please input email"/><br>
    <input type="number" name="age" placeholder="please input age"/><br>


    <input type="submit">


</form>

</body>
</html>
