
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.senai.entidades.Cadastro" %>
<%@page import="br.senai.dao.CadDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrador</title>
    </head>
    <body>
        <form action="administrador.jsp" method="post">
            
            <label>Nome:</label><br/>
            <input type="text" name="nome"/><br/>
            
            <button type="submit">Pronto</button>
            
            
        </form>
        
        <% 
         
                ArrayList<Cadastro> cadlist = (ArrayList) request.getAttribute("listUser");
                out.print("<table>");
                out.print("<tr>");
                out.print("<th>Codigo</th><th>Nome</th><th>Cpf</th><th>Email</th><th>Senha</th><th>Editar</th><th>Excluir</th>");
                CadDAO cdDao = new CadDAO();
              
       
                    for(Cadastro i: cadlist ){
                         out.print("<tr>");
                         out.print("<td>"+i.getCod_cadastro()+"</td>");
                         out.print("<td>"+i.getNome()+"</td>");
                         out.print("<td>"+i.getCpf()+"</td>");
                         out.print("<td>"+i.getEmail()+"</td>");
                         out.print("<td>"+i.getSenha()+"</td>");
                        out.print("<td><a href='alterar.jsp?cod_cadastro="+i.getCod_cadastro()+"&nome="+i.getNome()+"&cpf="+i.getCpf()+"&email="+i.getEmail()+"&senha="+i.getSenha()+" '>CLIQUE</a></td>");
                         out.print("<td><a href='excluir.jsp?cod_cadastro="+i.getCod_cadastro()+"&nome="+i.getNome()+"&email="+i.getEmail()+" '>CLIQUE</a></td>");
                         out.print("</tr>");
                        
                    }   
                    
                
                   
                
                
                out.print("</tr>");
                out.print("</table>");
            
        %>
        <a href="administrador.jsp">novo</a>
    </body>
</html>
