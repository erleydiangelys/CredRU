/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.comando.nutricionista;

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
public class CadastrarRefeicao implements Comando{

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        try {
            RequestDispatcher rd = request.getRequestDispatcher("nutricionista/cadastrar_refeicao.jsp");
            rd.forward(request, response);

        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }
    
}
