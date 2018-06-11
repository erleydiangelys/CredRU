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

    @Override
    public boolean setUsuario(Usuario user) {
        for(Usuario u : usuarios){
            if(u.getUserName().equals(user.getUserName())){
                return false;
            }
        }
        
        UsuarioDAOList.usuarios.add(user);
        return true;
    }

    @Override
    public Usuario getUsuario(String username) {
        for(Usuario u : usuarios){
            if(u.getUserName().equals(username)){
                return u;
            }
        }
        return null;
    }

    @Override
    public boolean editUsuario(Usuario u1, Usuario u2) {
        if (u1.getUserName().equals(u2.getUserName()) || (this.getUsuario(u2.getUserName())==null)){
            for(int i = 0; i < UsuarioDAOList.usuarios.size(); i++){
                Usuario temp = UsuarioDAOList.usuarios.get(i);

                if(temp.getUserName().equals(u1.getUserName())){
                    UsuarioDAOList.usuarios.set(i, u2);
                    return true;
                }
            }
        }
        return false;
        
    }

    @Override
    public boolean removeUsuario(Usuario user) {
        for(int i = 0; i < UsuarioDAOList.usuarios.size(); i++){
            Usuario temp = UsuarioDAOList.usuarios.get(i);
            
            if(temp.getUserName().equals(user.getUserName())){
                UsuarioDAOList.usuarios.remove(i);
                return true;
            }
        }
        return false;
    }

    @Override
    public List<Usuario> getUsuario() {
        return UsuarioDAOList.usuarios;
    }
    
}
