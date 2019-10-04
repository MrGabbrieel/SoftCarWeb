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
        .sessaoTicket{
            margin-top: 2%;
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
            padding: 25px;
            margin-left: 55%;
            margin-top: -20%;
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
                <div class="sessaoTicket">
                    <h3>Seus Tickets</h3>
                   <% for(Tickets t: lista){ %>


                    <div><b class='nTicket'><%=+ind+"° Ticket</b> | <b>Tipo de Pergunta:</b> "+t.getTipopergunta()+"<br> <b>Assunto:</b> "+t.getAssunto()%></div><br>
                
              <% ind++; } %>
              </div>
              
              <div class="freqTickets">
                  <div>
                      <h3><b>P: </b>Como faço para capotar um corsa?</h3>
                      <p><b>R: </b>Pega e dirige igual o Ryan :) brinks</p>
                  </div>
                  
                  <div>
                      <h3><b>P: </b>Quem são os motoristas?</h3>
                      <p><b>R: </b>Uma galera bem legal que oferece emprego :)</p>
                  </div>
                  
                  <div>
                      <h3><b>P: </b>Como sei que não vou ser assaltado?</h3>
                      <p><b>R: </b>Você não sabe :)</p>
                  </div>
              </div>
    </body>
</html>
