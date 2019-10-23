<%-- 
    Document   : alterar
    Created on : 23/10/2019, 15:10:19
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cadastro</title>
    </head>
    <body>
         
         <div class="btn-voltar"><a href="index.jsp">&#8617;</a></div>

         <form action="cad_alterar.jsp" name="formcad" method="post" class="login-form">
        <!-- Nome - CPF  - Email - Senha - Confirmar Senha -->
        <div>
            <input type="text" name="cod_cadastro" value="<%=request.getParameter("cod_cadastro")%>">
          <span data-placeholder="Codigo"></span>
        </div>
        
        <div class="txtb">
          <input type="text" name="nome" value="<%=request.getParameter("nome")%>">
          <span data-placeholder="Nome"></span>
        </div>

        <div class="txtb">
          <input type="text" name="cpf" value="<%=request.getParameter("cpf")%>">
          <span data-placeholder="CPF"></span>
        </div>

        <div class="txtb">
          <input type="text" name="email" value="<%=request.getParameter("email")%>">
          <span data-placeholder="Email"></span>
        </div>

        <div class="txtb">
            <input type="password" name="senha" value="<%=request.getParameter("senha")%>">
          <span data-placeholder="Senha"></span>
        </div>

        <div class="txtb">
            <input type="password" name="confirmsenha">
          <span data-placeholder="Confirme sua senha"></span>
        </div>
     
        <input type="submit" name="Cadastrar" class="logbtn" value="Confirmar">


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

    </body>
</html>
