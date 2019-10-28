package br.senai.testes;

import br.senai.dao.TicketsDAO;
import br.senai.model.Tickets;
import org.junit.Test;
import static org.junit.Assert.*;

public class TicketDaoTeste {
     private final Tickets t1 = new Tickets("Meu carro teve pane geral","Problemas com o carro","Meu carro não está ligando bla bla bla");
    
    
    @Test
    public void TicketDaoTeste() {
    
       
        //8 Verificando se as informações inseridas entraram no inserirTicket do  DAO do banco de dados de Tickets
        TicketsDAO tDao = new TicketsDAO();
       
        boolean a =  tDao.inserirTickets(t1);   
       if(a){
            System.out.println("Sucesso, entrou!");
            
        }else{
          fail("Erro, não entrou!");   
        }
    
    }
    
}
