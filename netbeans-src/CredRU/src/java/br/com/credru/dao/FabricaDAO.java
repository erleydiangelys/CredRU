/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Soriano
 */
public class FabricaDAO implements FabricaDAOInterface{
    private static TipoDAO tipo = TipoDAO.LISTA;

    public FabricaDAO() {

    }

    public static TipoDAO getTipo() {
        return tipo;
    }

    public static void setTipo(TipoDAO tipo) {
        FabricaDAO.tipo = tipo;
    }

    @Override
    public AlimentoDAO getAlimento() {
        AlimentoDAO dao = null;
        
        try {
            dao = (AlimentoDAO) Class.forName("br.com.credru.dao.AlimentoDAO"+TipoDAO.getDescricao(FabricaDAO.tipo)).newInstance();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return dao;
    }

    @Override
    public PerfilDAO getPerfil() {
        PerfilDAO dao = null;
        
        try {
            dao = (PerfilDAO) Class.forName("br.com.credru.dao.PerfilDAO"+TipoDAO.getDescricao(FabricaDAO.tipo)).newInstance();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return dao;
    }

    @Override
    public RefeicaoDAO getRefeicao() {
        RefeicaoDAO dao = null;
        
        try {
            dao = (RefeicaoDAO) Class.forName("br.com.credru.dao.RefeicaoDAO"+TipoDAO.getDescricao(FabricaDAO.tipo)).newInstance();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return dao;
    }

    @Override
    public RestauranteDAO getRestaurante() {
        RestauranteDAO dao = null;
        
        try {
            dao = (RestauranteDAO) Class.forName("br.com.credru.dao.RestauranteDAO"+TipoDAO.getDescricao(FabricaDAO.tipo)).newInstance();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return dao;
    }

    @Override
    public TransacaoDAO getTransacao() {
        TransacaoDAO dao = null;
        
        try {
            dao = (TransacaoDAO) Class.forName("br.com.credru.dao.TransacaoDAO"+TipoDAO.getDescricao(FabricaDAO.tipo)).newInstance();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return dao;
    }

    @Override
    public UsuarioDAO getUsuario() {
        UsuarioDAO dao = null;
        
        try {
            dao = (UsuarioDAO) Class.forName("br.com.credru.dao.UsuarioDAO"+TipoDAO.getDescricao(FabricaDAO.tipo)).newInstance();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(FabricaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return dao;
    }
    
}
