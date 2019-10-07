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
        <link rel="stylesheet" href="css/colorsLightMode.css"/>
        <link rel = "shortcut icon" type = "imagem/x-icon" href = "images/LogoSoft.png"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>            
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>          
    </head>
    <style>
            *{
        margin: 0;
        padding: 0;
    }
    .menu{
        display: flex;
        position: fixed;
        width: 100%;
        box-shadow: 0px 0px 7px #b1b1b1;
        z-index: 2;
    }
    label[for="bt-menu"]{
        padding-left: 30px;
        font-family: Arial;
        text-align: center;
        font-size: 24px;
        cursor: pointer;
        height: 50px;
        display: none;
    }
    .espaço-logo{
        height: 40px;
        padding: 15px;
    }
    #logo{
        height: 100%;
        display: block;
    }
    .itens-menu{
        display: flex;
    }
    .itens-menu ul{
        list-style: none;
        display: flex;
    }
    .itens-menu ul li{
        float: left;
    }

    .itens-menu a{
        text-decoration: none;
        padding: 25px;
        display: block;
        font-family: 'Roboto', sans-serif;
        text-align: center;
        width: 130px;
    }
    #descriçao{
        font-family: 'Open Sans',sans-serif;
        font-size: 18pt;
        padding-top: 25px;
    }
    #fotos {
        position: relative;
        padding-bottom: 40%;
    }

    #fotos > div { 
        position: absolute;
    }
    .texto1{
        padding-top: 70px;
        padding-bottom: 50px;
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
    .tabelas{
        display: flex;
        margin: 0px 50px 50px 50px;
        font-family: 'Roboto',sans-serif;
        font-size: 20px;
    }
    .tabela1{
        padding: 15px;
        box-shadow: 0px 0px 7px #b1b1b1;
        border-radius: 20px;
        margin: 0px 15px 0px 0px
    }
    .tabela2{
        padding: 15px;
        box-shadow: 0px 0px 7px #b1b1b1;
        border-radius: 20px;
    }
    .tabela3{
        padding: 15px;
        box-shadow: 0px 0px 7px #b1b1b1;
        border-radius: 20px;
        margin: 0px 0px 0px 15px
    }
    .titulo{
        font-size: 22pt;
    }
    #bt-menu{
        display: none;
    }
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
    footer img{
        position: absolute;
        padding-left: 50px;
        margin-left: -850px;
        background: none;
        margin-top: 85px;
    }
    .senai{
        margin-top: 90px;
        padding-left: 300px;
    }
    .soft{
        margin-top: 87px;
       padding-left: 550px; 
    }
 /* ########################################################### TELA PEQUENA ################################################################# */
    @media(max-width: 800px){
    
    label[for="bt-menu"]{
        display: block;
        margin-top: 15px;
    }
     .itens-menu{
        visibility: hidden; 
                                        
    }
    .menu-responsivo{                           
        padding-top: 90px;                      
        display: block;                         
        font-family: 'Roboto', sans-serif;      
        font-size: 20px;                        
    }
    .menu-responsivo li{                       
        width: 100%;                            
        padding: 10px;                          
    }
    .itens-menu-responsivo{                     
        text-align: center;                     
    }
     .espaço-itens-responsivo a{                
        padding-top: 10px;                      
        text-decoration: none;                  
        color: #145899;                         
    }                                           
    .espaço-cadastro-responsivo a{              
        padding-top: 10px;                      
        text-decoration: none;                  
        padding-left: 25px;                    
        padding-right: 10px;                    
        color: #145899;                         
    }                                           
    .espaço-itens-responsivo a:hover{           
        font-weight: bold;                      
    }                                           
    .espaço-cadastro-responsivo a:hover{        
        font-weight: bold;                      
    }                                           
    #fotos{                                     
        padding-top: 20px;                      
    }                                     
    #nomezao{
        padding: 5px;
    }
    #titulo1{
        font-family:'Roboto Slab',sans-serif;
        font-size: 24pt;
        font-weight: bold;
    }

    #descriçao{
        font-family: 'Open Sans',sans-serif;
        font-size: 14pt;
        padding-top: 25px;
    }  

    .tabelas{
        font-size: 14pt;
        display: block;
    }
    .tabela1{
        margin-bottom: 10%; 
        margin-left: 0px;
        margin-right: 0px;
    }
    .tabela2{
        margin-bottom: 10%;
        margin-left: 0px;
        margin-right: 0px;
    }
    .tabela3{
        margin-bottom: 10%;
        margin-left: 0px;
        margin-right: 0px;
    }
    .titulo{
        font-size: 22pt;
    }
    .espaço-logo{
       margin-left: 25%;
    }
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
           
           <footer>
               <iframe width="100%" height="269" src="https://mdbootstrap.com/api/snippets/embed/1275096/fullscreen" frameborder="0"></iframe>
               <img class="6cube" src="images/sixthcubelogo.png" width="180px">
               <img class="senai" src="images/logo-senai.png" width="180px">
               <img class="soft" src="images/logo-softplan.png" width="180px">
           </footer>      
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
