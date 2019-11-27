
package br.senai.dao;

import br.senai.model.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class AdminDAO {
       Connection con;

    public AdminDAO() {
         con = ConnectionFactory.getConexao();
    }
    
        public boolean responderTicket(Admin a){
                try {
            String sql = "update tickets set resposta = ? where cod_ticket = "+a.getCod_ticket();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, a.getResposta());
            
            ps.executeUpdate();
            ps.close();
            con.close();

        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
        return true;
}
        
        
    
}
