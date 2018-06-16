/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Horario;
import br.com.credru.model.LocalDate;
import br.com.credru.model.Refeicao;
import java.util.List;

/**
 *
 * @author Soriano
 */
public interface RefeicaoDAO {
    public boolean setRefeicao(Refeicao r);
    public Refeicao getRefeicao(LocalDate data, Horario horario);
    public List<Refeicao> getRefeicao();
    public List<Refeicao> getRefeicao(LocalDate data);
    public boolean editRefeicao(Refeicao r1, Refeicao r2);
    public boolean removeRefeicao(Refeicao r);
}
