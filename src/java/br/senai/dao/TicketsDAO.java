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
    private List<Tickets> lista = new ArrayList();
    
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
            String sql = "SELECT tipopergunta, assunto, resposta from tickets WHERE cod_user = '"+idUser+"' ORDER BY tickets.cod_ticket DESC";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(sql);
            
            while(rs.next()){
                tt = new Tickets();
                
                tt.setAssunto(rs.getString("assunto"));
                tt.setTipopergunta(rs.getString("tipopergunta"));
                tt.setResposta(rs.getString("resposta"));
                
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
    
    public List<Tickets> admList(){
             try {
            String sql = "SELECT tickets.cod_ticket, tickets.tipopergunta, tickets.assunto, tickets.mensagem, tickets.resposta, usuario.nome from tickets, usuario where usuario.cod_usuario = tickets.cod_user";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(sql);
            
            while(rs.next()){
                tt = new Tickets();
                
                tt.setAssunto(rs.getString("tickets.assunto"));
                tt.setCod_ticket(rs.getInt("tickets.cod_ticket"));
                tt.setTipopergunta(rs.getString("tickets.tipopergunta"));
                tt.setMensagem(rs.getString("tickets.mensagem"));
                tt.setResposta(rs.getString("tickets.resposta"));
                tt.setNomeUser(rs.getString("usuario.nome"));
                
                lista.add(tt);
                
            }
            
            rs.close();
            ps.close();
            con.close();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return lista;
    }
        
        
    
}
