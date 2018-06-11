/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.model;

import java.util.ArrayList;
import java.util.Map;

/**
 *
 * @author Soriano
 */
public class Restaurante {
    private String nome;
    private ArrayList<Horario> horarios;
    private Map<String, ArrayList<Refeicao>> refeicoes;

    public Restaurante() {
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public ArrayList<Horario> getHorarios() {
        return horarios;
    }

    public void setHorarios(ArrayList<Horario> horarios) {
        this.horarios = horarios;
    }

    public Map<String, ArrayList<Refeicao>> getRefeicoes() {
        return refeicoes;
    }

    public void setRefeicoes(Map<String, ArrayList<Refeicao>> refeicoes) {
        this.refeicoes = refeicoes;
    }
    
}
