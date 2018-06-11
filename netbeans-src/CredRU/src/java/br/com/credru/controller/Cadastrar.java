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
public class Cadastrar {
    private static UsuarioDAO usudao = new FabricaDAO().getUsuario();
    private static AlimentoDAO alidao = new FabricaDAO().getAlimento();
    private static RefeicaoDAO refdao = new FabricaDAO().getRefeicao();
    private static RestauranteDAO resdao = new FabricaDAO().getRestaurante();
    
    public static boolean cadastarUsuario ( Usuario u){
        return usudao.setUsuario(u);
    }
    public static boolean cadastrarAlimento ( Alimento al){
        return alidao.setAlimento(al);
    }
    public static boolean cadastrarRestaurante ( Restaurante res){
        return resdao.setRestaurante(res);
    }
    public static boolean cadastrarRefeicao ( Refeicao ref){
        return refdao.setRefeicao(ref);
    }
}
