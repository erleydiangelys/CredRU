/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

/**
 *
 * @author Soriano
 */
public interface FabricaDAOInterface {  
    
    public AlimentoDAO getAlimento();
    public PerfilDAO getPerfil();
    public RefeicaoDAO getRefeicao();
    public RestauranteDAO getRestaurante();
    public TransacaoDAO getTransacao();
    public UsuarioDAO getUsuario();
    
}
