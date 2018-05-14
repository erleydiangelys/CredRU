/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.model;

/**
 *
 * @author Soriano
 */
public class Transacao {
    private LocalDate data;
    private LocalTime hora;
    private TipoTransacao tipo;
    private float valor;
    private int qtdCreditos;
    
    public static Transacao creditarValor(Usuario user, float valor){
        return null;
    }
    
    public static Transacao debitarValor(Usuario user){
        return null;
    }    
}
