
<%@page import="br.senai.model.Tickets"%>
<%@page import="br.senai.model.Usuario"%>
<%@page import="br.senai.dao.CadastroDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrador</title>
    </head>
    <body>
           <%!List<Tickets> lista = new ArrayList();%>
    <% int ind = 1; %>
    <% lista = (List) request.getAttribute("listaTicketsADM");
        if (lista == null) {
            lista = new ArrayList();

        }
    %>
    
    <%
                    out.println("<div class='area'>");
                    for (Tickets t : lista) {

                        out.println("<div class='dale1'>");
                        out.println("<p class='nTicket'> " + ind + "º Ticket: ");
                        out.println("</p>");
                        out.println("<p class='tp'> <b>Tipo pergunta:</b> " + t.getTipopergunta() + "");
                        out.println("</p>");
                        out.println("<p class='assunto'> <b>Assunto:</b> " + t.getAssunto() + "");
                        out.println("</p>");
                        out.println("</br>");
                        out.println("<p class='assunto'> <b>Mensagem:</b> " + t.getMensagem() + "");
                        out.println("</p>");
                        out.println("</br>");
                        out.println("<p class='assunto'> <b>Resposta:</b> " + t.getResposta() + "");
                        out.println("</p>");
                        out.println("</br>");
                        out.println("</div>");

                        ind++;
                    }
                    
                    %>
    
        <form action="AdminServlet" method="post">
            
            <label>Resposta:</label><br/>
            <input type="textarea" name="resposta"/><br/>
            <label>Código do Ticket</label><br/>
            <input type="number" name="codticket"/><br/>
            
            <button type="submit" name="ENVIAR" value="RESPONDER">Responder</button>
            
            
        </form>
    </body>
</html>
