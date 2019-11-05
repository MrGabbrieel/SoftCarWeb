
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
    
    public  Usuario logar(Usuario user) throws SQLException{
    
        String sql = "select * from usuario where email = '"+user.getEmail()+"' and senha = '"+user.getSenha()+"'";
        PreparedStatement ps = con.prepareStatement(sql);
        
        //ps.setString(1, user.getEmail());
        //ps.setString(2, user.getSenha() );
        ResultSet rs = ps.executeQuery(sql);
        //
 
        //
        Usuario usuario = null;
        if(rs.next()){
        usuario = new Usuario(rs.getInt("cod_usuario"), rs.getString("nome"), true);
         
        }
              
       
        
        ps.close();
        con.close();
        
       return usuario;
    }
    
    
}
