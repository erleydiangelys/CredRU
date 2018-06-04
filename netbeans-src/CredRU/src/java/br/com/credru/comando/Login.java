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

        if (request.getParameter("username") != null && request.getParameter("senha") != null) {
            String username = request.getParameter("username");
            String senha = request.getParameter("senha");

            UsuarioDAO dao = new UsuarioDAOList();
            Usuario user = null;

            user = dao.getUsuario(username, senha);

            if (user != null) {
                //Usuário Encontrado
                HttpSession session = request.getSession();
                session.setAttribute("usuario", user);

                if (user.getNivelAcesso() == NivelAcesso.ADMINISTRADOR) {
                    try {
                        response.sendRedirect("Administrador?comando=Inicio");

                    } catch (IOException ex) {
                        Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }

                if (user.getNivelAcesso() == NivelAcesso.COMPRADOR) {
                    try {
                        response.sendRedirect("Comprador?comando=Inicio");
                    } catch (IOException ex) {
                        Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }

                if (user.getNivelAcesso() == NivelAcesso.ESCANEADOR) {
                    try {
                        response.sendRedirect("Escaneador?comando=Inicio");
                    } catch (IOException ex) {
                        Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }

                if (user.getNivelAcesso() == NivelAcesso.NUTRICIONISTA) {
                    try {
                        response.sendRedirect("Nutricionista?comando=Inicio");
                    } catch (IOException ex) {
                        Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }

            } else {
                //Usuário não encontrado
                request.setAttribute("errou", true);
            }

        } else {
            try {
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);

            } catch (IOException | ServletException e) {
                e.printStackTrace();
            }
        }

    }

}
