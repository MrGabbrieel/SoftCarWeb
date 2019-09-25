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
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>            
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            
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
            
    </head>
    <body>
       
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
                <p id="descriçao">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer commodo enim sem, a aliquam arcu auctor in. Nulla facilisi. Suspendisse imperdiet diam non aliquet pellentesque. Donec nec luctus enim. Nullam ultricies mi quis lectus varius, in tincidunt leo tincidunt. Phasellus tincidunt rutrum egestas. Morbi et risus arcu. Pellentesque rhoncus neque ligula, varius tincidunt lorem placerat a. Vivamus sed ex ipsum. Duis justo diam, convallis sed libero a, vehicula semper tellus. Nam vel leo diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec lectus enim. Pellentesque vel sapien sagittis, facilisis ipsum at, tempus urna. Sed metus justo, venenatis in metus vitae, gravida maximus felis. Cras condimentum sapien vitae sagittis vulputate.</p>
            </div>  
                        
                <div class="tabelas">
                            <table class="tabela1">
                                <tr class="titulo">
                                        <th>Como surgiu?</th>
                                </tr>
                                    <tr>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer commodo enim sem</td>
                                </tr>
                                
                        </table>
                        <table class="tabela2">
                                <tr class="titulo">
                                        <th>O Que é?</th> 
                                </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer commodo enim sem</td>
                                    </tr>
                                    
                        </table>
                        <table class="tabela3">
                                <tr class="titulo">
                                        <th>Quem somos?</th>
                                </tr>
                                    <tr>
                                        <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer commodo enim sem</td>
                                    </tr>    
                                
                        </table>
                    </div>
        
    </body>
</html>
