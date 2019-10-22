
package br.senai.entidades;

public class Cadastro {
    private int cod_cadastro;
    private String nome;
    private String cpf;
    private String email;
    private String senha;

    public int getCod_cadastro() {
        return cod_cadastro;
    }

    public void setCod_cadastro(int cod_cadastro) {
        this.cod_cadastro = cod_cadastro;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
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
    
    
}
