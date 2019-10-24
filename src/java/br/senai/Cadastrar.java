
package br.senai;

import br.senai.dao.CadDAO;
import br.senai.entidades.Cadastro;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Cadastrar extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       String envio = request.getParameter("Cadastrar");
       switch(envio){
           case "Confirmar": this.inserir(request, response);
       }
    }
    
   public void inserir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
               try{
                   
                   String nome = request.getParameter("nome");
                   String email = request.getParameter("email");
                   String cpf = request.getParameter("cpf");
                   String senha = request.getParameter("senha");
                   
                Cadastro cad = new Cadastro();
                CadDAO cdDao = new CadDAO();
                CadDAO cdDao2 = new CadDAO();
                
                
                    cad.setNome(nome);
                    cad.setCpf(cpf);
                    cad.setEmail(email);
                    cad.setSenha(senha);
                    
                    cdDao.inserir(cad);
                    ArrayList<Cadastro> list = new ArrayList();
                    list = cdDao2.listarTodos();
                    
                    request.setAttribute("listUser", list);
                    request.getRequestDispatcher("/administrador.jsp").forward(request, response);
                    // mandando por request 
                    
                
            }catch(IOException | ServletException erro){
                   System.out.println(erro);
                
            }
        }
   }
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
