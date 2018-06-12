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
public class Alterar {
    private static UsuarioDAO usudao = new FabricaDAO().getUsuario();
    private static AlimentoDAO alidao = new FabricaDAO().getAlimento();
    private static RefeicaoDAO refdao = new FabricaDAO().getRefeicao();
    private static RestauranteDAO resdao = new FabricaDAO().getRestaurante();
    private static PerfilDAO perdao = new FabricaDAO().getPerfil();
    private static TransacaoDAO tradao = new FabricaDAO().getTransacao();
    
    private static boolean alterarUsuario(Usuario u1, Usuario u2){
        return usudao.editUsuario(u1, u2);
    }
    private static boolean alterarAlimento( Alimento a1, Alimento a2){
        return alidao.editAlimento(a1,a2);
    }
    private static boolean alterarRefeicao(Refeicao r1, Refeicao r2){
        return refdao.editRefeicao(r1, r2);
    }
    private static boolean alterarRestaurante( Restaurante r1, Restaurante r2){
        return resdao.editRestaurante(r1, r2);
    }
    public static boolean alterarPerfil ( Perfil p1, Perfil p2){
        return perdao.editPerfil(p1, p2);
    }
    public static boolean alterarTransacao ( Transacao t1, Transacao t2){
        return tradao.editTransacao(t1, t2);
    }
    
}
