<%-- 
    Document   : index
    Created on : 24/09/2019, 16:11:30
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Softcar Web</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/home.css"/>
        <link rel="stylesheet" href="css/colorsLightMode.css"/>
        <link rel = "shortcut icon" type = "imagem/x-icon" href = "images/LogoSoft.png"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>            
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>          
    </head>
    <style>
        .banner{
            padding-top: 70px;
        }
        .banner-redirect{
            margin-bottom: 50px;
        }
        .banner-redirect img{
            width: 100%;
            cursor: pointer;
        }
        .texto1{
            margin-left: 70px;
            margin-top: 20px;
            margin-bottom: 50px;
        }
        #titulo1{
            font-family:'Roboto Slab',sans-serif;
            font-size: 30pt;
            font-weight: bold;
        }

        #descriçao{
            font-family: 'Open Sans',sans-serif;
            font-size: 17pt;
            padding-top: 25px;
        }
        @media(max-width: 800px){
         .banner-redirect img{
            width: 150%;
        }  
        }
    </style>
    <body>
      <% String email = request.getParameter("email");%>
     
           <%@include file="navbar.jsp" %>
            <div class="banner">
                <div id="fotos">
                    <div><img src="images/banner1.png" width="100%"></div>
                    <div><img src="images/banner2.png" width="100%"></div>
                    <div><img src="images/banner4.png" width="100%"></div>
                </div>
            </div>

            <div class="texto1">
                <p id="titulo1">Nunca foi tão facil chegar ao trabalho!</p>
                <p id="descriçao">SoftCar é uma plataforma de carona solidária para você funcionário da Softplan, sendo a mais viável para você que mora muito longe da empresa. O SoftCar conecta motorístas e passageiros Softplayers para desfrutar de uma carona amiga que irá beneficiar ambas as partes.</p>
            </div>  
           
           <div class="banner-redirect"><a href="#"><img src="images/clica-aqui.png"></a></div>
           
                <div class="tabelas">
                            <table class="tabela1">
                                <tr class="titulo">
                                        <th>Como surgiu?</th>
                                </tr>
                                    <tr>
                                    <td>Surgiu com a idéia de solucionar o problema de mobilidade e socialização dos funcionários da Softplan!</td>
                                </tr>
                                
                        </table>
                        <table class="tabela2">
                                <tr class="titulo">
                                        <th>Quem somos?</th> 
                                </tr>
                                    <tr>
                                        <td>Somos a Startup SixthCube. Surgimos atráves de um projeto do Fiesc/Senai e estamos no mercado desde 2018.   Hoje em dia, visamos solucionar o seus problemas de locomoção</td>
                                        
                                    </tr>
                                    
                        </table>
                        <table class="tabela3">
                                <tr class="titulo">
                                        <th>O que fazemos?</th>
                                </tr>
                                    <tr>
                                        <td>Solucionamos os problemas de todos os SoftPlayers para que todos possam ter uma melhor locomoção indo e vindo do trabalho.</td>
                                    </tr>    
                                
                        </table>
                    </div>
                            
                 

        <script>
            $("#fotos > div:gt(0)").hide();

            setInterval(function() { 
            $('#fotos > div:first')
                .fadeOut(1000)
                .next()
                .fadeIn(1000)
                .end()
                .appendTo('#fotos');
            },  5000);
            </script>
    </body>
</html>
