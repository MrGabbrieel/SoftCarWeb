<%-- 
    Document   : cad_inserir
    Created on : 23/10/2019, 15:04:06
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.senai.entidades.Cadastro"%> 
<%@page import="br.senai.dao.CadDAO"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Cadastro</title>
    </head>
    <body>
     <%
            try{
                Cadastro cad = new Cadastro();
                CadDAO cdDao = new CadDAO();
                if(request.getParameter("nome").equals("") || request.getParameter("email").equals("") || request.getParameter("senha").equals("")){
                     response.sendRedirect("administrador.jsp");
                }else{
                    cad.setNome(request.getParameter("nome"));
                    cad.setEmail(request.getParameter("email"));
                    cad.setSenha(request.getParameter("senha"));
                    cdDao.inserir(cad);
                    response.sendRedirect("administrador.jsp");
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro 6:"+erro);
                
            }
        %>
    </body>
</html>
