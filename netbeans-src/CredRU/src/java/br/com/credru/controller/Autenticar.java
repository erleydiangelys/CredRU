/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.controller;

import br.com.credru.dao.FabricaDAO;
import br.com.credru.dao.UsuarioDAO;
import br.com.credru.model.Usuario;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Eduardo
 */
public class Autenticar {
    private static UsuarioDAO dao = new FabricaDAO().getUsuario();
    
    public static boolean autenticar( HttpSession session, String user, String senha){
        Usuario u = dao.getUsuario(user, senha);
        if(u == null){
            return false;
        }
        session.setAttribute("usuario", u);
        return true;
    }
    public static void finalizar( HttpSession session){
        session.removeAttribute("usuario");

    }
}
