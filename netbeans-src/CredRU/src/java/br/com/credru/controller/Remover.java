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
import br.com.credru.model.Alimento;
import br.com.credru.model.Refeicao;
import br.com.credru.model.Restaurante;
import br.com.credru.model.Usuario;

/**
 *
 * @author Eduardo
 */
public class Remover {
    private static UsuarioDAO usudao = new FabricaDAO().getUsuario();
    private static AlimentoDAO alidao = new FabricaDAO().getAlimento();
    private static RefeicaoDAO refdao = new FabricaDAO().getRefeicao();
    private static RestauranteDAO resdao = new FabricaDAO().getRestaurante();
    
    public static boolean removerUsuario(Usuario u){
        if (usudao.removeUsuario(u)){
            return true;
        }
        return false;
    }
    public static boolean removerAlimento(Alimento al){
        if (alidao.removeAlimento(al)){
            return true;
        }
        return false;
    }
    public static boolean removerRefeicao(Refeicao r){
        if (refdao.removeRefeicao(r)){
            return true;
        }
        return false;
    }
    public static boolean removerRestaurante(Restaurante r){
        if (resdao.removeRestaurante(r)){
            return true;
        }
        return false;
    }
}
