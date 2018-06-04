/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Usuario;

/**
 *
 * @author Soriano
 */
public interface UsuarioDAO {
    public Usuario getUsuario(String username, String senha);
}
