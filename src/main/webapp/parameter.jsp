<%-- 
    Document   : random
    Created on : Sep 23, 2018, 8:44:44 PM
    Author     : lendle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="refresh" content="1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" 
              integrity="sha256-46qynGAkLSFpVbEBog43gvNhfrOj+BmwXdxFgVK/Kvc=" crossorigin="anonymous" />
    </head>
    <%
        String color="blue";
        String [] colors =new String[]{
            "LightPink" ,"LightCoral","Tomato","PaleVioletRed","Coral"
        };
        String[] icons=new String[]{
            "fa-arrow-alt-circle-left","fa-arrow-alt-circle-right"
            ,"fa-arrow-alt-circle-up","fa-arrow-alt-circle-down"
        };
        String icon=icons[(int)(Math.random()*1000%icons.length)];
        String parameter=request.getParameter("color");
        if(parameter!=null){
            color=parameter;
        }else{
            color = colors[(int)(Math.random()*1000%colors.length)];
        }
    %>
   
    <body bgcolor="<%=color%>">
        <span class = "fa <%=icon%>"></span>
    </body>
</html>
