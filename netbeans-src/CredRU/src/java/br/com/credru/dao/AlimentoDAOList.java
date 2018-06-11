/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Alimento;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Soriano
 */
public class AlimentoDAOList implements AlimentoDAO{
    public static List<Alimento> alimentos = new ArrayList<>();
    
    @Override
    public boolean setAlimento() {
        
    }

    @Override
    public Alimento getAlimento(String nome) {
        
    }

    @Override
    public boolean editAlimento(Alimento a1, Alimento a2) {
        
    }

    @Override
    public boolean removeAlimento(Alimento a) {
        
    }
    
}
