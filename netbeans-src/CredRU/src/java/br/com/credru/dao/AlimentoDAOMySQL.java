/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Alimento;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Soriano
 */
public class AlimentoDAOMySQL extends Conexao implements AlimentoDAO{
    
    public void Cadastrar(Alimento a){
        super.open();
        try{
            String SQL = "INSERT INTO modulo (titulo, url, imagem) VALUES" + "(?,?,?)";
            PreparedStatement ps = super.getConnection().prepareStatement(SQL);
            
            ps.executeUpdate();
            ps.close();
            
        }catch(SQLException e){
            e.printStackTrace();
            throw new RuntimeException("Falha ao cadastrar aliemnto", e);
        }finally{
            super.close();
        }
        
    }


}
