/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.servlet;

import br.com.credru.comando.Comando;
import br.com.credru.comando.Login;
import br.com.credru.comando.PaginaNaoEncontrada;
import br.com.credru.comando.escaneador.Inicio;
import br.com.credru.model.NivelAcesso;
import br.com.credru.model.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Soriano
 */
public class Escaneador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Comando paginaRequisitada = new PaginaNaoEncontrada();

        try {
            
            Usuario user = null;
            user = (Usuario) request.getSession().getAttribute("usuario");
            
            if(user != null){
                if(NivelAcesso.getCodigo(user.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.ESCANEADOR)){
                    paginaRequisitada = (Comando)Class.forName("br.com.credru.comando.escaneador."+request.getParameter("comando")).newInstance();
                }
                else{
                    if(NivelAcesso.getCodigo(user.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.COMPRADOR)){
                        paginaRequisitada = (Comando)Class.forName("br.com.credru.comando.comprador.Inicio").newInstance();
                    }
                    
                    if(NivelAcesso.getCodigo(user.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.ADMINISTRADOR)){
                        paginaRequisitada = (Comando)Class.forName("br.com.credru.comando.administrador.Inicio").newInstance();
                    }
                    
                    if(NivelAcesso.getCodigo(user.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.ADMINISTRADOR)){
                        paginaRequisitada = (Comando)Class.forName("br.com.credru.comando.administrador.Inicio").newInstance();
                    }
                }
                
                if(paginaRequisitada instanceof Login){
                    paginaRequisitada = new Inicio();
                }
            }
            else{
                paginaRequisitada = new Login();
            }
            

        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {

            paginaRequisitada.execute(request, response);

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
