/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senai.dao;

import br.senai.model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Aluno
 */
public class PerfilDAO {
       Connection con;
   private Usuario usuario = new Usuario();
    private Usuario usuario1;

    public PerfilDAO() {
        con = ConnectionFactory.getConexao();

    }
 
    //da update nos perfil
    public String add(Usuario user) {
        try {

            String sql = "update usuario set nome = '" + user.getNomeUser() + "', cargo = '" + user.getCargo()+ "', idade = '" + user.getIdade()+ "', cpf = '" + user.getCpf()+ "'"
                    + ", telefone = '" + user.getTelefone() + "', email = '" + user.getEmail()+ "'"
                    + " where cod_usuario = '" + user.getCod_usuario()+ "'";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.executeUpdate();
            ps.close();
            con.close();
            return user.toString();

        } catch (SQLException e) {
            System.out.println(e);
            return e.getMessage();
        }
    }
}
