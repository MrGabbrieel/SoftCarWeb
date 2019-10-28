
package br.senai.model;


public class Usuario {
    
    
//cadastro
    private int cod_cadastro;
    private String cpf;
    private String email;
    private String senha;
    private String nomeUser;
//login
    private boolean logado;
    

    public Usuario() {
    }
    
    // para cadastro
    public Usuario(String email, String senha, String nomeUser, String cpf) {
        this.email = email;
        this.senha = senha;
        this.nomeUser = nomeUser;
        this.cpf = cpf;
    }
    public Usuario(String nomeUser){
        this.nomeUser = nomeUser;
    }
    //
    // para perfil

    //login

    public Usuario(int cod_cadastro, String nomeUser, boolean logado) {
        this.cod_cadastro = cod_cadastro;
        this.nomeUser = nomeUser;
        this.logado = logado;
 
    }

    public Usuario(String email, String senha) {
        this.email = email;
        this.senha = senha;
    }

    
    public int getCod_cadastro() {
        return cod_cadastro;
    }

    public void setId(int cod_cadastro) {
        this.cod_cadastro = cod_cadastro;
    }
 
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getNomeUser() {
        return nomeUser;
    }

    public void setNomeUser(String nomeUser) {
        this.nomeUser = nomeUser;
    }

    public boolean isLogado() {
        return logado;
    }

    public void setLogado(boolean logado) {
        this.logado = logado;
    }
        public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id=" + cod_cadastro + ", nomeUser=" + nomeUser + '}';
    }


}
