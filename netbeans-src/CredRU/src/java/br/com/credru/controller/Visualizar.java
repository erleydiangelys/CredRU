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
import br.com.credru.model.Horario;
import br.com.credru.model.LocalDate;
import br.com.credru.model.LocalTime;
import br.com.credru.model.Perfil;
import br.com.credru.model.Refeicao;
import br.com.credru.model.Restaurante;
import br.com.credru.model.TipoPerfil;
import br.com.credru.model.Transacao;
import br.com.credru.model.Usuario;
import java.util.List;

/**
 *
 * @author Eduardo
 */
public class Visualizar {
    private static final UsuarioDAO usudao = new FabricaDAO().getUsuario();
    private static final AlimentoDAO alidao = new FabricaDAO().getAlimento();
    private static final RefeicaoDAO refdao = new FabricaDAO().getRefeicao();
    private static final RestauranteDAO resdao = new FabricaDAO().getRestaurante();
    private static final PerfilDAO perdao = new FabricaDAO().getPerfil();
    private static final TransacaoDAO tradao = new FabricaDAO().getTransacao();
    
    
    public static Usuario getUsuario(String username){
        return usudao.getUsuario(username);
    }
    public static Usuario getUsuario( String username, String senha){
        return usudao.getUsuario(username, senha);
    }
    public static List<Usuario> getUsuario(){
        return usudao.getUsuario();
    }
    
    public static Alimento getAlimento (String nome){
        return alidao.getAlimento(nome);
    }
    public static List<Alimento> getAlimento(){
        return alidao.getAlimento();
    }
    
    public static Refeicao getRefeicao( LocalDate ld, Horario h){
        return refdao.getRefeicao( ld, h);
    }
    public static List<Refeicao> getRefeicao(LocalDate data){
        return refdao.getRefeicao(data);
    }
    public static List<Refeicao> getRefeicao(){
        return refdao.getRefeicao();
    }
    
    public static Restaurante getRestaurante( String nome){
        return resdao.getRestaurante(nome);
    }
    public static List<Restaurante> getRestaurante(){
        return resdao.getRestaurante();
    }
    
    public static Perfil getPerfil(Perfil p){
        return perdao.getPerfil(p.getTipo());
    }
    public static Perfil getPerfil ( TipoPerfil tp){
        return perdao.getPerfil(tp);
    }
    public static List<Perfil> getPerfil(){
        return perdao.getPerfil();
    }
    
    public static Transacao getTransacao(LocalDate data, LocalTime tempo){
        return tradao.getTransacao(data, tempo);
    }
    public static List<Transacao> getTransacao(){
        return tradao.getTransacao();
    }
}
