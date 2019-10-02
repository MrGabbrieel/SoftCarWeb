<%-- 
    Document   : login
    Created on : 24/09/2019, 16:13:29
    Author     : Aluno
--%>

<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
          <link rel="stylesheet" href="css/login.css">
          <link rel = "shortcut icon" type = "imagem/x-icon" href = "images/LogoSoft.png"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
        <style>
            .logosixth img{
                
                width: 200px;
                height: 200px;
                margin-left: 67%;
                margin-top: 27.5%;
              }       
        </style>
    </head>
    <body>
    <div class="btn-voltar"><a href="index.jsp">&#8617;</a></div>

    <form class="login-form" action="login.jsp" method="post">
        <h1>Boas-Vindas de volta!</h1>

        <div class="txtb">
          <input type="text" name="email">
          <span data-placeholder="E-mail" ></span>
        </div>

        <div class="txtb">
          <input type="password" name="senha">
          <span data-placeholder="Senha" ></span>
        </div>
        <div class="txtFgtPsw"><a>Esqueceu sua senha?</a></div>

        <input type="submit" class="logbtn" value="Logar">

        <div class="bottom-text">
          Não tem uma conta? <a href="cadastro.jsp">Quero me cadastrar</a>
        </div>

      </form>
    <div><a class="logosixth"> <img src="images/sixthcubelogo.png"/></a></div>
    
      <script type="text/javascript">
      $(".txtb input").on("focus",function(){
        $(this).addClass("focus");
      });

      $(".txtb input").on("blur",function(){
        if($(this).val() === "")
        $(this).removeClass("focus");
      });

      </script>
          <script>
      <%
        
    
          String email = request.getParameter("email");
          String senha = request.getParameter("senha");
           if(email != null && senha != null && !email.isEmpty() && !senha.isEmpty()){
               session.setAttribute("email", email);
               response.sendRedirect("index.jsp");
           }
           
          %>
      
                
          </script>
    </body>
</html>
