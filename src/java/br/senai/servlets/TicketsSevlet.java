/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senai.servlets;

import br.senai.dao.TicketsDAO;
import br.senai.model.Tickets;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class TicketsSevlet extends HttpServlet {

@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String envio = request.getParameter("ENVIAR");
        switch(envio){
            case "ENVIAR": this.getTicket(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String envio = request.getParameter("enviar");
        switch(envio){
            case "EnviarTicket": this.enviarTicket(request, response);
        }
    }

     private void enviarTicket(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
          try (PrintWriter out = response.getWriter()) {
              // Session 
                     HttpSession session = request.getSession();
                   //
              
            // pegando dados que o usuario digitar no site
            String tipopergunta = request.getParameter("tipopergunta");
            String assunto = request.getParameter("assunto");
            String mensagem = request.getParameter("mensagem");
            int cod_user = (int) session.getAttribute("cod_user");
            String msgpadrao = "Aguardndo Resposta";
            // end pegando
           
            // comparar se tem algo vazio
             String msgerro = "";
            if(tipopergunta.isEmpty() || tipopergunta == null){
                msgerro += "| Tipo de Pergunta |";
                
            }
            if(assunto.isEmpty() || assunto == null){
              msgerro += "| Assunto |";
            }
             if(mensagem.isEmpty() || mensagem == null){
                msgerro += "| Mensagem |";
            }
            if(!msgerro.isEmpty()){
                msgerro = "Campo(s) "+msgerro+" é/são obrigatório(s) !"; 
                request.setAttribute("msgErro", msgerro);
                request.getRequestDispatcher("/formsup.jsp").forward(request, response);
                return;
            }else{
            //
      
                // obj das suas devidas classes para mandar ao banco 
                Tickets ticket = new Tickets(tipopergunta, assunto, mensagem, cod_user, msgpadrao);
                TicketsDAO c = new TicketsDAO();
                c.inserirTickets(ticket);
                
                //pega o tipo de assunto
                      session.setAttribute("tickets", assunto);
                      request.setAttribute("tickets", assunto); 
                      
                out.println("<script type=\"text/javascript\">");
                out.println("alert(Seu Ticket foi enviado com sucesso! :) )");
                out.println("location='/SA Web/resultInsercaoTickets.jsp';");
                out.println("</script>");
                request.getRequestDispatcher("/resultInsercaoTickets.jsp").forward(request, response);
            }
 
            
        }
     }
     private void getTicket(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
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
                ttList = ttDAO.getTickets(cod_user);
                request.setAttribute("listaTickets", ttList);
                request.getRequestDispatcher("suporte.jsp").forward(request, response);
              //    
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    

}
