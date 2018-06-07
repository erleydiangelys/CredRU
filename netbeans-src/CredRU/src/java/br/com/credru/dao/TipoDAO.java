/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

/**
 *
 * @author Soriano
 */
public enum TipoDAO {
    //Essa classe define o padrão de nomenclatura das fabricas
    LISTA("List"),
    MYSQL("MySQL");
    
    private final String descricao;
    
    private TipoDAO(String descricao){
        this.descricao = descricao;
    }
    
    public static String getDescricao(TipoDAO tp){
        return tp.descricao;
    }
}
