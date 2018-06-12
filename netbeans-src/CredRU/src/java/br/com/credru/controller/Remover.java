/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.controller;

import br.com.credru.dao.AlimentoDAO;
import br.com.credru.dao.FabricaDAO;
import br.com.credru.dao.PerfilDAO;
import br.com.credru.dao.RefeicaoDAO;
import br.com.credru.dao.RestauranteDAO;
import br.com.credru.dao.TransacaoDAO;
import br.com.credru.dao.UsuarioDAO;
import br.com.credru.model.Alimento;
import br.com.credru.model.Perfil;
import br.com.credru.model.Refeicao;
import br.com.credru.model.Restaurante;
import br.com.credru.model.Transacao;
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
    private static PerfilDAO perdao = new FabricaDAO().getPerfil();
    private static TransacaoDAO tradao = new FabricaDAO().getTransacao();
    
    public static boolean removerUsuario(Usuario u){
        return usudao.removeUsuario(u);
    }
    public static boolean removerAlimento(Alimento al){
        return alidao.removeAlimento(al);
    }
    public static boolean removerRefeicao(Refeicao r){
        return refdao.removeRefeicao(r);
    }
    public static boolean removerRestaurante(Restaurante r){
        return resdao.removeRestaurante(r);
    }
    public static boolean removerPerfil ( Perfil p){
        return perdao.removerPerfil(p);
    }
    public static boolean removerTransacao ( Transacao t){
        return tradao.removeTransacao(t);
    }
}
