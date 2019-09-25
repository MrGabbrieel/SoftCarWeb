<%-- 
    Document   : cadastro
    Created on : 24/09/2019, 16:09:07
    Author     : Aluno
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Cadastro SoftCar</title>
        <link rel="stylesheet" href="css/cadastro.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
        
        <script>
           <%
          String email = request.getParameter("email");
          String senha = request.getParameter("senha");

           if(email != null && senha != null && !email.isEmpty() && !senha.isEmpty() ){
               session.setAttribute("email", email);
               
               response.sendRedirect("login.jsp");
           }
          %>
                
            </script>
    
    </head>
    <body>
        
         <div class="btn-voltar"><a href="index.jsp">&#8617;</a></div>

         <form action="login.jsp" name="formcad" method="get" class="login-form">
        <h1>É novo(a) por aqui?</h1>
        <!-- Nome - CPF  - Email - Senha - Confirmar Senha -->
        <div class="txtb">
          <input type="text" name="nome">
          <span data-placeholder="Nome"></span>
        </div>

        <div class="txtb">
          <input type="text" name="cpf">
          <span data-placeholder="CPF"></span>
        </div>

        <div class="txtb">
          <input type="text" name="email">
          <span data-placeholder="Email"></span>
        </div>

        <div class="txtb">
            <input type="password" name="senha">
          <span data-placeholder="Senha"></span>
        </div>

        <div class="txtb">
            <input type="password" name="confirmsenha">
          <span data-placeholder="Confirme sua senha"></span>
        </div>
        <div class="verify">
          <img id="recaptchaImg" src="images/recaptcha.png">
        </div>
        <input type="submit" name="Cadastrar" class="logbtn" value="Logar">

        <div class="bottom-text">
          Já tem uma conta? <a href="login.jsp">Faça o Login aqui</a>
        </div>

      </form>

      <script type="text/javascript">
      $(".txtb input").on("focus",function(){
        $(this).addClass("focus");
      });

      $(".txtb input").on("blur",function(){
        if($(this).val() === "")
        $(this).removeClass("focus");
      });

      </script>


    </body>
</html>
