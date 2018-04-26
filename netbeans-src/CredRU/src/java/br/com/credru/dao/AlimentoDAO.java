/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Alimento;
import java.util.ArrayList;

/**
 *
 * @author Soriano
 */
public class AlimentoDAO {
    private static ArrayList<Alimento> alimentos = new ArrayList<>();
    
    public AlimentoDAO(){
        
    }
    
    public static Alimento getAlimento(int id){
        for(Alimento a : alimentos){
            if(a.getId() == id){
                return a;
            }
        }
        return null;
    }
    
    public static ArrayList<Alimento> getAlimento(){
        return (ArrayList<Alimento>) alimentos.clone();
    }
    
    public static void setAlimento(Alimento ali){
        alimentos.add(ali);
    }
}
