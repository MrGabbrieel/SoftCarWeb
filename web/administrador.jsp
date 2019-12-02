
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
        <style>
    body{
        background-color: #1d1d1d;
        font-family: 'Roboto',sans-serif;
        color: white;
    }
    b{
        font-family: 'Roboto Slab', sans-serif;
    }
    p{
        display: flex;
        justify-content: space-between;
    }
    .dale1{
        margin: -10px 30px 30px 30px;
        padding: 50px 20px 0px 20px;
        width: auto;
        height: auto;
        background: rgb(9,9,121);
        background: linear-gradient(90deg, rgba(9,9,121,1) 0%, rgba(20,88,153,1) 100%);
        border-radius: 0px 0px 30px 30px;
        box-shadow: 0px 0px 10px #0d1d64;
    }
    .sessaoAdm{
        width: 500px;
        height: auto;
        background-color: #222222;
        padding: 30px;
        border-radius: 15px;
        margin-left: 30px;
    }
    input{
        background: none;
        border: 2px solid #145899;
        border-radius: 7px;
        font-size: 12pt;
        color: #ffffff;
        padding: 5px;
        margin: 7px;
        width: 90%;
    }
    .alinhamento-sessao{
        display: flex;
        justify-content: center;
    }
    .alinhamento-bt{
        display: flex;
        justify-content: center;
    }
    button{
        background: rgb(9,9,121);
        background: linear-gradient(90deg, rgba(9,9,121,1) 0%, rgba(20,88,153,1) 100%);
        color: #ffffff;
        border: none;
        border-radius: 10px;
        padding: 15px;
        margin-top: 50px;
        font-family: 'Roboto Slab',sans-serif;
        font-size: 12pt;
    }
    input[type=number]::-webkit-inner-spin-button, input[type=number]::-webkit-outer-spin-button { 
        -webkit-appearance: none; 
        margin: 0; 
    }
    textarea{
        background: none;
        border: 2px solid #145899;
        border-radius: 7px;
        font-size: 12pt;
        color: #ffffff;
        padding: 5px;
        margin: 7px;
        width: 90%;
        font-family: 'Roboto', sans-serif;
    }
    .escrolar{
            display: flex;
            height: auto;
           
            overflow-x: scroll;

        }
    </style>
    <body>
           <%!List<Tickets> lista = new ArrayList();%>
    <% int ind = 1; %>
    <% lista = (List) request.getAttribute("listaTicketsADM");
        if (lista == null) {
            lista = new ArrayList();

        }
    %>
    
    <%             out.println("<div class='escrolar'>");
                   
                    for (Tickets t : lista) {

                        out.println("<div class='dale1'>");
                        out.println("<p class='nTicket'> <b>Código do Ticket</b>" + t.getCod_ticket()+ "" );
                        out.println("</p>");
                        out.println("<p class='tp'> <b>Tipo pergunta: </b> " + t.getTipopergunta() + "");
                        out.println("</p>");
                        out.println("<p class='assunto'> <b>Assunto: </b> " + t.getAssunto() + "");
                        out.println("</p>");
          
                        out.println("<p class='assunto'> <b>Mensagem: </b> " + t.getMensagem() + "");
                        out.println("</p>");
         
                        out.println("<p class='assunto'> <b>Resposta: </b> " + t.getResposta() + "");
                        out.println("</p>");
               
                        out.println("<p class='assunto'> <b>Usuário: </b> " + t.getNomeUser()+ "");
                        out.println("</p>");
                        out.println("</br>");
                        out.println("</div>");

                        ind++;
                    }
                     out.println("</div>");
                    out.println("</div>");
                    %>
            <div class="alinhamento-sessao">
                <div class="sessaoAdm">
                <form action="AdminServlet" method="post">

                    <label>Resposta:</label><br/>
                    <textarea name="resposta"/></textarea><br/>
                    <label>Código do Ticket:</label><br/>
                    <input type="number" name="codticket"/><br/>

                    <button  type="submit" name="ENVIAR" value="RESPONDER">Responder</button>
                </form>
                </div>
            </div> 
    </body>
</html>
