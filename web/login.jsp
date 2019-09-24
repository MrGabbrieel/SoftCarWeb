<%-- 
    Document   : login
    Created on : 24/09/2019, 16:13:29
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
          <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
    </head>
    <body>
    <div class="btn-voltar"><a href="index.jsp">&#8617;</a></div>

      <form class="login-form">
        <h1>Boas-Vindas de volta!</h1>

        <div class="txtb">
          <input type="text">
          <span data-placeholder="E-mail"></span>
        </div>

        <div class="txtb">
          <input type="password">
          <span data-placeholder="Senha"></span>
        </div>
        <div class="txtFgtPsw"><a>Esqueceu sua senha?</a></div>

        <input type="submit" class="logbtn" value="Logar">

        <div class="bottom-text">
          Não tem uma conta? <a href="cadastro.jsp">Quero me cadastrar</a>
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
