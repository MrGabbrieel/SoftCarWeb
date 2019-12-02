
package br.senai.servlets;

import br.senai.dao.LoginDAO;
import br.senai.dao.PerfilDAO;
import br.senai.model.Usuario;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


public class PerfilSevlet extends HttpServlet {

  

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      String envio = request.getParameter("Salvar");
        switch(envio){
            case "Enviar": this.atualizaDados(request, response);
        }
        
    }
    
       private void atualizaDados(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
          try (PrintWriter out = response.getWriter()) {
              try{
              // Session
                HttpSession session = request.getSession();
              //
              //pegar os dados
              
            String email = request.getParameter("email");
            String nomeUser = request.getParameter("nomeUser");
            String senha = request.getParameter("senha");
            String cpf = request.getParameter("cpf");
            String telefone = request.getParameter("telefone");
            String idade = request.getParameter("idade");
            String cargo = request.getParameter("cargo");
                
                
                
                
              //
              // att o banco
                  Usuario newUser = new Usuario(senha, nomeUser, email, cpf, idade, telefone, cargo);
                
                PerfilDAO pfDao = new PerfilDAO();
                pfDao.add(newUser);
                
                LoginDAO l = new LoginDAO();
                
                Usuario novo = new Usuario();
                novo = l.logar(newUser);
                
                Usuario attSession;
                attSession = (Usuario) session.getAttribute("usuario");
                
                attSession.setNomeUser(nomeUser);
                attSession.setEmail(email);
                attSession.setCpf(cpf);
                attSession.setTelefone(telefone);
                attSession.setIdade(idade);
                attSession.setCargo(cargo);
                
                session.setAttribute("usuario", attSession);
              
              } catch(SQLException e){
                  System.out.println(e);
              }
              
              request.getRequestDispatcher("minhaConta.jsp").forward(request, response);
          }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
