/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.dao.RestauranteDAO;
import br.com.credru.model.Restaurante;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Soriano
 */
public class RestauranteDAOList implements RestauranteDAO{
    
    private static List<Restaurante> restaurantes = new ArrayList<>();

    @Override
    public boolean setRestaurante(Restaurante r) {
        for(Restaurante temp : RestauranteDAOList.restaurantes){
            if(temp.getNome().equals(r.getNome())){
                return false;
            }
        }
        RestauranteDAOList.restaurantes.add(r);
        return true;
    }

    @Override
    public Restaurante getRestaurante(String nome) {
        for(Restaurante temp : RestauranteDAOList.restaurantes){
            if(temp.getNome().equals(nome)){
                return temp;
            }
        }
        return null;
    }

    @Override
    public List<Restaurante> getRestaurante() {
        return new ArrayList<>(RestauranteDAOList.restaurantes);
    }

    @Override
    public boolean editRestaurante(Restaurante r1, Restaurante r2) {
        if(r1.getNome().equals(r2.getNome()) || this.getRestaurante(r2.getNome()) != null){
            for(int i = 0; i < RestauranteDAOList.restaurantes.size(); i++){
                Restaurante temp = RestauranteDAOList.restaurantes.get(i);
                
                if(temp.getNome().equals(r1.getNome())){
                    RestauranteDAOList.restaurantes.set(i, r2);
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public boolean removeRestaurante(Restaurante r) {
        for(int i = 0; i < RestauranteDAOList.restaurantes.size(); i++){
            Restaurante temp = RestauranteDAOList.restaurantes.get(i);
            
            if(temp.getNome().equals(r.getNome())){
                RestauranteDAOList.restaurantes.remove(i);
                return true;
            }
        }
        return false;
    }
    
}
