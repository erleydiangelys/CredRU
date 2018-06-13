/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.LocalDate;
import br.com.credru.model.LocalTime;
import br.com.credru.model.Transacao;
import java.util.List;


/**
 *
 * @author Soriano
 */
public interface TransacaoDAO {
    public boolean setTransacao(Transacao t);
    public Transacao getTransacao(LocalDate data, LocalTime tempo);
    public List<Transacao> getTransacao();
    public boolean editTransacao(Transacao t1, Transacao t2);
    public boolean removeTransacao(Transacao t);
}
