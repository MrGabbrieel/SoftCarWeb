
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
            try{
                out.print("<table>");
                out.print("<tr>");
                out.print("<th>Codigo</th><th>Nome</th><th>Cpf</th><th>Email</th><th>Senha</th><th>Editar</th><th>Excluir</th>");
                CadDAO cdDao = new CadDAO();
                if(request.getParameter("nome") == "" || request.getParameter("nome") == null){
                    ArrayList<Cadastro> lista = cdDao.listarTodos();
                    for(int num= 0; num < lista.size(); num++ ){
                         out.print("<tr>");
                         out.print("<td>"+lista.get(num).getCod_cadastro()+"</td>");
                         out.print("<td>"+lista.get(num).getNome()+"</td>");
                         out.print("<td>"+lista.get(num).getCpf()+"</td>");
                         out.print("<td>"+lista.get(num).getEmail()+"</td>");
                         out.print("<td>"+lista.get(num).getSenha()+"</td>");
                         out.print("<td><a href='alterar.jsp?cod_cadastro="+lista.get(num).getCod_cadastro()+"&nome="+lista.get(num).getNome()+"&cpf="+lista.get(num).getCpf()+"&email="+lista.get(num).getEmail()+"&senha="+lista.get(num).getSenha()+" '>CLIQUE</a></td>");
                         out.print("<td><a href='excluir.jsp?cod_cadastro="+lista.get(num).getCod_cadastro()+"&nome="+lista.get(num).getNome()+"&email="+lista.get(num).getEmail()+" '>CLIQUE</a></td>");
                         out.print("</tr>");
                        
                    }   
                    
                }else{
                    ArrayList<Cadastro> lista = cdDao.listarTodos();
                    for(int num= 0; num < lista.size(); num++ ){
                         out.print("<tr>");
                         out.print("<td>"+lista.get(num).getCod_cadastro()+"</td>");
                         out.print("<td>"+lista.get(num).getNome()+"</td>");
                         out.print("<td>"+lista.get(num).getCpf()+"</td>");
                         out.print("<td>"+lista.get(num).getEmail()+"</td>");
                         out.print("<td>"+lista.get(num).getSenha()+"</td>");
                         out.print("<td><a href='alterar.jsp?cod_cadastro="+lista.get(num).getCod_cadastro()+"&nome="+lista.get(num).getNome()+"&cpf="+lista.get(num).getCpf()+"&email="+lista.get(num).getEmail()+"&senha="+lista.get(num).getSenha()+" '>CLIQUE</a></td>");
                         out.print("<td><a href='excluir.jsp?cod_cadastro="+lista.get(num).getCod_cadastro()+"&nome="+lista.get(num).getNome()+"&email="+lista.get(num).getEmail()+" '>CLIQUE</a></td>");
                         out.print("</tr>"); 
                    }   
                }
                
                out.print("</tr>");
                out.print("</table>");
            }catch(Exception erro){
                throw new RuntimeException("Erro 9: "+erro);
            }
        
        %>
        <a href="administrador.jsp">novo</a>
    </body>
</html>
