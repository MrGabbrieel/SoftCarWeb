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
    //Pega tudo para por na session
    public Usuario getDados(Usuario user) throws SQLException {

        String sql = "select*from usuario where cod_usuario='" +user.getCod_usuario()+ "'";
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery(sql);
        //

        //pegando variaveis
       
       
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

        usuario1 = new Usuario(cod_usuario ,senha, nomeUser, email, cpf, idade, telefone, cargo);

        rs.close();
        ps.close();
        con.close();

        return usuario1;

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
