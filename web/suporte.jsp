<%-- 
    Document   : suporte
    Created on : 01/10/2019, 15:45:50
    Author     : Aluno
--%>

<%@page import="br.senai.model.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.senai.model.Tickets"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Suporte</title>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" lang="pt-br">
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
            padding-top: 70px;
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
    
        
       <%//menu
            Usuario user = new Usuario();
            user = (Usuario) session.getAttribute("usuario");
      	
    
            if (user != null && user.isLogado()) {%>
            
                <%@include file="navbarLogado.jsp"%>
          <%  } else {%>
                <%@include file="navbar.jsp"%><%
            }
        %>
       
        
       <div> 
            <%  if (user != null && user.isLogado()) {
            
              out.println("<a href='formsup.jsp'><img id='form' src='images/form.png'></a>");
            } else {
              out.println("<a href='login.jsp'><img id='form' src='images/form.png'></a>");
            }
        %>
           
       </div>
        
       
               <%!List<Tickets> lista = new ArrayList<Tickets>();%>
               <% int ind = 1; %>
               <% lista = (List<Tickets>)request.getSession().getAttribute("listaTickets");
                    if(lista==null){
                        lista = new ArrayList();      
                       
                    }
                %>
                
                
                
            <div class="sessaoGeral">
                <div class="sessaoTicket">
                    <h3>Seus Tickets</h3>   
                    
                   <%  if (user != null && user.isLogado() && lista.isEmpty()==true ) {
            
              out.println("Você não tem tickets");
              
            } else if(user != null && user.isLogado() && lista.isEmpty()==false){
              for(Tickets t: lista){ %>
                       
                    <div><b class='nTicket'><%=+ind+"° Ticket</b> | <b>Tipo de Pergunta:</b> "+t.getTipopergunta()+"<br> <b>Assunto:</b> "+t.getAssunto()%></div><br>
                
              <% ind++; } 
            }else{
       
                    out.println("Você precisa estar logado!");
               }%>
                   
              </div>
              
              <div class="freqTickets">
                  <h3>Perguntas frequentes:</h3>
                  <img src="images/ticketFreq.png">
              </div>
            </div>
    
</html>
