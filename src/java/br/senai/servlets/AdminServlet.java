
package br.senai.servlets;

import br.senai.dao.AdminDAO;
import br.senai.dao.TicketsDAO;
import br.senai.model.Admin;
import br.senai.model.Tickets;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class AdminServlet extends HttpServlet {


    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String envio = request.getParameter("ENVIAR");
        switch(envio){
            case "ENVIAR": this.admList(request, response);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
                String envio = request.getParameter("ENVIAR");
        switch (envio) {
            case "RESPONDER":
                this.respAdmin(request, response);
        
    }
    }
    
   private void respAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try (PrintWriter out = response.getWriter()) {
              // Session 
                     HttpSession session = request.getSession();
                   //
              
            // pegando dados que o usuario digitar no site
            String resposta = request.getParameter("resposta");
            String pegacod = request.getParameter("codticket");
            int codticket = Integer.parseInt(pegacod);
            // end pegando
           
            // comparar se tem algo vazio
             String msgerro = "";
            if(resposta.isEmpty() || resposta == null){
                msgerro += "| Resposta |";
                
            }
    
            if(!msgerro.isEmpty()){
                msgerro = "Campo(s) "+msgerro+" é/são obrigatório(s) !"; 
                request.setAttribute("msgErro", msgerro);
                request.getRequestDispatcher("/administrador.jsp").forward(request, response);
            }else{
            //
      
                // obj das suas devidas classes para mandar ao banco 
                Admin admin = new Admin(codticket, resposta);
                AdminDAO a = new AdminDAO();
                a.responderTicket(admin);
                
                session.setAttribute("resposta", resposta);
                request.getRequestDispatcher("/administrador.jsp").forward(request, response);
                
            }   
        }
     }
   
          private void admList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
          try (PrintWriter out = response.getWriter()) {
              //Session
              HttpSession session = request.getSession();
              //
              // cod do user logado
              int cod_user = (int) session.getAttribute("cod_user");
              //
              
              // dar select nos tickets
                TicketsDAO ttDAO = new TicketsDAO();
                // lista os tickets 
                List<Tickets> ttList = new ArrayList();
                //
                ttList = ttDAO.admList();
                request.setAttribute("listaTicketsADM", ttList);
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
              //    
        }
    }

 

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}