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
public enum NivelAcesso {
    ADMINISTRADOR(0),
    COMPRADOR(1),
    NUTRICIONISTA(2),
    ESCANEADOR(3);
    
    private final int codigo;

    private NivelAcesso(int codigo) {
        this.codigo = codigo;
    }
    
    public static int getCodigo(NivelAcesso nv){
        return nv.codigo;
    }
    
    public static NivelAcesso getNivelAcesso(int codigo) throws IllegalArgumentException{
        if(codigo == 0){
            return NivelAcesso.ADMINISTRADOR;
        }
        if(codigo == 1){
            return NivelAcesso.COMPRADOR;
        }
        if(codigo == 2){
            return NivelAcesso.NUTRICIONISTA;
        }
        if(codigo == 3){
            return NivelAcesso.ESCANEADOR;
        }
        
        throw new IllegalArgumentException();
    }
}
