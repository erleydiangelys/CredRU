/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Soriano
 */
public class Restaurante {
    private String nome;
    private List<Horario> horarios;
    private Map<String, List<Refeicao>> refeicoes;

    public Restaurante() {
        this.horarios = new ArrayList<>();
        this.refeicoes = new HashMap<>();
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<Horario> getHorarios() {
        return horarios;
    }

    public void setHorarios(List<Horario> horarios) {
        this.horarios = horarios;
    }

    public Map<String, List<Refeicao>> getRefeicoes() {
        return refeicoes;
    }

    public void setRefeicoes(Map<String, List<Refeicao>> refeicoes) {
        this.refeicoes = refeicoes;
    }
    
}
