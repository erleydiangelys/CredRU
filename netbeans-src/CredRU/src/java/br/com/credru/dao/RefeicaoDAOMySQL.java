/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Horario;
import br.com.credru.model.LocalDate;
import br.com.credru.model.Refeicao;
import br.com.credru.model.Restaurante;
import java.util.List;

/**
 *
 * @author Soriano
 */
public class RefeicaoDAOMySQL implements RefeicaoDAO{

    @Override
    public boolean setRefeicao(Refeicao r) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Refeicao getRefeicao(LocalDate data, Horario horario, Restaurante rest) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Refeicao> getRefeicao() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Refeicao> getRefeicao(LocalDate data, Restaurante rest) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean editRefeicao(Refeicao r1, Refeicao r2) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean removeRefeicao(Refeicao r) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Refeicao> getRefeicao(Restaurante rest) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
