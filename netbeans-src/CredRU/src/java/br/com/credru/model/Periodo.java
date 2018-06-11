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
public enum Periodo {
    MANHA(1),
    TARDE(2),
    NOITE(3);
    
    private final int codigo;

    private Periodo(int codigo) {
        this.codigo = codigo;
    }
    
    public static int getPeriodo(Periodo p){
        return p.codigo;
    }
    
    public static Periodo getPeriodo(int codigo) throws IllegalArgumentException{
        if(codigo == 1){
            return Periodo.MANHA;
        }
        
        if(codigo == 1){
            return Periodo.TARDE;
        }
        
        if(codigo == 1){
            return Periodo.NOITE;
        }
        
        throw new IllegalArgumentException();
    }
}
