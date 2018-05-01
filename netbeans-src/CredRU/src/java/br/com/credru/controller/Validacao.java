/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.controller;
import br.com.credru.model.Usuario;
import br.com.credru.dao.UsuarioDAO;

/**
 *
 * @author Soriano
 */
public class Validacao {
    public static Usuario autenticar(String username, String senha){
        return UsuarioDAO.getUsuario(username, senha);
    }
}
