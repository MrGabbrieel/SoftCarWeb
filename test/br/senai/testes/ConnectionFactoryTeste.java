/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senai.testes;

import br.senai.dao.ConnectionFactory;
import java.sql.Connection;
import org.junit.Test;
import static org.junit.Assert.*;

public class ConnectionFactoryTeste {
    
    @Test
    public void ConectionFactoryTeste() {
        
        //10 Verificando se está fazendo conexão com o banco de dados!
        ConnectionFactory cf = new ConnectionFactory();
        
        Connection b = cf.getConexao();
       ConnectionFactory.fecharConexao();
    
        if(b != null){
           
            System.out.println("Conectou no banco! \n"+b+"\n"+ConnectionFactory.class.getName());
        }else{
            fail("Não conectou no banco! \n"+b+"\n"+ConnectionFactory.class.getName());
        
        }
        
      
    }
    
}
