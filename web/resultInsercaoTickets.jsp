

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado de Inserção</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <h1>Ticket Enviado!</h1>
        <div>
            O seu Ticket sobre <b>${requestScope.t.tipopergunta}</b> do assunto: <b>${requestScope.t.assunto}</b> foi eniado com sucesso aos nossos Administradores</b>

        </div>
            <div> <a href="suporte.jsp">Voltar ao suporte</a> </div>
           
    </body>
</html>
