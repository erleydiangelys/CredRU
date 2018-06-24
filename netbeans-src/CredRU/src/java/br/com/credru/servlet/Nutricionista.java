/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.servlet;

import br.com.credru.comando.Comando;
import br.com.credru.comando.Login;
import br.com.credru.comando.PaginaNaoEncontrada;
import br.com.credru.comando.nutricionista.Inicio;
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
public class Nutricionista extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Comando comando = new PaginaNaoEncontrada();

        try {
            Usuario user = null;
            user = (Usuario) request.getSession().getAttribute("usuario");
            
            if(user != null){
                if(NivelAcesso.getCodigo(user.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.NUTRICIONISTA)){
                    comando = (Comando)Class.forName("br.com.credru.comando.nutricionista."+request.getParameter("comando")).newInstance();
                }
                else{
                    if(NivelAcesso.getCodigo(user.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.COMPRADOR)){
                        comando = (Comando)Class.forName("br.com.credru.comando.comprador.Inicio").newInstance();
                    }
                    
                    if(NivelAcesso.getCodigo(user.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.ESCANEADOR)){
                        comando = (Comando)Class.forName("br.com.credru.comando.escaneador.Inicio").newInstance();
                    }
                    
                    if(NivelAcesso.getCodigo(user.getNivelAcesso()) == NivelAcesso.getCodigo(NivelAcesso.ADMINISTRADOR)){
                        comando = (Comando)Class.forName("br.com.credru.comando.administrador.Inicio").newInstance();
                    }
                }
                
                if(comando instanceof Login){
                    comando = new Inicio();
                }
            }
            else{
                comando = new Login();
            }
            
        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {

            comando.execute(request, response);

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
        return "Controlador das páginas relacionadas a administradora";
    }

}
