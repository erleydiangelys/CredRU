/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.comando.escaneador;

import br.com.credru.comando.Comando;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Soriano
 */
public class Escanear implements Comando{

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        try {
            if(request.getParameter("comprador") != null && request.getParameter("restaurante")!=null){
                //Comprador definido
                RequestDispatcher rd = request.getRequestDispatcher("scaneador/escanear_debitar.jsp");
                rd.forward(request, response);
            }
            else{
                RequestDispatcher rd = request.getRequestDispatcher("scaneador/escanear_buscar.jsp");
                rd.forward(request, response);
            }
            

        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }
    
}
