/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Usuario;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Soriano
 */
public class UsuarioDAOList implements UsuarioDAO{

    private static List<Usuario> usuarios = new ArrayList<Usuario>();
    
    @Override
    public Usuario getUsuario(String username, String senha) {
        for(Usuario u : UsuarioDAOList.usuarios){
            if(u.getUserName().equals(username) && u.getSenha().equals(senha)){
                return u;
            }
        }
        return null;
    }
    
}
