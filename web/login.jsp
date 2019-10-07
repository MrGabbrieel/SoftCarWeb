<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
          <link rel = "shortcut icon" type = "imagem/x-icon" href = "images/LogoSoft.png"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
    </head>
    <style>
            *{
      margin: 0;
      padding: 0;
      text-decoration: none;
      box-sizing: border-box;
    }

    body{
      min-height: 100vh;
      background-image: url(images/banner3.png);
      background-size: cover;
    }

    .login-form{
      width: 430px;
      height: 65%;
      background: #ffffff;
      padding: 45px 50px;
      border-radius: 20px;
      position: absolute;
      left: 20%;
      top: 50%;
      transform: translate(-50%,-50%);
    }

    .login-form h1{
      color: black;
      font-family: 'Roboto Slab',sans-serif;
      text-align: center;
      margin-bottom: 60px;
    }

    .txtb{
      border-bottom: 2px solid #adadad;
      position: relative;
      margin: 30px 0;
      font-family: 'Roboto', sans-serif;
    }
    .txtFgtPsw{
    margin-bottom: 20px;
    color: #145899;
    font-weight: bold;
    font-size: 14px;
    font-family: 'Roboto',sans-serif;
    cursor: pointer;
    }
    .txtb input{
      font-size: 15px;
      color: #333;
      border: none;
      width: 100%;
      outline: none;
      background: none;
      padding: 0 5px;
      height: 40px;
    }

    .txtb span::before{
      content: attr(data-placeholder);
      position: absolute;
      top: 50%;
      left: 5px;
      color: #b1b1b1;
      transform: translateY(-50%);
      z-index: -1;
      transition: .5s;
    }

    .txtb span::after{
      content: '';
      display: block;
      margin-bottom: -2px;
      width: 0%;
      height: 3px;
      background-color: #145899;
      border-radius: 2px;
      transition: .3s;
    }

    .focus + span::before{
      top: -5px;
    }
    .focus + span::after{
      width: 100%;
    }

    .logbtn{
      display: block;
      width: 100%;
      height: 50px;
      border: none;
      background-color: #145899;
      color: #ffffff;
      outline: none;
      cursor: pointer;
      transition: .3s;
      border-radius: 20px;
      font-family: 'Roboto Slab',sans-serif;
      font-size: 11pt;
    }

    .logbtn:hover{
      background-color: #387ab8;
    }

    .bottom-text{
      font-family: 'Roboto',sans-serif;
      margin-top: 60px;
      text-align: center;
      font-size: 15px;
      color: #ffffff;
    }
    .bottom-text a{
      color: #ffffff;
      text-decoration: underline;
    }
    .btn-voltar{
      color: #145899;
      font-family: 'Arial';
      text-align: center;
      width: 30px;
      height: 30px;
      padding-top: 5px;
      margin-left: 50px;
      margin-top: 40px;
      background-color: #ffffff;
      border-radius: 20px;
      cursor: pointer;
      position: absolute;
      font-size: 15pt;
    }
    .logosixth img{
        width: 200px;
        margin-left: 67%;
        margin-top: 30%;
    }   
    @media(max-width :800px){
    .login-form{left: 50%}
    }
    </style>
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
    <%
        String email = request.getParameter("email");
          String senha = request.getParameter("senha");
           if(email != null && senha != null && !email.isEmpty() && !senha.isEmpty()){
               session.setAttribute("email", email);
               response.sendRedirect("index.jsp");
           }
           %>
     </body>
</html>
