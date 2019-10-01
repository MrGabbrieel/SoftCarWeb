<%-- 
    Document   : suporte formulário
    Created on : 01/10/2019, 15:45:50
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

fieldset {
    border: 0;
}

body, input, select, textarea, button {
    font-family: sans-serif;
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
    color: #666;
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
    padding: 0.2em;
    border: 1px solid #CCC;
    box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
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

.botao {
    font-size: 1.5em;
    background: #145899;
    border: 0;
    margin-bottom: 1em;
    color: #FFF;
    padding: 0.2em 0.6em;
    box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
    text-shadow: 1px 1px 1px rgba(0,0,0,0.5);
}

.botao:hover {
    background: green;
    box-shadow: inset 2px 2px 2px rgba(0,0,0,0.2);
    text-shadow: none;
}

.botao, select, label.checkbox {
    cursor: pointer;
}
            </style>
    </head>
 
    <body>
      
     
                
          
      
    <center>
        <br><h2>Preencha o formulário para enviar um Ticket à nossos Administradores!</h2></br>
       <form action="suporte.jsp" method="post">
    <fieldset> 
        <br></br>
           <div class="campo">
                <label for="tipopergunta">Tipo de Pergunta</label>
                <select name="tipopergunta" id="estado">
                    <option value=""><------------------------------------------></option>
                    <option value="PC">Problemas com a conta</option>
                    <option value="PV">Problemas com uma viagem</option>
                    <option value="PV">Problemas com o carro</option>
                </select>
            </div>
         <div class="campo">
            <label for="email">Assunto</label>
            <input type="text" id="assunto" name="assunto" style="width: 20em" value="">
        </div>
  
        <div class="campo">
            <label for="mensagem">Mensagem</label>
            <textarea rows="6"  style="width: 20em" id="mensagem" name="mensagem"></textarea>
        </div>

        <div class="campo">
            <label>
                <input type="checkbox" name="newsletter" value="1"> Gostaria de receber a resposta por E-mail
            </label>
        </div>
        <div>
        <button class="botao" type="submit" name="submit">Enviar</button>
        </div>
    </fieldset>
     </form>
    </center>
    
    </body>
</html>
