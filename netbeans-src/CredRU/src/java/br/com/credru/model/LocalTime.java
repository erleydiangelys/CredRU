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
public class LocalTime {
    private int segundo;
    private int minuto;
    private int hora;

    public LocalTime() {
        this.hora = 0;
        this.minuto = 0;
        this.hora = 0;
    }

    public LocalTime(int segundo, int minuto, int hora) {
        this.segundo = segundo;
        this.minuto = minuto;
        this.hora = hora;
    }

    public int getSegundo() {
        return segundo;
    }

    public void setSegundo(int segundo) {
        this.segundo = segundo;
    }

    public int getMinuto() {
        return minuto;
    }

    public void setMinuto(int minuto) {
        this.minuto = minuto;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }

    @Override
    public String toString() {
        String resultado = "";
        
        resultado += Integer.toString(this.hora) + ":";
        resultado += Integer.toString(this.minuto) + ":";
        resultado += Integer.toString(this.segundo);
        
        return resultado;
    }
    
}
