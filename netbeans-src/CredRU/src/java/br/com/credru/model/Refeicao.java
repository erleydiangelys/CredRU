/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.model;

import java.util.ArrayList;

/**
 *
 * @author Soriano
 */
public class Refeicao {
    private String nome;
    private final Turno turno;
    private ArrayList<Alimento> alimentos;
    
    public Refeicao(Turno turno){
        this.turno = turno;
    }

    public ArrayList<Alimento> getAlimentos() {
        return alimentos;
    }

    public void setAlimentos(ArrayList<Alimento> alimentos) {
        this.alimentos = alimentos;
    }

    public Turno getTurno() {
        return turno;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
}
