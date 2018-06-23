/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.dao.UsuarioDAO;
import br.com.credru.model.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Soriano
 */
public class UsuarioDAOMySQL extends Conexao implements UsuarioDAO{

    @Override
    public Usuario getUsuario(String username, String senha) {
        Usuario u = new Usuario();
        try{
        String SQL = "SELECT * FROM alimento WHERE nome = (?) AND senha = (?)";        
            PreparedStatement ps = super.getConnection().prepareStatement(SQL);
            ps.setString(1,username);            
            ps.setString(2,senha);
            ps.close();
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                u.setNome(rs.getNString("nome"));
                u.setUserName(rs.getNString("username"));
                u.setCredito(rs.getInt("credito"));
                u.setAtivo(rs.getBoolean("ativo"));
                
                
            }
                       
        }catch (SQLException e){
            e.printStackTrace();
        }finally{
            super.close();
            
        }
        return u;
    }

    @Override
    public boolean setUsuario(Usuario user) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Usuario getUsuario(String username) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean editUsuario(Usuario u1, Usuario u2) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean removeUsuario(Usuario user) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Usuario> getUsuario() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
