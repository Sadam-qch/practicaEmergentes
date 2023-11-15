<%@page import="java.util.List"%>
<%@page import="com.emergentes.entidades.Contacto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    List<Contacto> lista = (List<Contacto>)request.getAttribute("contacto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <title>Inicio</title>
    </head>
    <body>
        <h1>Lista Contactos</h1>
        <p><a href="MainControler?action=add" type="button" class="btn btn-secondary">Nuevo</a></p>
        <table border="1" class="table table-hover">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Telefono</th>
                    <th></th>
                    <th></th>
                </tr>
                <%
                    for (Contacto item : lista){
                %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getNombre()%></td>
                    <td><%= item.getCorreo()%></td>
                    <td><%= item.getTelefono() %></td>
                    <td><a href="MainControler?action=edit&id=<%= item.getId() %>" type="button" class="btn btn-primary">Editar</a></td>
                    <td><a href="MainControler?action=delete&id=<%= item.getId() %>" onclick="return(confirm('Esta seguro'))" type="button" class="btn btn-danger">Eliminar</a></td>
                </tr>
              <%
              }
              %>
        </table>
    </body>
</html>
