/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.controller;

import br.com.credru.dao.AlimentoDAO;
import br.com.credru.dao.FabricaDAO;
import br.com.credru.dao.RefeicaoDAO;
import br.com.credru.dao.RestauranteDAO;
import br.com.credru.dao.UsuarioDAO;
import br.com.credru.model.LocalDate;
import br.com.credru.model.Periodo;
import br.com.credru.model.Refeicao;

/**
 *
 * @author Eduardo
 */
public class Visualizar {
    private static RefeicaoDAO refdao = new FabricaDAO().getRefeicao();
    
    public static Refeicao getRefeicao( LocalDate data, Periodo per){
        Refeicao res = refdao.getRefeicao(data, per);
        return res;
    }
}
