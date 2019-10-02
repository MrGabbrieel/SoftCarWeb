
package br.senai.entidades;


public class Tickets {
    private String tipopergunta;
    private String assunto;
    private String mensagem;

    public Tickets() {
    }

    public Tickets(String tipopergunta, String assunto, String mensagem) {
        this.tipopergunta = tipopergunta;
        this.assunto = assunto;
        this.mensagem = mensagem;
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
    
    
}
