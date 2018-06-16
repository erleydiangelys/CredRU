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
public class LocalDate {
    private int dia;
    private int semana;
    private int mes;
    private int ano;

    public LocalDate() {
        this.dia = 0;
        this.semana = 0;
        this.mes = 0;
        this.ano = 0;
    }

    public LocalDate(int dia, int semana, int mes, int ano) {
        this.dia = dia;
        this.semana = semana;
        this.mes = mes;
        this.ano = ano;
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        this.dia = dia;
    }

    public int getSemana() {
        return semana;
    }

    public void setSemana(int semana) {
        this.semana = semana;
    }

    public int getMes() {
        return mes;
    }

    public void setMes(int mes) {
        this.mes = mes;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    @Override
    public String toString() {
        String resultado = "";
        
        resultado += Integer.toString(this.dia) + "/";
        resultado += Integer.toString(this.mes) + "/";
        resultado += Integer.toString(this.ano);
        
        return resultado;
    }
    
    
}
