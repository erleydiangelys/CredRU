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
    ALUNO(1),
    PROFESSOR(2),
    SERVIDOR(3),
    RESIDENTE(4),
    ISENTO(5),
    AUTORIZADO(6);
    
    private final int codigo;

    private TipoPerfil(int codigo) {
        this.codigo = codigo;
    }
    
    public static int getCodigo(TipoPerfil t){
        return t.codigo;
    }
    
    public static TipoPerfil getTipoPerfil(int codigo) throws IllegalArgumentException{
        if(codigo == 1){
            return TipoPerfil.ALUNO;
        }
        
        if(codigo == 2){
            return TipoPerfil.PROFESSOR;
        }
        
        if(codigo == 3){
            return TipoPerfil.SERVIDOR;
        }
        
        if(codigo == 4){
            return TipoPerfil.RESIDENTE;
        }
        
        if(codigo == 5){
            return TipoPerfil.ISENTO;
        }
        
        if(codigo == 6){
            return TipoPerfil.AUTORIZADO;
        }
        
        throw new IllegalArgumentException();
    }
}
