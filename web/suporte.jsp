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
        .sessaoGeral{
            display: flex;
        }
        .sessaoTicket{
            margin-left: 5%;
            padding: 30px;
            width: 50%;
        }
        .sessaoTicket h3{
            font-family:'Roboto Slab',sans-serif;
            font-size: 25pt;
            font-weight: bold;
            padding-bottom: 15px;
        }
        .sessaoTicket > div{
            font-family: 'Roboto',sans-serif;
            font-size: 14pt;
            padding-bottom: 5px;
        }
        .nTicket{
            color: #145899;
        }
        
        .freqTickets{
            margin-top: 2.5%;
        }
        .freqTickets img{
            height: 450px;
            margin-left: -25px;
        }
        .freqTickets h3{
            font-family:'Roboto Slab',sans-serif;
            font-size: 25pt;
            font-weight: bold;
        }
    </style>
    <body>
       <%@include file="navbar.jsp" %>
       
       <div> 
           <a href="formsup.jsp"><img id="form" src="images/form.png"></a>
       </div>
       
               <%! List<Tickets> lista = new ArrayList<Tickets>();%>
               <% int ind =1; %>
               <% lista = (List<Tickets>)request.getSession().getAttribute("listaTickets");
                    if(lista==null){
                        lista = new ArrayList();
                    }
                %>
            <div class="sessaoGeral">
                <div class="sessaoTicket">
                    <h3>Seus Tickets</h3>
                   <% for(Tickets t: lista){ %>


                    <div><b class='nTicket'><%=+ind+"° Ticket</b> | <b>Tipo de Pergunta:</b> "+t.getTipopergunta()+"<br> <b>Assunto:</b> "+t.getAssunto()%></div><br>
                
              <% ind++; } %>
              </div>
              
              <div class="freqTickets">
                  <h3>Perguntas frequentes:</h3>
                  <img src="images/ticketFreq.png">
              </div>
            </div>
    </body>
</html>
