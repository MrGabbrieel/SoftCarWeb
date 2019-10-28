
package br.senai.servlets;

import br.senai.dao.LoginDAO;
import br.senai.model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet {

   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        String envio = request.getParameter("ENVIAR");
        switch(envio){
            case "LOGAR": this.verificacao(request, response);
        }
    }  
     private void verificacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        try (PrintWriter out = response.getWriter()) {
            try {
                   // Session 
                     HttpSession session = request.getSession();
                   //
                   // pegar dados da pagina 
                   String email = request.getParameter("login");
                   String senhaLogin = request.getParameter("senhaLogin");
                  //
                    
                  // mandar para o banco de dados 
                     Usuario user = new Usuario(email, senhaLogin);
                     LoginDAO l = new LoginDAO();
                     Usuario u = l.logar(user);
                   //
                   
                   //
                   if(u.isLogado()){
                      // Mandar usuario para session 
                        session.setAttribute("usuario", u);

                      // mandar para homeLogado 
                       request.getRequestDispatcher("/homeDepoisDeLogar.jsp").forward(request, response);   
                   }else{
                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Senha incorreta ou Softplayer não cadastrado !! ')");
                            out.println("location='/SoftCarWeb/login.jsp';");
                            out.println("</script>");
                     }
                 
               } catch (SQLException ex) {
                   System.out.println(ex);
               }
        }     
    }
     
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}