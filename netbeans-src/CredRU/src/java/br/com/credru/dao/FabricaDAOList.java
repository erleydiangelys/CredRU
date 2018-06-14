/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.dao.AlimentoDAO;
import br.com.credru.dao.FabricaDAOInterface;
import br.com.credru.dao.PerfilDAO;
import br.com.credru.dao.RefeicaoDAO;
import br.com.credru.dao.RestauranteDAO;
import br.com.credru.dao.TransacaoDAO;
import br.com.credru.dao.UsuarioDAO;

/**
 *
 * @author Soriano
 */
public class FabricaDAOList implements FabricaDAOInterface{

    @Override
    public AlimentoDAO getAlimento() {
        return new AlimentoDAOList();
    }

    @Override
    public PerfilDAO getPerfil() {
        return new PerfilDAOList();
    }

    @Override
    public RefeicaoDAO getRefeicao() {
        return new RefeicaoDAOList();
    }

    @Override
    public RestauranteDAO getRestaurante() {
        return new RestauranteDAOList();
    }

    @Override
    public TransacaoDAO getTransacao() {
        return new TransacaoDAOList();
    }

    @Override
    public UsuarioDAO getUsuario() {
        return new UsuarioDAOList();
    }
    
}
