package br.senai.dao;

import br.senai.model.Tickets;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TicketsDAO {

    Connection con;

    public TicketsDAO() {
        con = ConnectionFactory.getConexao();
    }

    public boolean inserirTickets(Tickets t) {
        try {
            String sql = "insert into tickets(tipopergunta, assunto, mensagem, cod_user)" + " values(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, t.getTipopergunta());
            ps.setString(2, t.getAssunto());
            ps.setString(3, t.getMensagem());
            ps.setInt(4, t.getCod_user());
            
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
