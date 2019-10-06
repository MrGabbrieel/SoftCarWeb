<%-- 
    Document   : suporte formulário
    Created on : 01/10/2019, 15:45:50
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Suporte Formulário</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="css/colorsLightMode.css"/>
            <link rel = "shortcut icon" type = "imagem/x-icon" href = "images/LogoSoft.png"/>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto:400,700|Roboto+Slab:400,700&display=swap"/>            
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
         
            <style>
                * {
    margin: 0;
    padding: 0;
}
body{
      min-height: 100vh;
      background-image: url(images/banner3.png);
      background-size: cover;
    }
font{
    position: absolute;
    margin-top: 10px;
    margin-left: -80px;
}
h2{
    margin-top: 30px;
    font-family: 'Roboto Slab',sans-serif;
    position: absolute;
    top: 15px;
    left: 18%;
    background: none;
    color: #ffffff;
}
fieldset {
    position: absolute;
    border: none;
    border-radius: 20px;
    background-color: #ffffff;
    width: 450px;
    height: 410px;
    padding: 25px 10px;
    left: 31%;
    top: 20%;
    text-align: center;
}

body, input, select, textarea, button {
    font-family: 'Roboto',sans-serif;
    font-size: 1em;
}

.grupo:before, .grupo:after {
    content: " ";
    display: table;
}

.grupo:after {
    clear: both;
}

.campo {
    margin-bottom: 1em;
}

.campo label {
    margin-bottom: 0.2em;
    color: #000;
    display: block;
}

fieldset.grupo .campo {
    float:  left;
    margin-right: 1em;
}

.campo input[type="text"],
.campo input[type="email"],
.campo input[type="url"],
.campo input[type="tel"],
.campo select,
.campo textarea {
    padding: 5px;
    margin: 5px;
    border: none;
    border-radius: 5px;
    box-shadow: 0px 0px 7px #b1b1b1;
    display: block;
    resize: none;
}

.campo select option {
    padding-right: 1em;
}

.campo input:focus, .campo select:focus, .campo textarea:focus {
    background: #FFC;
}

.campo label.checkbox {
    color: #000;
    display: inline-block;
    margin-right: 1em;
}

.botao{
    display: block;
    width: 150px;
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

    .botao:hover{
    background-color: #387ab8;
    }

.botao, select, label.checkbox {
    cursor: pointer;
}
            </style>
    </head>
 
    <body>
    <h2>Preencha o formulário para enviar um Ticket à nossos Administradores!</h2>
       <form action="ManterTicket" method="POST">
           
    <fieldset>
        <center>
           <div class="campo">
                <label for="tipopergunta">Tipo de Pergunta*</label>
                <select name="tipopergunta" id="tipopergunta">
                    <option value="">-</option>
                    <option value="Problemas com a Conta">Problemas com a conta</option>
                    <option value="Problemas com uma Viagem">Problemas com uma viagem</option>
                    <option value="Problemas com o Veiculo">Problemas com o carro</option>
                </select>
            </div>
         <div class="campo">
            <label for="assunto">Assunto*</label>
            <input type="text" id="assunto" name="assunto" style="width: 20em" value="">
        </div>
  
        <div class="campo">
            <label for="mensagem">Mensagem*</label>
            <textarea rows="6"  style="width: 20em" id="mensagem" name="mensagem"></textarea>
        </div>

        <div class="campo">
            <label>
                <input type="checkbox" name="newsletter" value="1"> Gostaria de receber a resposta por E-mail
            </label>
        </div>
        <div>
        <button class="botao" type="submit" name="enviar" value="Inserir"> Enviar</button>
        </div>
            <font color="red"><b>${requestScope.msgErro}</b></font>
        </center>
    </fieldset>
     </form>
    
    </body>
</html>
