<%-- 
    Document   : download
    Created on : 24/09/2019, 16:06:32
    Author     : Aluno
--%>

<%@page import="br.senai.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Download SoftCar</title>
            <link rel="stylesheet" href="css/home.css"/>
            <link rel="stylesheet" href="css/download.css"/>
            <link rel = "shortcut icon" type = "imagem/x-icon" href = "images/LogoSoft.png"/>
            <link rel="stylesheet" href="css/colorsLightMode.css"/>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>
    </head>
    <body>
       
      <%//menu
            Usuario user = new Usuario();
            user = (Usuario) session.getAttribute("usuario");

    if (user != null && user.isLogado()) {
        if(user.getCod_usuario() == 8){%>
        <%@include file="navbarLogadoADM.jsp"%>
        
        <%  } else {%>
        <%@include file="navbarLogado.jsp"%>
        <% } %>
        <% } else{ %>
        <%@include file="navbar.jsp"%><%
            }
        %>
     <br>
     <br>
     <br>
            <div class="texto1">
                <p id="titulo2">Baixe agora o Softcar!</p>
                <p id="descriçao1">Leia o QR CODE ou clique <a href="https://www.instagram.com/brunobandeiraf/">aqui</a> para baixar o app!</p>
            </div> 

            <div class="imgs">
                <img id="qrcode" src="images/frame.png">
            </div>
            
                <img id="bannerSide" src="images/mulher_no_celular.png">
          
    </body>
</html>
