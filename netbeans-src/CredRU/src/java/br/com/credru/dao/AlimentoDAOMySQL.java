/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.dao.AlimentoDAO;
import br.com.credru.model.Alimento;
import br.com.credru.model.Categoria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author Soriano
 */
public class AlimentoDAOMySQL extends Conexao implements AlimentoDAO{
     
    @Override
    public boolean setAlimento(Alimento a) {
        boolean retorno;     
        try{
            String SQL = "INSERT INTO alimento (nome, gramas, valorCalorico,carboidrato,proteina,lipidios,obervacao,categoria) VALUES" + "(?,?,?,?,?,?)";
            PreparedStatement ps = super.getConnection().prepareStatement(SQL);
            //Setando as variaveis
            ps.setString(1, a.getNome());
            ps.setFloat(2, a.getGramas());
            ps.setFloat(3, a.getValorCalorico());
            ps.setFloat(4, a.getCarboidratos());
            ps.setFloat(5, a.getProteinas());
            ps.setFloat(6, a.getLipidios());
            ps.setString(7, a.getObservacao());
            ps.setInt(8, Categoria.getCodigo(a.getCategoria()));
            
            //Executando
            ps.executeUpdate();
            ps.close();
            retorno=true;
        }catch(SQLException e){
            e.printStackTrace();
            retorno=false;
            throw new RuntimeException("Falha ao cadastrar aliemnto", e);
        }finally{
            super.close();
            
        } 
        return retorno;
    }

    @Override
    public Alimento getAlimento(String nome) {
        Alimento a = new Alimento ();        
        try{
        String SQL = "SELECT * FROM alimento WHERE nome like (?)";        
            PreparedStatement ps = super.getConnection().prepareStatement(SQL);
            ps.setString(1, '%' + nome + '%');            
            ps.close();
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                a.setNome(rs.getString("nome"));
                a.setGramas(rs.getFloat("gramas"));
                a.setValorCalorico(rs.getFloat("valorCalorico"));
                a.setCarboidratos(rs.getFloat("carboidrato"));
                a.setProteinas(rs.getFloat("proteinas"));
                a.setLipidios(rs.getFloat("lipidios"));
                a.setObservacao(rs.getString("obervacao"));
                a.setCategoria(Categoria.getCategoria(rs.getInt("categoria")));
            }
                       
        }catch (SQLException e){
            e.printStackTrace();
        }finally{
            super.close();
            
        } 
        return a;
    }

    @Override
    public List<Alimento> getAlimento() {
        ArrayList <Alimento> a = new ArrayList <Alimento>();
        
        try{
            String SQL = "SELECT * FROM alimento";
 
            PreparedStatement ps = super.getConnection().prepareStatement(SQL);                    
            ResultSet rs = ps.executeQuery();
            ps.close();
            while(rs.next()){
                Alimento alimento =new Alimento();
                alimento.setNome(rs.getString("nome"));
                alimento.setGramas(rs.getFloat("gramas"));
                alimento.setValorCalorico(rs.getFloat("valorCalorico"));
                alimento.setCarboidratos(rs.getFloat("carboidrato"));
                alimento.setProteinas(rs.getFloat("proteinas"));
                alimento.setLipidios(rs.getFloat("lipidios"));
                alimento.setObservacao(rs.getString("obervacao"));
                alimento.setCategoria(Categoria.getCategoria(rs.getInt("categoria")));
                a.add(alimento);
            }
                       
        }catch (SQLException e){
            e.printStackTrace();
        }finally{
            super.close();       
        
        }
            return a;
    }

    @Override
    public boolean editAlimento(Alimento a1, Alimento a2) {
        boolean certo = false;
        
        try{
            String SQL = "UPDATE alimento SET  (nome, gramas, valorCalorico,carboidrato,proteina,lipidios,obervacao,categoria) VALUES" + "(?,?,?,?,?,?)"
                    + " WHERE (nome, gramas, valorCalorico,carboidrato,proteina,lipidios,obervacao,categoria) VALUES" +"(?,?,?,?,?,?)";
            PreparedStatement ps = super.getConnection().prepareStatement(SQL);
            //Setando as variaveis
            ps.setString(1, a2.getNome());
            ps.setFloat(2, a2.getGramas());
            ps.setFloat(3, a2.getValorCalorico());
            ps.setFloat(4, a2.getCarboidratos());
            ps.setFloat(5, a2.getProteinas());
            ps.setFloat(6, a2.getLipidios());
            ps.setString(7, a2.getObservacao());
            ps.setInt(8, Categoria.getCodigo(a2.getCategoria()));
            //Variaveis do where
            ps.setString(9, a1.getNome());
            ps.setFloat(10, a1.getGramas());
            ps.setFloat(11, a1.getValorCalorico());
            ps.setFloat(12, a1.getCarboidratos());
            ps.setFloat(13, a1.getProteinas());
            ps.setFloat(14, a1.getLipidios());
            ps.setString(15, a1.getObservacao());
            ps.setInt(16, Categoria.getCodigo(a1.getCategoria()));
            
            ps.executeUpdate();
            ps.close();            
            certo =true;
        }catch (SQLException e){            
            e.printStackTrace();
        }finally{
            super.close();
           
        }
         return certo;
    }

    @Override
    public boolean removeAlimento(Alimento a) {
        boolean retorno;
        
        try{
            String SQL = "DELETE FROM alimento"
                    + " WHERE  (nome, gramas, valorCalorico,carboidrato,proteina,lipidios,obervacao,categoria) VALUES" + "(?,?,?,?,?,?)";
            PreparedStatement ps = super.getConnection().prepareStatement(SQL);
            //Setando as variaveis
            ps.setString(1, a.getNome());
            ps.setFloat(2, a.getGramas());
            ps.setFloat(3, a.getValorCalorico());
            ps.setFloat(4, a.getCarboidratos());
            ps.setFloat(5, a.getProteinas());
            ps.setFloat(6, a.getLipidios());
            ps.setString(7, a.getObservacao());
            ps.setInt(8, Categoria.getCodigo(a.getCategoria()));
            
            //Executando
            ps.executeUpdate();
            ps.close();
            retorno=true;
        }catch(SQLException e){
            e.printStackTrace();
            retorno=false;
            throw new RuntimeException("Falha ao apagar aliemnto", e);
        }finally{
            super.close();
            
        }
        return retorno;
    }
       
   
}
