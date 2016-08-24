<%-- 
    Document   : DiasFaltantes
    Created on : Aug 24, 2016, 3:07:54 PM
    Author     : Daniela
--%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dias Faltantes</title>
    </head>
    <body>
        <%--
            Primero debemos importar las clases Calendar y Date
            Segundo debemos crear un Scriptlet con lo siguiente:
            1. DECLARAR VARIABLE DE TIPO DATE
            2. INSTANCIAR CALENDARIO
            3. ESTABLECER EL CALENDARIO CON FECHA DE HOY
            4. DECLARAR VARIABLE DIASANO CON VALOR 365
            5. DECLARAR VARIABLE 
        --%>
        <%
            Date fechahoy = new Date();
            Calendar calendario = Calendar.getInstance();
            calendario.setTime(fechahoy);
            
            int diasano = 365;
            int diasrestantesano = calendario.get(Calendar.DAY_OF_YEAR);
        %>
        <h3>Hola, hoy es: <%=fechahoy%></h3>
        <br>
        <h3>Quedan: <%=diasano-diasrestantesano%> dias para año nuevo</h3>
        
    </body>
</html>
