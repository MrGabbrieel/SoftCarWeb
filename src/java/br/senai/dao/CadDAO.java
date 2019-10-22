
package br.senai.dao;

import br.senai.entidades.Cadastro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CadDAO {
    
        public String conectar(){
    Connection conexao = ConnectionFactory.getConexao();
    
    if(conexao == null){
        return "Conexão não pode ser realizada";
    }
       return "Conexão efetuada com sucesso!";
    }
        
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Cadastro> lista = new ArrayList<>();
    
    public CadDAO(){}{
        conn = new ConnectionFactory().getConexao();
    }
    
    public void inserir(Cadastro cadastro){
        String sql = "INSERT INTO cadastro (nome,cpf,email,senha) VALUES (?,?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cadastro.getNome());
            stmt.setString(2, cadastro.getCpf());
            stmt.setString(3, cadastro.getEmail());
            stmt.setString(4, cadastro.getSenha());
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro 2: "+erro);
        }
    
    }
    
     public void alterar(Cadastro cadastro){
        String sql = "UPDATE cadastro SET nome = ?, cpf = ?, email = ?, senha = ? WHERE cod_cadastro = ?";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cadastro.getNome());
            stmt.setString(2, cadastro.getCpf());
            stmt.setString(3, cadastro.getEmail());
            stmt.setString(4, cadastro.getSenha());
            stmt.setInt(5, cadastro.getCod_cadastro());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro 3: "+erro);
        }
    
    }
     
      public void excluir(int valor){
        String sql = "DELETE FROM cadastro WHERE cod_cadastro = "+valor;
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro 4: "+erro);
        }
    
    }
    
      public ArrayList<Cadastro> listarTodos()  {
          String sql = "SELECT * FROM cadastro";
          try{
              st = conn.createStatement();
              rs = st.executeQuery(sql);
              while(rs.next()){
                  Cadastro cadastro = new Cadastro();
                  cadastro.setCod_cadastro(rs.getInt("cod_cadastro"));
                  cadastro.setNome(rs.getString("nome"));
                  cadastro.setCpf(rs.getString("cpf"));
                  cadastro.setEmail(rs.getString("email"));
                  cadastro.setSenha(rs.getString("senha"));
                  lista.add(cadastro);
                  
              }
                   
          }catch(Exception erro){
              throw new RuntimeException("Erro 5: "+erro);    
            }
          return lista;
      }
      
}
