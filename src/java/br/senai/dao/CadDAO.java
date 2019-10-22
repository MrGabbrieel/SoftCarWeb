
package br.senai.dao;

import br.senai.entidades.Cadastro;
import java.sql.Connection;


public class CadDAO {
    
    private Connection conn;
    
    
    public CadDAO(){}{
        conn = new ConnectionFactory().getConexao();
    }
    
    
}
