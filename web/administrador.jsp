
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
        <form action="administrador.jsp" method="post">
            
            <label>Nome:</label><br/>
            <input type="text" name="nome"/><br/>
            
            <button type="submit">Pronto</button>
            
            
        </form>
        
        <% 
         
                ArrayList<Usuario> cadlist = (ArrayList) request.getAttribute("Usuario");
                out.print("<table>");
                out.print("<tr>");
                out.print("<th>Codigo</th><th>Nome</th><th>Cpf</th><th>Email</th><th>Senha</th><th>Editar</th><th>Excluir</th>");
                CadastroDAO cdDao = new CadastroDAO();
              
       
                    for(Usuario i: cadlist){
                         out.print("<tr>");
                         out.print("<td>"+i.getCod_usuario()+"</td>");
                         out.print("<td>"+i.getNomeUser()+"</td>");
                         out.print("<td>"+i.getCpf()+"</td>");
                         out.print("<td>"+i.getEmail()+"</td>");
                         out.print("<td>"+i.getSenha()+"</td>");
                        out.print("<td><a href='alterar.jsp?cod_cadastro="+i.getCod_usuario()+"&nome="+i.getNomeUser()+"&cpf="+i.getCpf()+"&email="+i.getEmail()+"&senha="+i.getSenha()+" '>CLIQUE</a></td>");
                         out.print("<td><a href='excluir.jsp?cod_cadastro="+i.getCod_usuario()+"&nome="+i.getNomeUser()+"&email="+i.getEmail()+" '>CLIQUE</a></td>");
                         out.print("</tr>");
                        
                    }   
                    
                
                   
                
                
                out.print("</tr>");
                out.print("</table>");
            
        %>
        <a href="administrador.jsp">novo</a>
    </body>
</html>
