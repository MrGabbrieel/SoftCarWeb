package br.senai.dao;

import br.senai.model.Tickets;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TicketsDAO {

    Connection con;
    private List<Tickets> list = new ArrayList();
    private Tickets tt;
    
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
    
    public List<Tickets> getTickets(int idUser) {
        try {
            String sql = "SELECT tipopergunta, assunto from tickets WHERE cod_user = '"+idUser+"' ORDER BY tickets.cod_ticket DESC";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(sql);
            
            while(rs.next()){
                tt = new Tickets();
                
                tt.setAssunto(rs.getString("assunto"));
                tt.setTipopergunta(rs.getString("tipopergunta"));
                
                list.add(tt);
                
            }
            
            rs.close();
            ps.close();
            con.close();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
