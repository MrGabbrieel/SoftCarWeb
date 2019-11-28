
package br.senai.model;


public class Usuario {
    
    
//cadastro
    private int cod_usuario;
    private String cpf;
    private String email;
    private String senha;
    private String nomeUser;
     private String idade;
    private String telefone;
    private String cargo;
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
    

    //login

    public Usuario(int cod_usuario, String nomeUser, boolean logado) {
        this.cod_usuario = cod_usuario;
        this.nomeUser = nomeUser;
        this.logado = logado;
 
    }

    public Usuario(String email, String senha) {
        this.email = email;
        this.senha = senha;
    }
// pro perfil
    public Usuario(int cod_usuario, String senha, String nomeUser, String email, String cpf, String idade, String telefone, String cargo) {
       this.cod_usuario = cod_usuario;
        this.cpf = cpf;
        this.email = email;
        this.senha = senha;
        this.nomeUser = nomeUser;
        this.idade = idade;
        this.telefone = telefone;
        this.cargo = cargo;
      
    }
     public Usuario(String senha, String nomeUser, String email, String cpf, String idade, String telefone, String cargo) {
        this.cpf = cpf;
        this.email = email;
        this.senha = senha;
        this.nomeUser = nomeUser;
        this.idade = idade;
        this.telefone = telefone;
        this.cargo = cargo;
      
    }

    
    public int getCod_usuario() {
        return cod_usuario;
    }

    public void setCod_usuario(int cod_cadastro) {
        this.cod_usuario = cod_usuario;
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
    
    public boolean getLogado(boolean logado){
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
    
    public String getIdade() {
        return idade;
    }

    public void setIdade(String idade) {
        this.idade = idade;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id=" + cod_usuario + ", nomeUser=" + nomeUser + '}';
    }


}
