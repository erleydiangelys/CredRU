/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Alimento;
import java.util.List;

/**
 *
 * @author Soriano
 */
public interface AlimentoDAO {
    public boolean setAlimento(Alimento a);
    public Alimento getAlimento(String nome);
    public List<Alimento> getAlimento();
    public boolean editAlimento(Alimento a1, Alimento a2);
    public boolean removeAlimento(Alimento a);
    
}
