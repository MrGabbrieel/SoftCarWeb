
package br.senai.testes;

import br.senai.dao.LoginDAO;
import br.senai.model.Usuario;
import java.sql.SQLException;
import org.junit.Test;
import static org.junit.Assert.*;



public class LoginDaoTeste {

 private final Usuario u1 = new Usuario("gabriel@gmail.com","123");
    
    @Test    
    public void LoginDaoTeste() throws SQLException {
    
        //9 Verificando se o Dao de loguin está conectando no banco para poder chamar a classe logar e logar no sistema!
        LoginDAO ldao = new LoginDAO();
    
    boolean a = ldao.LoginDAO();
   Usuario b = ldao.logar(u1);
    
      if(a){
            System.out.println("Sucesso, entrou no login!");
            
        }else{
            fail("Erro, não entrou login!");   
     
      }
    if(b != null){
        System.out.println("Logou");
    } else {
        System.out.println("Não logou");
    }
    
    }
    
}
