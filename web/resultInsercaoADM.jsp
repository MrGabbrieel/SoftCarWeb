
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.senai.model.Tickets"%>
<%@page import="br.senai.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Resultado de Resposta</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/colorsLightMode.css"/>
        <link rel = "shortcut icon" type = "imagem/x-icon" href = "images/LogoSoft.png"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>            
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>   
    </head>
    <style>
        *{
            padding: 0;
            margin: 0;
        }
        .conform{
           position: absolute;
           margin: 150px;
           width: 50%;
           left: 15%;
        }
        .conform h1{
           font-family: 'Roboto Slab',sans-serif;
           font-size: 36pt;
           text-align: center;
        }
        .conform div{
            font-family: 'Roboto Slab',sans-serif;
            padding: 10px;
        }
        .conform > div{
            font-size: 14pt;
        }
        .conform a{
            margin-bottom: -5px;
            text-decoration: none;
            color: #145899;
            font-weight: bold;
        }
    </style>
    <body>
        
  

        <div class="conform">
        <h1>Resposta Enviada!</h1>
        <div>
            O seu Ticket do assunto: <b>${requestScope.tickets}</b> foi enviado com sucesso aos nossos Administradores!</b>

        </div>
            <div> <a href="AdminServlet?ENVIAR=ENVIAR">Voltar ao suporte</a> </div>
        </div>  
    </body>
</html>
