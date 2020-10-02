<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("listaest") ==null){
    ArrayList<Persona> listaux = new ArrayList<Persona>();
    session.setAttribute("listaest",listaux);
    }
    ArrayList<Persona> lista = (ArrayList<Persona>)session.getAttribute("listaest");

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de personas</h1> 
        <a href="Controlador?op=1">Nuevo</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th></th>
                <th></th>
                <%
                   if(lista != null) {
                    for(Persona item : lista){
                %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getNombres()%></td>
                <td><%= item.getApellidos() %></td>
                <td><%= item.getEdad()%></td>
                <td> 
                    <a href ="Controlador?op=2&id=<%= item.getId()%>">
                    Editar
                    </a>
                </td>
                <td>
                    <a href ="Controlador?op=3&id=<%= item.getId()%>" 
                       onclick="return confirm('Esta seguro')">
                        eliminar
                        </a>
                </td>
            </tr>
         <%
                }
             }
         %>
         </table>
    </body>
</html>
