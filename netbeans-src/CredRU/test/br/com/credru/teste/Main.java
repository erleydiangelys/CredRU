/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.teste;

import br.com.credru.dao.FabricaDAO;
import br.com.credru.dao.UsuarioDAO;
import br.com.credru.model.Usuario;


/**
 *
 * @author Soriano
 */
public class Main {
    public static void main(String[] args){
        UsuarioDAO dao = new FabricaDAO().getUsuario();
        
        Usuario u = new Usuario();
        u.setNome("Anderson");
        u.setUserName("ander");
        
        dao.setUsuario(u);
        
        Usuario temp = dao.getUsuario("ander");
        
        if(temp != null){
            System.out.println(temp.getNome());
        }
    }
}
