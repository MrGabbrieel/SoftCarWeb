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
        <script src="https://kit.fontawesome.com/542c00a3b0.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/colorsLightMode.css"/>
        <link rel = "shortcut icon" type = "imagem/x-icon" href = "images/LogoSoft.png"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>            
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    </head>
    <style>
    .espaço-cadastro{
        position: absolute;
        right: 1%;
        font-size: 12pt;
    }
    .espaço-cadastro li a{
        padding: 25px 0px;
    }
    .espaço-cadastro p{
        margin-top: 20px;
        font-size: 16pt;
        font-weight: bold;
        color: #145899;
    }
    .itens-menu a:hover {
        font-weight: bold;
        trasition: 0.4s;
    }
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
        .exit a{
            color: #a3a3a3
        }
        .exit a:hover{
            color: #145899;
            transition: .4s;
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
        <nav>
            
            
       <div class="menu">
            <div class="espaço-logo">
                <a  href="index.jsp"><img id="logo" src="images/logo.png"></a>
            </div>

              <div class="itens-menu">
                <ul class="espaço-itens">
                    <li><a href="download.jsp">Download Mobile</a></li> 
                    <li><a href="TicketsSevlet?ENVIAR=ENVIAR">Suporte</a></li>
                    <li><a href="minhaConta.jsp">Minha Conta</a></li>
                  
                </ul>

              <ul class="espaço-cadastro">
                      <li class=""><a class="aNav" id="" >{sessionScope.usuario.nomeUser} </a></li>
                      <li class="exit"><a href="LoginServlet?Deslogar=Sair" class="aNav" id="" title="Sair"><i class="fas fa-sign-out-alt"></i></a></li>
                </ul>
                        
            </div>
            
        </div>
       
        </nav>
    </body>
</html>
