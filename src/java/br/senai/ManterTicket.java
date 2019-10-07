
package br.senai;
import br.senai.dao.TicketsDAO;
import br.senai.entidades.Tickets;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "ManterTicket", urlPatterns = {"/ManterTicket"})
public class ManterTicket extends HttpServlet {

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }

     private void inserir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tipopergunta = request.getParameter("tipopergunta");
        String assunto = request.getParameter("assunto");
        String mensagem = request.getParameter("mensagem");
        
        if (tipopergunta == null || tipopergunta.equals("")) {
            request.setAttribute("msgErro", "O Tipo de Pergunta é obrigatório!");
            
            request.getRequestDispatcher("/formsup.jsp").forward(request, response);
            return;
        } else 
            
            if (assunto == null || assunto.equals("")) {
                request.setAttribute("msgErro", "O assunto é obrigatório!");
                
                request.getRequestDispatcher("/formsup.jsp").forward(request, response);
            
            return;
        }else 
                  if (mensagem == null || mensagem.equals("")) {
                request.setAttribute("msgErro", "A menssagem é obrigatória!");
                
                request.getRequestDispatcher("/formsup.jsp").forward(request, response);
            
            return;
                
                }
        
        HttpSession session = request.getSession(true);
        List<Tickets> listaTickets = (List<Tickets>) session.getAttribute("listaTickets");
        
        if(session.getAttribute("listaTickets")==null){
          listaTickets = new ArrayList();
        }
        
         Tickets t = new Tickets(tipopergunta,assunto,mensagem); 
        new TicketsDAO().insert(t);
        request.setAttribute("t", t);
        
        listaTickets.add(t);
        
        session.setAttribute("listaTickets",listaTickets);
        
        request.getRequestDispatcher("/resultInsercaoTickets.jsp").forward(request, response);
     }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          String envio = request.getParameter("enviar");
        
        switch (envio) {
            case "Inserir":
                this.inserir(request, response);
        }
        
    }


    @Override
    public String getServletInfo() {
        return "Pequena Descrição";
    }// </editor-fold>

}
