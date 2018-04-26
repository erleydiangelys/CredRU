/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.model;

import java.util.ArrayList;
import java.util.Calendar;

/**
 *
 * @author Soriano
 */
public class Cardapio {
    private Calendar data;
    private ArrayList<Refeicao> refeicoes;

    public Cardapio() {
        refeicoes = new ArrayList<>();
    }

    public Calendar getData() {
        return data;
    }

    public void setData(Calendar data) {
        this.data = data;
    }

    public ArrayList<Refeicao> getRefeicoes() {
        return refeicoes;
    }

    public void setRefeicoes(ArrayList<Refeicao> refeicoes) {
        this.refeicoes = refeicoes;
    }
    
    
}
