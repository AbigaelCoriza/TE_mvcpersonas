<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 Persona item =(Persona) request.getAttribute("miPersona");

boolean nuevo =true;
if (item.getId()>0){
   nuevo =false;
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de personas</h1>
        <form action="Controlador" method ="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%= item.getId() %>"> </td>
                </tr>
                
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="nombres" value="<%= item.getNombres()%>"> </td>
                </tr>
                
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="<%= item.getApellidos()%>"> </td>
                </tr>
                
                <tr>
                    <td>Edad</td>
                    <td><input type="text" name="edad" value="<%= item.getEdad()%>"> </td>
                </tr>
                <tr>
                <td><input type="hidden" name="nuevo" value="<%= nuevo %>" />
                 </td>
                    <td><input type="submit" value="Procesar"/> </td>
                </tr>
            </table>
            
            
        </form>
    </body>
</html>
