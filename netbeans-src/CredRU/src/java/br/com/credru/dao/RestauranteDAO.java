/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Restaurante;
import java.util.List;

/**
 *
 * @author Soriano
 */
public interface RestauranteDAO {
    public boolean setRestaurante(Restaurante r);
    public Restaurante getRestaurante(String nome);
    public List<Restaurante> getRestaurante();
    public boolean editRestaurante(Restaurante r1, Restaurante r2);
    public boolean removeRestaurante(Restaurante r);
}
