/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senai.servlets;

import br.senai.dao.CadastroDAO;
import br.senai.model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CadastroServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String envio = request.getParameter("ENVIAR");
        switch (envio) {
            case "CADASTRAR":
                this.cadastroUser(request, response);
        }
    }

    private void cadastroUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            // Session 
            HttpSession session = request.getSession();
            //

            // pegando dados que o usuario digitar no site
            String email = request.getParameter("email");
            String nomeUser = request.getParameter("nome");
            String senha = request.getParameter("senha");
            String cpf = request.getParameter("cpf");
            String confsenha = request.getParameter("confirmsenha");
            // end pegando

            // comparar se tem algo vazio
            String msgerro = "";
            if (email.isEmpty() || email == null) {
                msgerro += "| Email |";
            }
            if (nomeUser.isEmpty() || nomeUser == null) {
                msgerro += "| Nome |";
            }
            if (senha.isEmpty() || senha == null) {
                msgerro += "| Senha |";
            }
            if (confsenha.isEmpty() || confsenha == null) {
                msgerro += "| Confirmar Senha |";
            }
            if (cpf.isEmpty() || cpf == null) {
                msgerro += "| CPF |";
            }

            if (!msgerro.isEmpty()) {
                msgerro = "Campo(s) " + msgerro + " é/são obrigatório(s) !";
                request.setAttribute("msgErro", msgerro);
                request.getRequestDispatcher("/cadastro.jsp").forward(request, response);
                return;
            } else {
                //
                // se a senha é igual o confsenha
                if (senha.equals(confsenha)) {
                    // obj das suas devidas classes para mandar ao banco 
                    Usuario user = new Usuario(email, senha, nomeUser, cpf);
                    Usuario soNome = new Usuario(nomeUser);
                    
                    CadastroDAO c = new CadastroDAO();
                    c.inserirUser(user);
                    //
                    //mandar para session o nome de user 
                    session.setAttribute("usuario", soNome);
                    
                    
                   
                    //
                    // aviso se foi realizado ou nao com sucesss
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Sucesso ! ')");
                    out.println("location='/SA Web/index.jsp';");
                    out.println("</script>");
                    //
                    // mandar para pagina Home com o user logado
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                    //
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Senha e Confirmar Senha não estão iguals !')");
                    out.println("location='/SA Web/cadastro.jsp';");
                    out.println("</script>");
                }
                // end comparar senhas 

            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
