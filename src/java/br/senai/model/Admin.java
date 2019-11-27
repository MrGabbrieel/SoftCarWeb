
package br.senai.model;

public class Admin {
    
   private int cod_ticket;
   private String resposta;

    public Admin() {
    }

    public Admin(int cod_ticket, String resposta) {
        this.cod_ticket = cod_ticket;
        this.resposta = resposta;
    }

    public int getCod_ticket() {
        return cod_ticket;
    }

    public void setCod_ticket(int cod_ticket) {
        this.cod_ticket = cod_ticket;
    }

    public String getResposta() {
        return resposta;
    }

    public void setResposta(String resposta) {
        this.resposta = resposta;
    }
   
    
   
}
