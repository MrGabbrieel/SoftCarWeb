
package br.senai.dao;
import br.senai.model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class CadastroDAO {
    Connection con;

    public CadastroDAO() {
         con = ConnectionFactory.getConexao();
    }
    
    public void inserirUser(Usuario user){
        try {
            
            String sql = "insert into usuario(nome, email, senha,  cpf)" + " values(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getNomeUser());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getSenha());
            ps.setString(4, user.getCpf());
            
            ps.executeUpdate();
            ps.close();
            con.close();
            
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
