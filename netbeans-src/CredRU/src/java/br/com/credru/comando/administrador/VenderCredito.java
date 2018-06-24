/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.comando.administrador;

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
public class VenderCredito implements Comando{

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        try {
            if(request.getParameter("userComprador") != null && request.getParameter("restaurante") != null){
                //Criar a transacao
                RequestDispatcher d = request.getRequestDispatcher("administrador/venda_credito_qtd.jsp");
                d.forward(request,response);
            }
            else{
                //buscar o comprador
                RequestDispatcher d = request.getRequestDispatcher("administrador/venda_credito_buscar.jsp");
                d.forward(request,response);
            }
            
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }
    
}
