/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.model;

import java.util.Calendar;

/**
 *
 * @author Soriano
 */
public class Transacao {
    private Usuario user;
    private LocalDate data;
    private LocalTime hora;
    private TipoTransacao tipo;
    private float valor;
    private int qtdCreditos;

    public Transacao() {
        Calendar cc = Calendar.getInstance();
        LocalTime hora = new LocalTime();
        LocalDate data = new LocalDate();

        hora.setHora(cc.get(Calendar.HOUR_OF_DAY));
        hora.setMinuto(cc.get(Calendar.MINUTE));
        hora.setSegundo(cc.get(Calendar.SECOND));

        data.setAno(cc.get(Calendar.YEAR));
        data.setDia(cc.get(Calendar.DAY_OF_MONTH));
        data.setMes(cc.get(Calendar.MONTH) + 1);
        data.setSemana(cc.get(Calendar.WEEK_OF_MONTH));
        
        this.data = data;
        this.hora = hora;
    }

    public Usuario getUser() {
        return user;
    }

    public void setUser(Usuario user) {
        this.user = user;
    }

    public LocalDate getData() {
        return data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }

    public LocalTime getHora() {
        return hora;
    }

    public void setHora(LocalTime hora) {
        this.hora = hora;
    }

    public TipoTransacao getTipo() {
        return tipo;
    }

    public void setTipo(TipoTransacao tipo) {
        this.tipo = tipo;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public int getQtdCreditos() {
        return qtdCreditos;
    }

    public void setQtdCreditos(int qtdCreditos) {
        this.qtdCreditos = qtdCreditos;
    }
    
    
    public static Transacao creditarValor(Usuario user, float valor){
        Transacao transacao = new Transacao();
        
        transacao.setValor(valor);
        transacao.setTipo(TipoTransacao.COMPRA);
        transacao.setUser(user);
        
        int creditosGerado = (int) (valor / user.getPerfil().getValor());
                
        transacao.setQtdCreditos(creditosGerado);
        user.setCredito(user.getCredito() + creditosGerado);
        
        return transacao;
        
    }
    
    public static Transacao debitarValor(Usuario user){
        Transacao tra = new Transacao();
        
        tra.setQtdCreditos(1);
        tra.setTipo(TipoTransacao.DEBITO);
        tra.setValor(0);
        tra.setUser(user);
        
        user.setCredito(user.getCredito()-1);
        
        return tra;
    }    
}
