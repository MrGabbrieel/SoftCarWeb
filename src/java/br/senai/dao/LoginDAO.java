
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
    //Pega tudo para por na session e logar
    public  Usuario logar(Usuario user) throws SQLException{
    
        String sql = "select * from usuario where email = '"+user.getEmail()+"' and senha = '"+user.getSenha()+"'";
        PreparedStatement ps = con.prepareStatement(sql);
        
        //ps.setString(1, user.getEmail());
        //ps.setString(2, user.getSenha() );
        ResultSet rs = ps.executeQuery(sql);
        //
 
        //
        Usuario usuario = null;
        
        String senha = null;
        int cod_usuario = 0;
        String nomeUser = null;
        String email = null;
        String cpf = null;
        String idade = null;
        String telefone = null;
        String cargo = null;
        
        while (rs.next()) {

            cod_usuario = rs.getInt("cod_usuario");
            senha = rs.getString("senha");
            nomeUser = rs.getString("nome");
            email = rs.getString("email");
            cpf = rs.getString("cpf");
            idade = rs.getString("idade");
            telefone = rs.getString("telefone");
            cargo = rs.getString("cargo");

        }

        usuario = new Usuario(cod_usuario ,senha, nomeUser, email, cpf, idade, telefone, cargo, true);
              
       
        
        ps.close();
        con.close();
        
       return usuario;
    }
    
    
}
