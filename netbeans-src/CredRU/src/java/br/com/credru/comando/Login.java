/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.comando;

import br.com.credru.dao.UsuarioDAO;
import br.com.credru.dao.UsuarioDAOList;
import br.com.credru.model.NivelAcesso;
import br.com.credru.model.Usuario;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Soriano
 */
public class Login implements Comando {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        
        try {
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);

        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }

    }

}
