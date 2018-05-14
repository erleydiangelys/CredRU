/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.comando;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Soriano
 */
public class NaoEncontrado implements Comando{

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        try {
            RequestDispatcher d = request.getRequestDispatcher("paginaNaoEncontrada.jsp");
            d.forward(request,response);
            
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }
    
}
