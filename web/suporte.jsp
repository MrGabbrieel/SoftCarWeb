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
        
        .escrolar{
            height: 350px;
            overflow-y: scroll;
            
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
        *{
            margin: 0;
            padding: 0;
        }
        .menu{
            display: flex;
            position: fixed;
            width: 100%;
            box-shadow: 0px 0px 7px #b1b1b1;
            z-index: 2;
        }
        label[for="bt-menu"]{
            padding-left: 30px;
            font-family: Arial;
            text-align: center;
            font-size: 24px;
            cursor: pointer;
            height: 50px;
            display: none;
        }
        .espaço-logo{
            height: 40px;
            padding: 15px;
        }
        #logo{
            height: 100%;
            display: block;
        }
        .itens-menu{
            display: flex;
        }
        .itens-menu ul{
            list-style: none;
            display: flex;
        }
        .itens-menu ul li{
            float: left;
        }

        .itens-menu a{
            text-decoration: none;
            padding: 25px;
            display: block;
            font-family: 'Roboto', sans-serif;
            text-align: center;
            width: 130px;
        }
        #descriçao{
            font-family: 'Open Sans',sans-serif;
            font-size: 18pt;
            padding-top: 25px;
        }
        #fotos {
            position: relative;
            padding-bottom: 40%;
        }

        #fotos > div { 
            position: absolute;
        }
        .texto1{
            padding-top: 70px;
            padding-bottom: 50px;
        }

        #titulo1{
            font-family:'Roboto Slab',sans-serif;
            font-size: 30pt;
            font-weight: bold;
        }

        #descriçao{
            font-family: 'Open Sans',sans-serif;
            font-size: 17pt;
            padding-top: 25px;
        }
        .tabelas{
            display: flex;
            margin: 0px 50px 50px 50px;
            font-family: 'Roboto',sans-serif;
            font-size: 20px;
        }
        .tabela1{
            padding: 15px;
            box-shadow: 0px 0px 7px #b1b1b1;
            border-radius: 20px;
            margin: 0px 15px 0px 0px
        }
        .tabela2{
            padding: 15px;
            box-shadow: 0px 0px 7px #b1b1b1;
            border-radius: 20px;
        }
        .tabela3{
            padding: 15px;
            box-shadow: 0px 0px 7px #b1b1b1;
            border-radius: 20px;
            margin: 0px 0px 0px 15px
        }
        .titulo{
            font-size: 22pt;
        }
        #bt-menu{
            display: none;
        }
        .banner{
            padding-top: 70px;
        }
        .banner-redirect{
            margin-bottom: 50px;
        }
        .banner-redirect img{
            width: 100%;
            cursor: pointer;
        }
        .texto1{
            margin-left: 70px;
            margin-top: 20px;
            margin-bottom: 50px;
        }
        #titulo1{
            font-family:'Roboto Slab',sans-serif;
            font-size: 30pt;
            font-weight: bold;
        }

        #descriçao{
            font-family: 'Open Sans',sans-serif;
            font-size: 17pt;
            padding-top: 25px;
        }
        footer img{
            position: absolute;
            padding-left: 50px;
            margin-left: -850px;
            background: none;
            margin-top: 85px;
        }
        .senai{
            margin-top: 90px;
            padding-left: 300px;
        }
        .soft{
            margin-top: 87px;
            padding-left: 550px; 
        }
        /* ########################################################### TELA PEQUENA ################################################################# */
        @media(max-width: 800px){

            label[for="bt-menu"]{
                display: block;
                margin-top: 15px;
            }
            .itens-menu{
                visibility: hidden; 

            }
            .menu-responsivo{                           
                padding-top: 90px;                      
                display: block;                         
                font-family: 'Roboto', sans-serif;      
                font-size: 20px;                        
            }
            .menu-responsivo li{                       
                width: 100%;                            
                padding: 10px;                          
            }
            .itens-menu-responsivo{                     
                text-align: center;                     
            }
            .espaço-itens-responsivo a{                
                padding-top: 10px;                      
                text-decoration: none;                  
                color: #145899;                         
            }                                           
            .espaço-cadastro-responsivo a{              
                padding-top: 10px;                      
                text-decoration: none;                  
                padding-left: 25px;                    
                padding-right: 10px;                    
                color: #145899;                         
            }                                           
            .espaço-itens-responsivo a:hover{           
                font-weight: bold;                      
            }                                           
            .espaço-cadastro-responsivo a:hover{        
                font-weight: bold;                      
            }                                           
            #fotos{                                     
                padding-top: 20px;                      
            }                                     
            #nomezao{
                padding: 5px;
            }
            #titulo1{
                font-family:'Roboto Slab',sans-serif;
                font-size: 24pt;
                font-weight: bold;
            }

            #descriçao{
                font-family: 'Open Sans',sans-serif;
                font-size: 14pt;
                padding-top: 25px;
            }  

            .tabelas{
                font-size: 14pt;
                display: block;
            }
            .tabela1{
                margin-bottom: 10%; 
                margin-left: 0px;
                margin-right: 0px;
            }
            .tabela2{
                margin-bottom: 10%;
                margin-left: 0px;
                margin-right: 0px;
            }
            .tabela3{
                margin-bottom: 10%;
                margin-left: 0px;
                margin-right: 0px;
            }
            .titulo{
                font-size: 22pt;
            }
            .espaço-logo{
                margin-left: 25%;
            }
            .banner-redirect img{
                width: 150%;
            }  
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


    <%!List<Tickets> lista = new ArrayList();%>
    <% int ind = 1; %>
    <% lista = (List) request.getAttribute("listaTickets");
        if (lista == null) {
            lista = new ArrayList();

        }
    %>



    <div class="sessaoGeral">
        <div class="sessaoTicket">
            <h3>Seus Tickets</h3>   

            <%  if (user != null && user.isLogado() && lista.isEmpty() == true) {

                    out.println("Você não tem tickets");

                } else if (user != null && user.isLogado() && lista != null && !lista.isEmpty()) {
                     out.println("<div class='escrolar'>");
                   for (Tickets t : lista) {
                           
                            out.println("<div class='dale'>");
                                out.println("<p class='nTicket'> "+ind+"º Ticket: ");
                                out.println("</p>");
                                out.println("<p class='tp'> <b>Tipo pergunta:</b> "+t.getTipopergunta()+"");
                                out.println("</p>");
                                out.println("<p class='assunto'> <b>Assunto:</b> "+t.getAssunto()+"");
                                out.println("</p>");
                                out.println("</br>");
                            out.println("</div>");
                            
                        ind++;
                    }
                    out.println("</div>");
                } else {

                    out.println("Você precisa estar logado!");
                }%>

        </div>

        <div class="freqTickets">
            <h3>Perguntas frequentes:</h3>
            <img src="images/ticketFreq.png">
        </div>
    </div>

</html>
