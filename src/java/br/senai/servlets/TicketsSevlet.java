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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class TicketsSevlet extends HttpServlet {

@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
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
            // end pegando
            
            // comparar se tem algo vazio
            if(tipopergunta.isEmpty() || tipopergunta == null){
                request.setAttribute("msgErroUm", "Campo Tipo de Pergunta obrigatório ou está invalido !");
                request.getRequestDispatcher("/formsup.jsp").forward(request, response);
                return;
            }
             else if(assunto.isEmpty() || assunto == null){
                request.setAttribute("msgErroDois", "Campo Assunto é obrigatório !");
                request.getRequestDispatcher("/formsup.jsp").forward(request, response);
                return;
            }
            else if(mensagem.isEmpty() || mensagem == null){
                request.setAttribute("msgErroTres", "Campo Mensagem é obrigatório !");
                request.getRequestDispatcher("/formsup.jsp").forward(request, response);
                return;
            }
            //
      
                // obj das suas devidas classes para mandar ao banco 
                Tickets ticket = new Tickets(tipopergunta, assunto, mensagem);
                TicketsDAO c = new TicketsDAO();
                c.inserirTickets(ticket);
                             
                out.println("<script type=\"text/javascript\">");
                out.println("alert(Seu Ticket foi enviado com sucesso! :) )");
                out.println("location='/SA Web/index.jsp';");
                out.println("</script>");
             
 
            // end comparar senhas 
            
        }
     }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
