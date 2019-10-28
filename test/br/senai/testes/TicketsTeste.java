
package br.senai.testes;

import br.senai.model.Tickets;
import org.junit.Test;
import static org.junit.Assert.*;

public class TicketsTeste {
    
    private final Tickets t1 = new Tickets("Meu carro teve pane geral","Problemas com o carro","Meu carro não está ligando bla bla bla");
    
    @Test
    public void TicketsTeste() {
         System.out.println("+=== 1º Exibição ===+\nTipo de Pergunta: "+t1.getTipopergunta()+"\n" +"Assunto: "+ t1.getAssunto()+"\n Menssagem: "+t1.getMensagem());
         t1.setTipopergunta("Minha conta está bugada!");
         t1.setAssunto("Problemas com a conta");
         t1.setMensagem("Não estou conseguindo logar");
         System.out.println("+=== 2º Exibição ===+\nTipo de Pergunta: "+t1.getTipopergunta()+"\n" +"Assunto: "+ t1.getAssunto()+"\n Menssagem: "+t1.getMensagem());
         
         
         t1.setAssunto("Oi");
         t1.setTipopergunta("Oi");
         t1.setMensagem(null);
        if(t1.getTipopergunta().equals(t1.getAssunto())){
            System.out.println("+=== 3º Exibição ===+\n O tipo de pergunta deve ser Difetende de Assunto");
        }else if(null == t1.getMensagem() || null == t1.getAssunto() || null == t1.getTipopergunta()){
           fail("+=== 4º Exibição ===+\n Os campos não podem ser nulo");
        }
        
            
        
    }
    
}
