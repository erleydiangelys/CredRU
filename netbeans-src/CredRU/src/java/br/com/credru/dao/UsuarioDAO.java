/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Usuario;
import java.util.List;

/**
 *
 * @author Soriano
 */
public interface UsuarioDAO {
    public boolean setUsuario(Usuario user);
    public Usuario getUsuario(String username);
    public Usuario getUsuario(String username, String senha);
    public List<Usuario> getUsuario();
    public boolean editUsuario(Usuario u1, Usuario u2);
    public boolean removeUsuario(Usuario user);
}
