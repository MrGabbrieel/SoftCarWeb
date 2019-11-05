
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.senai.dao.CadastroDAO"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Cadastro</title>
    </head>
    <body>
       <%
           try{
              CadDAO cdDao = new CadDAO();
              cdDao.excluir(Integer.parseInt(request.getParameter("cod_cadastro")));
              response.sendRedirect("administrador.jsp");
           }catch(Exception erro){
               throw new RuntimeException("Erro 8:"+erro);
           }
       
       %>
    </body>
</html>
