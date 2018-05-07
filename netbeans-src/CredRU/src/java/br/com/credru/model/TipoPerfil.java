/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.model;

/**
 *
 * @author Soriano
 */
public enum TipoPerfil {
    PROFESSOR(1),
    SERVIDOR(2),
    RESIDENTE(3),
    ALUNO(4),
    ISENTO(5),
    ALTORIZADO(6);
    
    private final int id;

    private TipoPerfil(int id) {
        this.id = id;
    }
    
    public static TipoPerfil getTipoComprador(int id){
        if(id < 1 || id > 6){
            throw new IllegalArgumentException("O id passado não corresponde a nenhum Tipo de Perfil");
        }
        
        for(TipoPerfil tt : TipoPerfil.values()){
            if(tt.id == id){
                return tt;
            }
        }
        
        return null;//Nunca chegrá a esse ponto
    }
    
    public static int getId(TipoPerfil tt){
        return tt.id;
    }
}
