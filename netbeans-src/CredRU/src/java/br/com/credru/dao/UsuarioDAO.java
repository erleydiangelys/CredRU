/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Usuario;
import java.util.ArrayList;

/**
 *
 * @author Soriano
 */
public class UsuarioDAO {
    ArrayList<Usuario> usuarios;
    
    public UsuarioDAO(){
        usuarios = new ArrayList<>();
    }
    
    public Usuario getUsuario(String username){
        for(Usuario u : usuarios){
            if(u.getUser().equals(username)){
                return u;
            }
        }
        return null;
    }
    
    public ArrayList<Usuario> getUsuario(){
        return (ArrayList<Usuario>) usuarios.clone();
    }
}
