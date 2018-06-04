/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.comando;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Soriano
 */
public class Sair implements Comando{

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.removeAttribute("usuario");
        
        try {
            response.sendRedirect("Visitante");
        } catch (IOException ex) {
            Logger.getLogger(Sair.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
