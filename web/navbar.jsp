<%-- 
    Document   : navbar
    Created on : 25/09/2019, 16:50:30
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/home.css"/>
            <link rel="stylesheet" href="css/colorsLightMode.css"/>
            <link rel = "shortcut icon" type = "imagem/x-icon" href = "images/LogoSoft.png"/>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>            
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    </head>
    <body>
        
       <div class="menu">
            <div class="espaço-logo">
                <a  href="index.jsp"><img id="logo" src="images/logo.png"></a>
            </div>

              <div class="itens-menu">
                <ul class="espaço-itens">
                    <li><a href="download.jsp">Download Mobile</a></li> 
                    <li><a href="suporte.jsp">Suporte</a></li>
                    <li><a href="#">Minha Conta</a></li>
                  
                </ul>

               <ul class="espaço-cadastro">
                    <li><a href="login.jsp">Entrar</a></li> 
                    <li><a href="cadastro.jsp">Cadastrar</a></li>
                </ul>
            </div>
            
        </div>

        <div class="menu-responsivo">

            <div class="itens-menu-responsivo">
                <ul class="espaço-itens-responsivo">
                    <li><a href="download.jsp">Download Mobile</a></li> 
                    <li><a href="suporte.jsp">Suporte</a></li>
                    <li><a href="#">Minha Conta</a></li>
                </ul>

                <ul class="espaço-cadastro-responsivo">
                    <li><a href="login.jsp">Entrar</a><a href="cadastro.jsp">Cadastrar</a></li>
                </ul>
            </div>
            
        </div>
    </body>
</html>
