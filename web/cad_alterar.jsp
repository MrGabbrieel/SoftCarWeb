
<%@page import="java.util.concurrent.ExecutionException"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.senai.entidades.Cadastro"%> 
<%@page import="br.senai.dao.CadDAO"%> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Alterar Cadastro</title>
        <link rel = "shortcut icon" type = "imagem/x-icon" href = "images/LogoSoft.png"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
    
            </script>
    
    </head>
    <body>
            
        <%
            try{
                Cadastro cad = new Cadastro();
                CadDAO cdDao = new CadDAO();
                if(request.getParameter("nome").equals("") || request.getParameter("email").equals("") || request.getParameter("senha").equals("")){
                     response.sendRedirect("cadastro.jsp");
                }else{
                    cad.setNome(request.getParameter("nome"));
                    cad.setEmail(request.getParameter("email"));
                    cad.setSenha(request.getParameter("senha"));
                    cad.setCod_cadastro(Integer.parseInt(request.getParameter("cod_cadastro")));
                    cdDao.alterar(cad);
                    response.sendRedirect("administrador.jsp");
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro 7:"+erro );
                
            }
        %>


    </body>
</html>
