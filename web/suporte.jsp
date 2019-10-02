<%-- 
    Document   : suporte
    Created on : 01/10/2019, 15:45:50
    Author     : Aluno
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.senai.entidades.Tickets"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Suporte</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/home.css"/>
            <link rel="stylesheet" href="css/colorsLightMode.css"/>
            <link rel = "shortcut icon" type = "imagem/x-icon" href = "images/LogoSoft.png"/>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>            
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            
    </head>
    <style>
        #form{
            left: 3%;
            top: 80%;
            position: fixed;
            box-shadow: 0px 0px 30px #b1b1b1;
            border-radius: 50%;
            width: 90px;
        }
    </style>
    <body>
       <%@include file="navbar.jsp" %>
       
       <div> 
           <a href="formsup.jsp"><img id="form" src="images/form.png"></a>
       </div>
       
          <div>
               <%! List<Tickets> lista = new ArrayList<Tickets>();%>
               <% int ind =1; %>
               <% lista = (List<Tickets>)request.getSession().getAttribute("listaTickets");
                    if(lista==null){
                        lista = new ArrayList();
                    }
                %>
                <h3>Seus Tickets</h3>
               <% for(Tickets t: lista){ %>
              
               
                <div><%="Seu "+ind+"° Ticket\n Assunto: "+t.getAssunto()+" | Tipo de Pergunta: "+t.getTipopergunta()%></div><br>
               
              <% ind++; } %>
           </div>
    </body>
</html>
