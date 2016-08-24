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
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            Date fechahoy = new Date();
            Calendar justoahora = Calendar.getInstance();
            justoahora.setTime(fechahoy);

            int diasano = 365;
            int diasrestantesano = justoahora.get(Calendar.DAY_OF_YEAR);

            int horasano = diasrestantesano * 24;
            int minutoano = horasano * 60;
        %>
        
        <section id="contenedor">
            <header>
                <p>Bienvenidos</p>
            </header>
        
            <section id="dias">
                <div>Faltan: <%=diasano - diasrestantesano%> días para año nuevo</div>
            </section>
        
            <section id="horas">
                <div>Faltan: <%=(diasano - diasrestantesano) * 24%> horas para año nuevo</div>
            </section>
        
            <section id="minutos">
                <div>Faltan: <%=((diasano - diasrestantesano) * 24) * 60%> minutos para año nuevo</div>
            </section>
        
            <footer>
                <div>Proyecto Nro 3 --- Daniela Bustos Aranda</div>
            </footer>  
        </section>
    </body>
</html>
