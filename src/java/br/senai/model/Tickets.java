
package br.senai.model;


public class Tickets {
    private int cod_ticket;
    private String tipopergunta;
    private String assunto;
    private String mensagem;
    private int cod_user;

    public Tickets() {
    }

    public Tickets(String tipopergunta, String assunto, String mensagem, int cod_user) {
        this.tipopergunta = tipopergunta;
        this.assunto = assunto;
        this.mensagem = mensagem;
        this.cod_user = cod_user;
    }

    public String getTipopergunta() {
        return tipopergunta;
    }

    public void setTipopergunta(String tipopergunta) {
        this.tipopergunta = tipopergunta;
    }

    public String getAssunto() {
        return assunto;
    }

    public void setAssunto(String assunto) {
        this.assunto = assunto;
    }

    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    } 
    
    public int getCod_ticket() {
        return cod_ticket;
    }

    public void setCod_ticket(int cod_ticket) {
        this.cod_ticket = cod_ticket;
    }
     @Override
    public String toString() {
        return "Ticket" + "id=" + cod_ticket + ", tipopergunta=" + tipopergunta + '}';
    }

    public int getCod_user() {
        return cod_user;
    }

    public void setCod_user(int cod_user) {
        this.cod_user = cod_user;
    }
}
