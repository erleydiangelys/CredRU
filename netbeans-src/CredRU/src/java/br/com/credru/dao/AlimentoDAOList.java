/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.dao.AlimentoDAO;
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
    public boolean setAlimento(Alimento a) {
        for(Alimento temp : AlimentoDAOList.alimentos){
            if(temp.getNome().equals(a.getNome())){
                return false;
            }
        }
        AlimentoDAOList.alimentos.add(a);
        return true;
    }

    @Override
    public Alimento getAlimento(String nome) {
        for(Alimento a: AlimentoDAOList.alimentos){
            if(a.getNome().equals(nome)){
                return a;
            }
        }
        return null;
    }

    @Override
    public List<Alimento> getAlimento() {
        return new ArrayList<>(AlimentoDAOList.alimentos);
    }

    @Override
    public boolean editAlimento(Alimento a1, Alimento a2) {
        if(a1.getNome().equals(a2.getNome()) || this.getAlimento(a2.getNome()) == null){
            
            for(int i = 0; i < AlimentoDAOList.alimentos.size(); i++){
                Alimento temp = AlimentoDAOList.alimentos.get(i);
                
                if(temp.getNome().equals(a1.getNome())){
                    AlimentoDAOList.alimentos.set(i, a2);
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public boolean removeAlimento(Alimento a) {
        for(int i = 0; i < AlimentoDAOList.alimentos.size(); i++){
            Alimento temp = AlimentoDAOList.alimentos.get(i);
            if(temp.getNome().equals(a.getNome())){
                AlimentoDAOList.alimentos.remove(i);
                return true;
            }
        }
        return false;
    }
    
    
}
