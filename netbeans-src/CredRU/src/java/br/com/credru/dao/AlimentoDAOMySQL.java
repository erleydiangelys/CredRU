/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.dao.AlimentoDAO;
import br.com.credru.model.Alimento;
import br.com.credru.model.Categoria;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


/**
 *
 * @author Soriano
 */
public class AlimentoDAOMySQL extends Conexao implements AlimentoDAO{
      
    @Override
    public boolean setAlimento(Alimento a) {
        super.open();
        boolean retorno=false;
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
            throw new RuntimeException("Falha ao cadastrar aliemnto", e);
        }finally{
            super.close();
            return retorno;
        } 
    }

    @Override
    public Alimento getAlimento(String nome) {
        Alimento a = new Alimento ();
        
        String SQL = "SELECT * FROM alimento WHERE nome like (?)";
        try{
            PreparedStatement ps = super.getConnection().prepareStatement(SQL);
            ps.setString(1, '%' + nome + '%');
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                a.setNome(rs.getNString("nome"));
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean editAlimento(Alimento a1, Alimento a2) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean removeAlimento(Alimento a) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
   
}
