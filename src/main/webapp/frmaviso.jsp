<%@page import="com.emergentes.entidades.Contacto"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Contacto contacto = (Contacto) request.getAttribute("contacto");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <style>
        /* Agrega estilos personalizados aquí si es necesario */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        form {
            width: 50%; /* Ajusta el ancho según tus necesidades */
        }
        </style>
        <title>JSP Page</title>
    </head>
<body>
        <h1>
            <c:if test="${contacto.id == 0}">Nuevo</c:if>
            <c:if test="${contacto.id != 0}">Editar</c:if>
        </h1>
        <form action="MainControler" method="post">
            <input type="hidden" name="id" value="<%= contacto.getId() %>" />
        <div class="table-responsive">
            <table class="table table-bordered border-primary">
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre" value="<%= contacto.getNombre()%>" /></td>
                </tr>
                <tr>
                    <td>Correo:</td>
                    <td>
                        <input type="text" name="correo" value="<%= contacto.getCorreo()%>" />
                    </td>
                </tr>
                <tr>
                    <td>Telefono:</td>
                    <td>
                        <input type="text" name="telefono" value="<%= contacto.getTelefono()%>" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" type="button" class="btn btn-secondary"/></td>
                </tr>
            </table>
          </div>
        </form>
    </body>
</html>
