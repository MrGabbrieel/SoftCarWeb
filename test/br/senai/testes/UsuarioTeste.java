
package br.senai.testes;
import br.senai.model.Usuario;
import org.junit.Test;
import static org.junit.Assert.*;

public  class UsuarioTeste {
    
    private final Usuario u1 = new Usuario("gabriel@gmail.com","123","Gabriel","120.20.20.20");
    private final Usuario u2 = new Usuario("josé@gmail.com","321","José","120.30.20.20");
    private final Usuario u3 = new Usuario(1,"Leo",true);
    @Test
    public void UsuarioTeste() {
        //3 Verificando se as informações estão entrando no cadastro de usuário
        System.out.println("+=== 1º Exibição ===+\nE-mail: "+u1.getEmail()+"\nSenha: "+u1.getSenha()+"\n Nome: "+u1.getNomeUser()+"\n CPF: "+u1.getCpf());
        u1.setEmail("leonardo@hotmail.com");
        u1.setSenha("321");
        u1.setNomeUser("Leonardo");
        u1.setCpf("20.20.20.20");
         System.out.println("+=== 2º Exibição ===+\nE-mail: "+u1.getEmail()+"\nSenha: "+u1.getSenha()+"\n Nome: "+u1.getNomeUser()+"\n CPF: "+u1.getCpf());
         
         
        //4 Verificar se os emails são iguais
        
        u1.setEmail("gabriel@gmail.com");
        if(u1.getSenha().equals(u2.getSenha())){
            System.out.println("Email u1 é igual a u2: "+u1.getEmail()+" u2: "+u2.getEmail());
        
        }else{
            System.out.println("Emails não são iguais!");
        }
        
        //5 Vrificar se está logado
        if(u3.getLogado(true) == false){
            System.out.println("Usuário não está logado!");
        }else if(u3.getLogado(true)== true){
            System.out.println("Usuário logado");
        }
      
        //6 verificar se os cadastro de usuário é maior que 50 
        if(u3.getCod_usuario() <= 50 ){
            System.out.println("Quantidade de usuários não ultrapassou o limite!");
            
        }else if(u3.getCod_usuario() > 50){
            System.out.println("Quantidade de usuários ultrapassou o limite!");
        }
        
        //7 Verificar se algum campo ficou nulo
        u1.setCpf(null);
        u1.setEmail("contato@gmail.com");
        u1.setNomeUser(null);
        if(u1.getCpf() != null && u1.getEmail() !=null  && u1.getNomeUser() != null){
            System.out.println("Todos os campos foram preenchidos!");
            
        }else{
        
            fail("Alguns campos n foram preenchidos. Campos: \n CPF: "+u1.getCpf()+"\n Email: "+u1.getEmail()+"\n Nome:"+u1.getNomeUser());
        }
    }
    
}
