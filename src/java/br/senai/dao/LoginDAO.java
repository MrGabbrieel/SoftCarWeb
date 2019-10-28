
package br.senai.dao;

import br.senai.model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginDAO {
    
    Connection con;

    public LoginDAO() {
         con = ConnectionFactory.getConexao();
    }
    
    public Usuario logar(Usuario user) throws SQLException{
    
        String sql = "select*from usuario where email='"+user.getEmail()+"'";
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery(sql);
        //

        // variaveis para pegar os dados do banco
        String s = null;
        int cod_cadastro = 0;
        String nomeUser = null;
        boolean entrar = false;
        //

        while(rs.next()){

         cod_cadastro = rs.getInt("cod_cadastro");
         s = rs.getString("senha");
         nomeUser = rs.getString("nome");

         
        }
        
        if(user.getSenha().equals(s)){
            entrar = true;
        }
        
        Usuario usuario = new Usuario(cod_cadastro, nomeUser, entrar);
        
        ps.close();
        con.close();
        
       return usuario;
    }
    
    
}
