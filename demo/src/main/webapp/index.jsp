<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
    <h1><%= "Formulario servlet" %></h1>
    <form name="form1" action="hello-servlet" method="post">
        Usuarios: <input type="text" name="usuario"/>
        <br/>
        Password: <input type="password" name="password"/>
        <br/>
        <input type="submit" name="Enviar"/>
    </form>
</body>
</html>