/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.dao.PerfilDAO;
import br.com.credru.model.Perfil;
import br.com.credru.model.TipoPerfil;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Soriano
 */
public class PerfilDAOMySQL extends Conexao implements PerfilDAO{

    @Override
    public boolean setPerfil(Perfil p) {
        boolean retorno;
        super.open();       
        try{
            String SQL = "INSERT INTO perfil (descricao, valor, tipoPerfil) VALUES" + "(?,?,?)";
            PreparedStatement ps = super.getConnection().prepareStatement(SQL);
            //Setando as variaveis
            ps.setString(1, p.getDescricao());
            ps.setFloat(2, p.getValor());
            ps.setInt(3, TipoPerfil.getCodigo(p.getTipo()));
            
            
            //Executando
            ps.executeUpdate();
            ps.close();
            retorno=true;
        }catch(SQLException e){
            e.printStackTrace();
            retorno=false;
            throw new RuntimeException("Falha ao cadastrar Perfil", e);
            
        }finally{
            super.close();
            
        } 
        return retorno;
    }

    @Override
    public Perfil getPerfil(TipoPerfil tipo) {
        Perfil p = new Perfil();
        super.open();
        try{
            String SQL = "SELECT * FROM perfil WHERE tipoPerfil=(?)";
            PreparedStatement ps = super.getConnection().prepareStatement(SQL);
            ps.setInt(1, TipoPerfil.getCodigo(tipo));
            ResultSet rs = ps.executeQuery(SQL);
            
            if(rs.next()){
                p.setDescricao(rs.getNString("descricao"));
                p.setValor(rs.getFloat("valor"));
                p.setTipo(tipo);
            }
            
        }catch(SQLException e){
            e.printStackTrace();
            throw new RuntimeException("Falha ao pegar perfil", e);
        }finally{
            super.close();
        }
        
        return p;
    }

    @Override
    public List<Perfil> getPerfil() {
        ArrayList <Perfil> p = new ArrayList <Perfil>();
        super.open();
        try{
            String SQL = "SELECT * FROM perfil";
            PreparedStatement ps = super.getConnection().prepareStatement(SQL);            
            ResultSet rs = ps.executeQuery(SQL);
            
            while(rs.next()){
                Perfil perfil = new Perfil();
                perfil.setDescricao(rs.getNString("descricao"));
                perfil.setValor(rs.getFloat("valor"));
                TipoPerfil tp = TipoPerfil.getTipoPerfil(rs.getInt("tipoPerfil"));
                perfil.setTipo(tp);
                p.add(perfil);
            }
            
        }catch(SQLException e){
            e.printStackTrace();
            throw new RuntimeException("Falha ao pegar perfil", e);
        }finally{
            super.close();
        }
        
        return p;
    }

    @Override
    public boolean editPerfil(Perfil p1, Perfil p2) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean removerPerfil(Perfil p) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
