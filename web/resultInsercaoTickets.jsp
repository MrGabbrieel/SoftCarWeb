

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Resultado de Inserção</title>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
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
        <%@include file="navbar.jsp" %>

        <div class="conform">
        <h1>Ticket Enviado!</h1>
        <div>
            O seu Ticket sobre <b>${requestScope.t.tipopergunta}</b>, do assunto: <b>${requestScope.t.assunto}</b> foi enviado com sucesso aos nossos Administradores!</b>

        </div>
            <div> <a href="suporte.jsp">Voltar ao suporte</a> </div>
        </div>  
    </body>
</html>
